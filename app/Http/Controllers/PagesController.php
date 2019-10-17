<?php

namespace App\Http\Controllers;

use Exception;
use Illuminate\Http\Request;


use Illuminate\Support\Facades\DB;

class Deputado
{
    public $id, $nome, $partido, $localizacao;

    public function carregar($json)
    {
        $this->id = $json->id;
        $this->partido = $json->partido;


        $this->localizacao = null;
        try {
            $this->localizacao = $json->localizacao;
        } catch (\Throwable $th) {
        }
        try {
            $this->localizacao = $json->tagLocalizacao;
        } catch (\Throwable $th) {
        }
        if($this->localizacao == null)
        {
            throw new Exception("Formato invalido localizacao Deputado");
        }
        
        
        
        $this->nome = $json->nome;
    }
    
    public static function carregarDeputados()
    {
        $deputados = DB::select("SELECT id, nome, partido, localizacao from deputados");
        $saida = [];
        foreach($deputados as $tupla)
        {
            $d = new Deputado();
            $d->id = $tupla->id;
            $d->partido = $tupla->partido;
            $d->localizacao = $tupla->localizacao;
            $d->nome = $tupla->nome;
        
            array_push($saida,$d);
        }

        return $saida;
    }

    public static function topPedidosReembolso($quantidade)
    {
        $saida = DB::select("SELECT sum(despesas.valor) as `valor`, deputados.nome from despesas inner join deputados on despesas.idDep = deputados.id group by despesas.idDep order by despesas.valor DESC LIMIT ?",[$quantidade]);

        return $saida;
    }

    public static function buscarDeputadosAPI()
    {
        $deputados = file_get_contents("http://dadosabertos.almg.gov.br/ws/deputados/em_exercicio?formato=json");
        
        $listaDeputados = json_decode($deputados);

        $saida = [];

        foreach($listaDeputados->list as $deputado)
        {
            $d = new Deputado();
            $d->carregar($deputado);
            array_push($saida, $d);
        }
        return $saida;
    }

    public static function salvarDeputados($listaDeputados)
    {
        foreach($listaDeputados as $deputado)
        {      
            try
            {
                $listaDeputados = DB::insert('insert into deputados values (?, ?, ?,? ) ', [$deputado->id, $deputado->nome, $deputado->partido, $deputado->localizacao]);
                
            }
            catch(exception $e)
            {
                
            }
        }
    }
}

class Despesa
{
    public $id, $idDeputado, $dataReferencia, $valor, $codTipoDespesa,$descTipoDespesa;

    public function carregar($obj)
    {
        $this->id = $obj->id;
        
        $this->idDeputado = null;
        try {
            $this->idDeputado = $obj->idDeputado;
        } catch (\Throwable $th) {
        }
        try {
            $this->idDeputado = $obj->idDep;
        } catch (\Throwable $th) {
        }

        $this->dataReferencia = json_encode($obj->dataReferencia);
        $this->dataReferencia = explode("\"}",explode("$\":\"",$this->dataReferencia)[1])[0];

        $this->valor = null;
        try {
            $this->valor = $obj->valorDespesa;
        } catch (\Throwable $th) {
        }
        try {
            $this->valor = $obj->valor;
        } catch (\Throwable $th) {
        }



        if($this->valor == null || $this->idDeputado == null)
        {
            throw new Exception("Campo valor, idDeputado invalido no objeto Despesa");
        }
        
        $this->codTipoDespesa = $obj->codTipoDespesa;
        $this->descTipoDespesa = $obj->descTipoDespesa;
    }

    public static function buscarDespesas()
    {
        $saida = [];
        $linhas = DB::select("select * from despesas");
        foreach($linhas as $tupla)
        {
            $d = new Despesa();
            $d->carregar($tupla);
            array_push($saida, $d);
        }
        return $saida;
    }

    public static function buscarDespesasAPI($idDeputado, $ano, $mes)
    {
        $listaDespesas = [];
        
        $mes = $mes."";
        $mes = (strlen($mes) == 1)?("0".$mes):$mes;

        $url = "http://dadosabertos.almg.gov.br/ws/prestacao_contas/verbas_indenizatorias/legislatura_atual/deputados/{$idDeputado}/{$ano}/{$mes}?formato=json";
        
        $despesas = file_get_contents($url);

        $despesas = json_decode($despesas)->list;
        foreach($despesas as $despesa)
        {
            try {
                foreach($despesa->listaDetalheVerba as $sub)
                {
                    $d = new Despesa();
                    $d->carregar($sub);

                    array_push($listaDespesas, $d);
                }
            } catch (Exception $erro) {
                echo $erro->getMessage();
            }
        }
        return $listaDespesas;
    }

    public static function salvarDespesas($despesas)
    {
        foreach($despesas as $despesa)
        {
            try {
                DB::insert('insert into despesas values (?, ?, ?, ?, ?, ?)', [$despesa->id, $despesa->idDeputado, $despesa->dataReferencia,$despesa->valor, $despesa->codTipoDespesa,$despesa->descTipoDespesa]);
            } catch (Exception $th) {
                echo "Erro ".$th->getMessage()."<br>";
                var_dump($despesa);
            }
            
        }
    }


}

class PagesController extends Controller
{
    public function index()
    {
        return Deputado::topPedidosReembolso(5);
    }

    

    public function atualizarBancoComAPI()
    {
        $deputados = Deputado::buscarDeputadosAPI();
        for($mes=1;$mes<=12;$mes++)
        {
            $mes = $mes+"";
            foreach($deputados as $d)
            {
                $despesas = Despesa::buscarDespesasAPI($d->id,"2019",$mes);
                Despesa::salvarDespesas($despesas);
            }
        }
    }

    

    

    
}

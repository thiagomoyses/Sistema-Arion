<?php include("conexao.php");?>
<?php
	$arq = fopen("gmud.csv", "r");
	while(!feof($arq)){
		//capturando linhas
		$linha = fgets($arq);
		//dividindo informaçoes celulas, para salvar
		$dados = explode(';', $linha);
		//Verificando se é cabeçalho ou está em branco
		if(!empty($linha)){
			echo $dados[0];
			$insere = $mysqli->query('INSERT INTO tbl_gmuds(gmud_num, gmud_titulo, gmud_executor, gmud_inicio, gmud_fim, gmud_plano_de_rest, gmud_indisponibilidade, gmud_critico, gmud_tipo, gmud_risco, gmud_decisao) VALUES ("'.$dados[0].'", "'.$dados[1].'", "'.$dados[2].'", "'.$dados[3].'", "'.$dados[4].'", "'.$dados[5].'", "'.$dados[6].'", "'.$dados[7].'", "'.$dados[8].'", "'.$dados[9].'", "'.$dados[10].'")');
		}
	}
	//Fechando Arquivo
	fclose($arq);
?>
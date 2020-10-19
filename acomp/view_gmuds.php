<!DOCTYPE html>
<html lang="pt">
  <!-- Importando Conexão ---->
    <?php include("includes/conexao.php");?>

  <!-- ################## ---->
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="" ent="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- CSS Valido -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <title>Acompanhamento Técnico</title>
  </head>
  <body>
    
      <!-- logo acompanhamentos -->
      <img class="imagem" src="assets/images/TopBar.png" width="100%"/>
    

      <!-- #################### -->
     
      
      <!-- Construindo Table -->   
        <table class="table table-hover">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">TITULO</th>
              <th scope="col">EXECUTOR</th>
              <th scope="col">INICIO</th>
              <th scope="col">FIM</th>
              <th scope="col">TIPO</th>
              <th scope="col">RISCO</th>
            </tr>
          </thead>
          <tbody>
            <?php 
              //refresh na index
              echo "<meta HTTP-EQUIV='refresh' CONTENT='5;URL=view_gmuds.php'>";
             //Armazenando a consulta do BD na variavel $select
             $select = $mysqli->query("SELECT * FROM tbl_gmuds");
             
             //Apresentando a tela
             while($row = mysqli_fetch_array($select)){

                  echo "<tr>";
                    echo "<th scope = 'row'>" . $row['gmud_id'] . "</th>";
                    echo "<td>" . $row['gmud_titulo'] . "</td>";
                    echo "<td>" . $row['gmud_executor'] . "</td>";
                    echo "<td>" . $row['gmud_inicio'] . "</td>";
                    echo "<td>" . $row['gmud_fim'] . "</td>";
                    echo "<td>" . $row['gmud_tipo'] . "</td>";
                    echo "<td>" . $row['gmud_risco'] . "</td>";
                  echo "</tr>";
              }
            ?>


          </tbody>
      </table>
          <!--#################### -->
      
      <!-- rodape -->
        <div class="form-row">
          <div class="rodape">
            <br/><img style="width: 180px" src="assets/images/logo.png">
          </div>
        </div>

      <!--#################### -->
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
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
              <th scope="col">CHAMADO</th>
              <th scope="col">DATA</th>
              <th scope="col">HORARIO</th>
              <th scope="col">TÉCNICO</th>
              <th scope="col">CLIENTE</th>
              <th scope="col">LOCAL</th>
              <th scope="col">ECM</th>
              <th scope="col">STATUS</th>
            </tr>
          </thead>
          <tbody>
            <?php 
              //refresh na index
              echo "<meta HTTP-EQUIV='refresh' CONTENT='5;URL=index.php'>";
             //Armazenando a consulta do BD na variavel $select
             $select = $mysqli->query("SELECT * FROM tbl_acompanhamentos");
             
             //Apresentando a tela
             while($row = mysqli_fetch_array($select)){

                  echo "<tr>";
                    echo "<th scope = 'row'>" . $row['acomp_chamado'] . "</th>";
                    echo "<td>" . $row['acomp_data'] . "</td>";
                    echo "<td>" . $row['acomp_horario'] . "</td>";
                    echo "<td>" . $row['acomp_tecnico'] . "</td>";
                    echo "<td>" . $row['acomp_cliente'] . "</td>";
                    echo "<td>" . $row['acomp_local'] . "</td>";
                    echo "<td>" . $row['acomp_ecm'] . "</td>";
                    echo "<td>" . $row['acomp_status'] . "</td>";
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
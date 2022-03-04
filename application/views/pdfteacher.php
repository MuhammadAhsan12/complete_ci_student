<style type="text/css">

  #buangLine{
    border: none;
    background-color: transparent;
    resize: none;
    outline: none;
  }

</style>

<?php foreach ($output as $data): ?>
  <!-- Horizontal Form -->
  <div class="box-header with-border">
    <div class="col-md-6">
      <h3 class="box-title">View Detail Teacher</h3>
    </div>

    <div class="col-md-6">
      <span class="pull-right">

      </span>
    </div>
  </div>
  <!-- /.box-header -->
  <!-- form start -->


  <form class="form-horizontal" id="dataCryo" method="post" enctype="multipart/form-data">

    <div class="box-body">

      <div class="form-group">
        <label for="" class="col-sm-2 control-label">First Name : </label>

        <div class="col-sm-6">
          <h5 class="col-sm-6 "><?php echo $data->firstName; ?></h5>
        </div>
      </div>

      <div class="form-group">
        <label for="" class="col-sm-2 control-label">Last Name : </label>

        <div class="col-sm-6">
          <h5 class="col-sm-6 "><?php echo $data->lastName; ?></h5>
        </div>
      </div>


      <div class="form-group">
        <label for="" class="col-sm-2 control-label">Gender : </label>

        <div class="col-sm-6">
          <h5 class="col-sm-6 "><?php echo $data->gender; ?></h5>
        </div>
      </div>


      <div class="form-group">
        <label for="" class="col-sm-2 control-label">Address : </label>

        <div class="col-sm-6">
          <h5 class="col-sm-6 "><?php echo $data->address; ?></h5>
        </div>
      </div>

      <div class="form-group">
        <label for="" class="col-sm-2 control-label">Date of Birth : </label>

        <div class="col-sm-6">
          <h5 class="col-sm-6 "><?php echo $data->dob; ?></h5>
        </div>
      </div>

    <?php endforeach; ?>


  </div>
</form>
<!-- /.box -->


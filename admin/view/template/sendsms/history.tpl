<?= $header ?><?= $column_left ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <a href="<?= $about_link ?>" data-toggle="tooltip" title="<?= $about_text ?>" class="btn btn-default"><?= $about_text ?></a>
                <a href="<?= $history_link ?>" data-toggle="tooltip" title="<?= $history_text ?>" class="btn btn-default"><?= $history_text ?></a>
                <a href="<?= $test_link ?>" data-toggle="tooltip" title="<?= $test_text ?>" class="btn btn-default"><?= $test_text ?></a>
                <a href="<?= $campaign_link ?>" data-toggle="tooltip" title="<?= $campaign_text ?>" class="btn btn-default"><?= $campaign_text ?></a>
            </div>
            <h1><?= $heading_title ?></h1>
            <ul class="breadcrumb">
                <?php foreach($breadcrumbs as $breadcrumb){ ?>
                    <li><a href="<?= $breadcrumb['href'] ?>"><?= $breadcrumb['text'] ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div id="filter-product" class="col-md-3 col-md-push-9 col-sm-12 hidden-sm hidden-xs">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-filter"></i> <?= $history_filter ?></h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label class="control-label" for="input-status"><?= $history_status ?></label>
                            <input type="text" name="filter_status" value="<?= $filter_status ?>" placeholder="<?= $history_status ?>" id="input-status" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="input-message"><?= $history_message ?></label>
                            <input type="text" name="filter_message" value="<?= $filter_message ?>" placeholder="<?= $history_message ?>" id="input-message" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="input-details"><?= $history_details ?></label>
                            <input type="text" name="filter_details" value="<?= $filter_details ?>" placeholder="<?= $history_details ?>" id="input-details" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="input-content"><?= $history_content ?></label>
                            <input type="text" name="filter_content" value="<?= $filter_content ?>" placeholder="<?= $history_content ?>" id="input-content" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="input-type"><?= $history_type ?></label>
                            <select name="filter_type" id="input-type" class="form-control">
                                    <?php if($filter_type == 'test'){ ?>
                                        <option value=""></option>
                                        <option value="order">order</option>
                                        <option value="test" selected="selected">test</option>
                                        <option value="campaign">campaign</option>
                                    <?php }elseif($filter_type == 'order'){ ?>
                                        <option value=""></option>
                                        <option value="order" selected="selected">order</option>
                                        <option value="test">test</option>
                                        <option value="campaign">campaign</option>
                                    <?php }elseif($filter_type == 'campaign'){ ?>
                                        <option value=""></option>
                                        <option value="order">order</option>
                                        <option value="test">test</option>
                                        <option value="campaign" selected="selected">campaign</option>
                                    <?php }else{  ?>
                                        <option value="" selected="selected"></option>
                                        <option value="order">order</option>
                                        <option value="test">test</option>
                                        <option value="campaign">campaign</option>
                                    <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="input-phone"><?= $history_phone ?></label>
                            <input type="text" name="filter_phone" value="<?= $filter_phone ?>" placeholder="<?= $history_phone ?>" id="input-phone" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="input-date"><?= $history_date ?></label>
                            <div class="input-group date">
                                <input type="text" name="filter_date" value="<?= $filter_date ?>" placeholder="<?= $history_date ?>" data-date-format="YYYY-MM-DD" id="input-date" class="date form-control" />
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                                </span>
                            </div>
                        </div>
                        <div class="form-group text-right">
                            <button type="button" id="button-filter" class="btn btn-default"><i class="fa fa-filter"></i> <?= $button_filter ?></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9 col-md-pull-3 col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-list"></i> <?= $heading_title ?></h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <td class="text-left"><?php if($sort == 'status'){ ?><a href="<?= $sort_status ?>" class="<?= strtolower($order) ?>"><?= $history_status ?></a> <?php }else{ ?> <a href="<?= $sort_status ?>"><?= $history_status ?></a> <?php } ?> </td>

                                    <td class="text-left"><?php if($sort == 'message'){ ?><a href="<?= $sort_message ?>" class="<?= strtolower($order); ?>"><?= $history_message ?></a> <?php }else{ ?> <a href="<?= $sort_message ?>"><?= $history_message ?></a> <?php } ?></td>

                                     <td class="text-left"><?php if($sort == 'details'){ ?><a href="<?= $sort_details ?>" class="<?= strtolower($order); ?>"><?= $history_details ?></a> <?php }else{ ?> <a href="<?= $sort_details ?>"><?= $history_details ?></a> <?php } ?></td>

                                    <td class="text-left"><?php if($sort == 'content'){ ?><a href="<?= $sort_content ?>" class="<?= strtolower($order); ?>"><?= $history_content ?></a> <?php }else{ ?> <a href="<?= $sort_content ?>"><?= $history_content ?></a> <?php } ?></td>

                                    <td class="text-left"><?php if($sort == 'type'){ ?><a href="<?= $sort_type ?>" class="<?= strtolower($order); ?>"><?= $history_type ?></a> <?php }else{ ?> <a href="<?= $sort_type ?>"><?= $history_type ?></a> <?php } ?></td>

                                    <td class="text-left"><?php if($sort == 'phone'){ ?><a href="<?= $sort_phone ?>" class="<?= strtolower($order); ?>"><?= $history_phone ?></a> <?php }else{ ?> <a href="<?= $sort_phone ?>"><?= $history_phone ?></a> <?php } ?></td>

                                    <td class="text-left"><?php if($sort == 'sent_on'){ ?><a href="<?= $sort_sent_on ?>" class="<?= strtolower($order); ?>"><?= $history_date ?></a> <?php }else{ ?> <a href="<?= $sort_sent_on ?>"><?= $history_date ?></a> <?php } ?></td>


                                </tr>
                                </thead>
                                <tbody>

                                <?php if($history){ ?>
                                    <?php foreach($history as $item){ ?>
                                        <tr>
                                            <td class="text-left">
                                                <?= $item['status'] ?>
                                            </td>
                                            <td class="text-left">
                                                <?= $item['message'] ?>
                                            </td>
                                            <td class="text-left">
                                                <?= $item['details'] ?>
                                            </td>
                                            <td class="text-left">
                                                <?= $item['content'] ?>
                                            </td>
                                            <td class="text-left">
                                                <?= $item['type'] ?>
                                            </td>
                                            <td class="text-left">
                                                <?= $item['phone'] ?>
                                            </td>
                                            <td class="text-left">
                                                <?= $item['sent_on'] ?>
                                            </td>
                                        </tr>
                                    <?php }
                                }else{  ?>
                                    <tr>
                                        <td class="text-center" colspan="7"><?= $text_no_results ?></td>
                                    </tr>
                                <?php } ?>
                                </tbody>

                            </table>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 text-left"><?= $pagination ?></div>
                            <div class="col-sm-6 text-right"><?= $results ?></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript"><!--
        $('.date').datetimepicker({
	        language: '<?= $datepicker ?>',
	        pickTime: false
        });
        $('#button-filter').on('click', function() {
            var url = '';

            var filter_status = $('input[name=\'filter_status\']').val();

            if (filter_status) {
                url += '&filter_status=' + encodeURIComponent(filter_status);
            }

            var filter_message = $('input[name=\'filter_message\']').val();

            if (filter_message) {
                url += '&filter_message=' + encodeURIComponent(filter_message);
            }

            var filter_details = $('input[name=\'filter_details\']').val();

            if (filter_details) {
                url += '&filter_details=' + encodeURIComponent(filter_details);
            }

            var filter_content = $('input[name=\'filter_content\']').val();

            if (filter_content) {
                url += '&filter_content=' + encodeURIComponent(filter_content);
            }

            var filter_type = $('select[name=\'filter_type\']').val();

            if (filter_type !== '') {
                url += '&filter_type=' + encodeURIComponent(filter_type);
            }

            var filter_date = $('input[name=\'filter_date\']').val();

            if (filter_date !== '') {
                url += '&filter_date=' + encodeURIComponent(filter_date);
            }

            var filter_phone = $('input[name=\'filter_phone\']').val();

            if (filter_phone !== '') {
                url += '&filter_phone=' + encodeURIComponent(filter_phone);
            }

            location = 'index.php?route=sendsms/history&token=<?= $token ?>' + url;
        });
    //--></script>
</div>
<?= $footer ?>

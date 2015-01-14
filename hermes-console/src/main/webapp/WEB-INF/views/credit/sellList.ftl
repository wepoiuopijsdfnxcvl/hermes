 <div class="panel panel-primary">
        <div class="panel-heading">债权发售列表</div>
 </div>
  <div class="panel-body">
            <form id="searchForm" method="post" action="#">
                <div class="row">
                    <div class="col-xs-2 hm-col form-group">
                        <label for="account">债权人名称</label>
                        <input id="cellphone" name="" value="" class="form-control" type="text">
                    </div>
                    <div class="col-xs-2 hm-col form-group">
                        <label for="cellphone">债权编号</label>
                        <input id="cellphone" name="" value="" class="form-control" type="text">
                    </div>
                    <div class="col-xs-2 hm-col form-group">
                        <label for="realname">借款类型</label>
                        <select id="status" name="status" class="form-control">
                            <option value="">学生贷</option>
                            <option value="00">房贷</option>
                            <option value="10">车贷</option>
                        </select>
                    </div>
                    <div class="col-xs-1 hm-col form-group">
                        <label for="beginDate">导入日期</label>
                        <input readonly="" id="beginDate" name="beginDate" value="2015-01-06" class="form-control hasDatepicker" type="text">
                    </div>
                    <div class="col-xs-1 hm-col form-group">
                        <label for="endDate">&nbsp;</label>
                        <input readonly="" id="endDate" name="endDate" value="2015-01-06" class="form-control hasDatepicker" type="text">
                    </div>

                    <div class="col-xs-1 hm-col form-group">
                       
                    </div>
                    <div class="col-xs-1 hm-col form-group">
                       <label>&nbsp;</label>
                        <button id="searchBtn" type="button" class="btn btn-primary btn-block">查询</button>
                        <input id="page" name="page" value="0" type="hidden">
                    </div>
            
                </div>
 
            </form>
        </div>

        <div id="data" style="display:block">
            <table id="sellListTable" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th class="align-center">债权人编号</th>
                        <th class="align-center">债权编号</th>
                        <th class="align-center">债权类型</th>
                        <th class="align-center">借款金额</th>
                        <th class="align-center">年利率</th>
                        <th class="align-center">期限</th>
                        <th class="align-center">借款用途</th>
                        <th class="align-center">还款方式</th>
                        <th class="align-center">债权到期日</th>
                        <th class="align-center">放款日期</th>
                        <th class="align-center">导入日期</th>
                        <th class="align-center">操作人</th>
                        <th class="align-center">状态</th>
                        <th class="align-center">操作</th>
                    </tr>
                </thead>
                <tbody>
                    <#if sellList.numberOfElements == 0>
					<tr>
						<td colspan="14" class="align-center"><@messages key="common.table.empty" /></td>
					</tr>
					<#else>
						<#list sellList.content as l>
							<tr>
	                        <td class="align-center">${(l.creditor.creditorNo)!''}</td> 
	                        <td class="align-center">${(l.crediteCode)!''}</td> 
	                        <td class="align-center">${(l.crediteType)!''}</td> 
	                        <td class="align-center">${(l.amount)!''}</td> 
	                        <td class="align-center">${(l.rate)!''}</td> 
	                        <td class="align-center">${(l.period)!''}个月</td>
	                        <td class="align-center">${(l.purpose)!''}</td>
	                        <td class="align-center">${(l.purpose)!''}</td> 
	                        <td class="align-center">${(l.payType)!''}</td>
	                        <td class="align-center">${(l.deadTime)!''}</td>
	                        <td class="align-center">${(l.createTime)!''}</td> 
	                        <td class="align-center">??????</td> 
	                        <td class="align-center">${(l.statusName)!''}</td> 
	                        <td class="align-center">
	                            <button type="button" class="btn btn-link">查看详情见</button>
	                            <a href="#" data-url="${app}/credit/goSell/${l.id}" >发售</a>
	                        </td>    
	                    </tr>
						</#list>
					</#if>
                </tbody>
            </table>
            <div class="pull-right">
                <ul class="pagination" data-number="0" data-total-pages="4"><li class="active"><a href="#">1</a></li><li><a href="#" data-page="1">2</a></li><li><a href="#" data-page="2">3</a></li><li><a href="#" data-page="3">4</a></li></ul>
            </div>
        </div>
    </div>
    
    
   
<script type="text/javascript" charset="utf-8">
<!--

   $("#sellListTable a").on("click",function(){
		$.link.html(null, {
			url: $(this).attr("data-url"),
			target: 'main'
		});
   }); 
  
//-->
</script>
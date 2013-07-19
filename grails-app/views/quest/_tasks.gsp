<script type="text/javascript">
    var next_index = ${quest.tasks.size()}
    function addRow(table,row_template,index) {
        var t = new Template(row_template.text)
        var newRow = table.insert(t.evaluate({i:next_index}))
    }
</script>

<script type="text/html" id="row_template">
	<g:render template="task"  model="['task':new Task(),'i':'#{i}']"/>
</script>


<table style="width:200px">
    <tr>
        <td>Description</td>
		<td>
            <input type="button" value="Add Row"
                   onclick="addRow(Element.up(this,'table'),$('row_template'),next_index);next_index++;" />
        </td>

    </tr>                      
	<g:each var="task" in="${quest.tasks}" status="i">
		<g:render template='task' model="['task':task,'i':i]"/>
	</g:each>
</table>


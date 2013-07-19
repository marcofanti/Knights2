<tr>	
	<td>
		<g:hiddenField name='expandableTaskList[${i}].id' value='${task.id}'/>
		<g:textField name='expandableTaskList[${i}].description' value='${task.description}'/>
	</td>
    <td>
		<g:hiddenField name='expandableTaskList[${i}]._deleted' value='false'/>
        <input type="button" value="Remove" 
        	onclick="$('expandableTaskList[${i}]._deleted').value='true';Element.up(this,'tr').hide()"/>
    </td>
</tr>      

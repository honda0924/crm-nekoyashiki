$(function(){
  function addClient(clientId,clientName){
    var html = `<tr class = "register-list__element" data-id = ${clientId} data-name = ${clientName}>
                  <td>
                    ←
                  </td>
                  <td>
                    ${clientName} 
                  </td>
                </tr>`
    return html;
  }
  $(document).on('click','tr.register-list__element',function(){
    $('#client-list').val();
    var clientId = (this).dataset.id;
    var clientName = (this).dataset.name;
    console.log(clientName);
    html = addClient(clientId,clientName);
    $('#register-list').append(html);
    $(this).remove();
  });
  
});
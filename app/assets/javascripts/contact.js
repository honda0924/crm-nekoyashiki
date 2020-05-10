$(function(){
  function addClient(clientId,clientName){
    var html = `<tr class="register-list__element candidate-list" data-id=${clientId} data-name=${clientName}>
                  <td>
                    ←
                  </td>
                  <td>
                    <input name='contact[client_ids][]' type='hidden' value='${clientId}'>
                  </td>
                  <td>
                    ${clientName}
                  </td>
                </tr>`
    return html;
  }
  function removeClient(clientId,clientName){
    var html = `<tr class="register-list__element client-list" data-id=${clientId} data-name=${clientName}>
                  <td>
                    ${clientName}
                  </td>
                  <td>
                    →
                  </>
                </tr>`
    return html;
  }
  $(document).on('click','tr.register-list__element.client-list',function(){
    $('#client-list').val();
    var clientId = (this).dataset.id;
    var clientName = (this).dataset.name;
    console.log(clientName);
    html = addClient(clientId,clientName);
    $('#register-list').append(html);
    $(this).remove();
  });
  $(document).on('click','tr.register-list__element.candidate-list',function(){
    $('#register-list').val();
    var clientId = (this).dataset.id;
    var clientName = (this).dataset.name;
    console.log(clientName);
    html = removeClient(clientId,clientName);
    $('#client-list').append(html);
    $(this).remove();
  });
  
});
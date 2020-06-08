$(function(){
  function appendClient(client) {
    var html = `<tr class="column">
                  <td>
                    <div class="column-btn">
                      <a href="/clients/${client.id}">詳細</a>
                    </div>
                  </td>
                  <td class="main-column">
                    <p>${ client.client_name1} ${ client.client_name2}</p>
                  </td>
                </tr>`
    return html;
  }

  function NoClient(msg) {
    var html = `<tr class="column">
                  <td class="main-column">
                    <p class="client">${ msg }</p>
                  </td>
                </tr>`
    return html;
  }

  $("#client_search").on("keyup",function(){
    var input = $("#client_search").val();
    console.log(input)
    $.ajax({
      type: 'GET',
      url: '/clients',
      data: { client_search: input },
      dataType: 'json'
    })
    .done(function(clients){
      if (clients.length !==0) {
        $("#client-search-result").empty();
        clients.forEach(function(client){
          html = appendClient(client);
          $("#client-search-result").append(html);
        })
      }else{
        $("#client-search-result").empty();
        html = NoClient("一致するユーザーがいません");
        $("#client-search-result").append(html);
      }
    })
    .fail(function(){
      alert('ユーザー検索に失敗しました');
    });
  });
});
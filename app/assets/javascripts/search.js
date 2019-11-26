$(function() {

  var search_list = $(".index__main");
  function appendPost(post) {
    var html = `     <div class="index__main__contents">
                        <img src="${post.image}">
                      <div class="index__main__contents__text">
                        <a href="${post.address}" class="index__main__contents__text__title">${post.title}</a>
                        <div class="index__main__contents__text__description">
                        <p>${post.content}</p>
                        </div>
                      </div>
                      <div class="index__main__contents__user">
                        <div class="index__main__contents__user__name">
                        ${post.name}
                        </div>
                        <div class="index__main__contents__user__date">
                        ${post.date}
                        </div>
                      </div>
                    </div>`
  search_list.append(html);
  }

  $("#search_box").on("keyup", function() {
    var input = $("#search_box").val();
    $.ajax({
      type: 'GET',
      url: '/posts/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(posts) {
      search_list.empty();
      if (posts.length !== 0) {
        posts.forEach(function(post){
          appendPost(post);
        });
      }
      else {
        appendErrMsgToHTML("一致するdancがありません");
      }
    })
  });
});
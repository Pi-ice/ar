$(function() {
	$("#my-forum").attr("class", "active");

	_pageBond('my/forum.action');
});


function deleteMyPost(postId) {
	if (window.confirm('确定删除这条帖子？')){
		post('my/forum/delete.action', {"postId" : postId});
	}
}

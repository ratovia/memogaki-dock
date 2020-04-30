document.addEventListener("DOMContentLoaded", function () {
  const addMemoBtn = document.getElementsByClassName("add-memo-form-btn")[0]
  const formList = document.getElementsByClassName("memos-form__titles")[0]
  let formNum = 0

  addMemoBtn.addEventListener("click", function() {
    formNum += 1
    const formNode = document.createElement("input");
    formNode.setAttribute("class", "memos-form__title");
    formNode.setAttribute("type", "text");
    formNode.setAttribute("name", `form_memo_collection[memos_attributes][${formNum}][title]`);
    formNode.setAttribute("id", `form_memo_collection_memos_attributes_${formNum}_title`);
    formList.appendChild(formNode)
  })
})
$(document).ready ->
  $("#home-sign-up-btn").click ->
    signupForm = "<form class='sign-up-form-container'>
      <input class='sign-up-form-container__input' type='text' placeholder='Username'>
      <input class='sign-up-form-container__input' type='password' placeholder='Password'>
      <input class='sign-up-form-container__input' type='password' placeholder='Confirm Password'>
      <input class='sign-up-form-container__submit-btn' type='submit'>
      </form>"
    # $(".home-page-content__sec-heading-btn-container").html(signupForm)
    $(".home-page-content__sec-heading-btn-container").hide(500)
    $(signupForm).insertAfter( ".home-page-content__primary-heading" )
$().ready(function(){
  $("#signup-form").validate({
    rules: {
      first: "required",
      last: "required",
      Newpass: {
        required: true,
        minlength: 8
      },
      confirmnewpass: {
        required: true,
        minlength: 8,
        equalTo: "#Newpass"
      },
      "checkbox[]": {
        required: true,
        minlength: 2
      }
    },

      messages: {
        first: "Please enter your firstname",
        last: "Please enter your lastname",

        Newpass: {
          required: "Please provide a password",
          minlength: "Your password must be at least 8 characters"
        },
        confirmnewpass: {
          required: "Please provide a password",
          minlength: "Your password must be at least 8 characters",
          equalTo: "Please enter the same password as above"
        },
        "checkbox[]": {
          required: "Please select your interests",
          minlength: "Please select at least 2 interests"
        }
      },
      errorPlacement: function (error, element) {
    if (element.attr("type") == "checkbox") {
        error.insertAfter($(element).parents('div').prev($('.gender-selector')));
    }
    // else if () {
    //     // something else if it's not a checkbox
    // }
    else {
        error.insertAfter( element );
    }
  }
  })

})

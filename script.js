

$(document).ready(function () {
    $('#toggleButton').click(function () {
        $('#myForm :input').prop('disabled', function (i, v) { return !v; });
    });
});

$(document).ready(function () {
    // Function to handle image upload
    $("#upload-area").click(function () {
        $("#image-upload").click();
    });

    $("#image-upload").change(function () {
        var file = this.files[0];
        if (file) {
            var reader = new FileReader();
            reader.onload = function (event) {
                var imageUrl = event.target.result;
                $("#image-preview").attr('src', imageUrl);
                $(".image-preview-containerr").show(); // Show the image preview containerr
            };
            reader.readAsDataURL(file);
        }
    });
});

// Function to handle image deletion
function deleteImage() {
    $("#image-upload").val(""); // Clear file input
    $("#image-preview").attr('src', ''); // Clear image preview
    $(".image-preview-containerr").hide(); // Hide the image preview containerr
}

$(document).ready(function () {
    // Array of Indian states and union territories
    var states = [
        "Andaman and Nicobar Islands",
        "Andhra Pradesh",
        "Arunachal Pradesh",
        "Assam",
        "Bihar",
        "Chandigarh",
        "Chhattisgarh",
        "Dadra and Nagar Haveli and Daman and Diu",
        "Delhi",
        "Goa",
        "Gujarat",
        "Haryana",
        "Himachal Pradesh",
        "Jammu and Kashmir",
        "Jharkhand",
        "Karnataka",
        "Kerala",
        "Ladakh",
        "Lakshadweep",
        "Madhya Pradesh",
        "Maharashtra",
        "Manipur",
        "Meghalaya",
        "Mizoram",
        "Nagaland",
        "Odisha",
        "Puducherry",
        "Punjab",
        "Rajasthan",
        "Sikkim",
        "Tamil Nadu",
        "Telangana",
        "Tripura",
        "Uttar Pradesh",
        "Uttarakhand",
        "West Bengal"
    ];

    // Populate the select dropdown with states
    $.each(states, function (index, value) {
        $('#stateSelect').append($('<option>').text(value).attr('value', value));
    });



});

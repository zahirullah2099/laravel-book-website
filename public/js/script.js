$(document).ready(() => {
    $(document).on("change", "#genre", function () {
        var id = $(this).val(); // Get the selected option's value
        // alert(id);

        $.ajax({
            type: "GET",
            url: "getGenre/" + id,

            success: function (res) {
                $("#genreBook").empty();

                // Loop through the books array and append new rows
                res[0].books.forEach(function (book) {
                    $("#genreBook").append(`
                        <tr class="mt-2">
                            <th>${book.id}</th>
                            <td>${book.title}</td> <!-- Book title -->
                            <td>${book.author}</td> 
                            
                            <td>${res[0].name}</td>
                            <td>${book.publication_year}</td>
                             <td class="p-1"> 
                   
                        <a href=" " class="text-white bg-warning p-2 rounded m-1" title="Edit">
                            <i class="bi bi-pencil"></i>
                        </a>
                   

                    <a href=" " class="text-white bg-primary p-2 rounded m-1" title="View">
                        <i class="bi bi-eye"></i>
                    </a>

                   
                        <form action=" " method="POST" style="display:inline;"> 
                            <button type="submit" class="text-white bg-danger p-2 rounded m-1 border-0" 
                                    onclick="return confirm('Are you sure you want to delete this book?');" title="Delete">
                                <i class="bi bi-trash"></i>
                            </button>
                        </form>
                 
                </td>
                            </tr>`);
                });
            },
            error: function (err) {},
        });
    });
 
//     $.get('http://jsonip.com' , function(res){ 
//         var address = res.ip; 
//     $.get(`https://ipinfo.io/${address}?token=f3b2bb22c6b587`, function(data) {
//         let country = data.country; 
//         $.get(`https://restcountries.com/v3.1/name/${country}`, function(data){ 
//             var country = data[0];
//             var countryCode = `${country.idd.root}${country.idd.suffixes[0]}`;
//             var countryName = country.cca2;
//             $("#country").val(`${countryName} ${countryCode}`);
//             console.log(countryName)

//         })  
//     });
// })

$.get('https://ipinfo.io?token=f3b2bb22c6b587', function(data) {
    let countryCode = data.country; // Country code (e.g., "PK", "US")
    
    // Fetch dialing code using restcountries API
    $.get(`https://restcountries.com/v3.1/alpha/${countryCode}`, function(data) {
        let country = data[0];
        let dialingCode = `${country.idd.root}${country.idd.suffixes[0]}`;  
        let countryName = country.cca2;  
        $("#country").val(`${countryName} ${dialingCode}`);
        console.log(`${countryName} ${dialingCode}`);
    });
});

    
});
 
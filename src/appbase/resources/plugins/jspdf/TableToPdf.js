
function TableToPdf(tableID, filename = '') {

    var tableSelect = document.getElementById(tableID);
    var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
    console.log(tableHTML);

    // Specify file name
    filename = filename?filename+'.pdf':'pdf_data.pdf';

    // const doc = new jsPDF({
    //     orientation: 'l',
    //     format: 'legal'
    // });

    const doc = new jsPDF();

    doc.text("Hello world!", 1, 5);
    doc.save(filename);        


} //end method


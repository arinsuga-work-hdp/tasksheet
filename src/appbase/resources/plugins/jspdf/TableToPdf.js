
function TableToPdf(tableID, filename = 'pdf_data.pdf', orientation = 'p', paperSize = 'letter') {

    var tableSelect = document.getElementById(tableID);
    var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
    filename = filename;

    var doc = new jsPDF({orientation: orientation, format: paperSize});
    doc.autoTable({
        html: '#'+tableID,
        styles: { lineColor: 200, lineWidth: 0.1, },
        headStyles: { fillColor: false, textColor: 20, halign: 'center', valign: 'middle' },
        bodyStyles: { fillColor: false, textColor: 20 },
        alternateRowStyles: { fillColor: false },
    });
    
    //doc.output('dataurlnewwindow');
    doc.save(filename);

} //end method


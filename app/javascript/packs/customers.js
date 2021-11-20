import DataTable from 'datatables.net-bs5';

$(function() {
  dataTable();
});

function dataTable() {
  const table = $('.customers table');
  const options = {
    serverSide: true,
    ajax: '/customers',
    columnDefs: [
      {targets:'actions', searchable: false, orderable: false}
    ]
  }

  new DataTable(table, options);
}
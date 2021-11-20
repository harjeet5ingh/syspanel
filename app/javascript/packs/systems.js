import DataTable from 'datatables.net-bs5';

$(function () {
  dataTable();
});

function dataTable() {
  const table = $('.systems table');
  const options = {
    serverSide: true,
    ajax: '/systems',
    columnDefs: [
      { targets: 'actions', searchable: false, orderable: false }
    ]
  }

  new DataTable(table, options);
}
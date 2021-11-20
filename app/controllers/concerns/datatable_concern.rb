module DatatableConcern
  def dt_data(klass:, params:)
    @klass = klass.constantize
    filter_records(params)
  end

  private

  def filter_records(params)
    records = @klass
      .limit(params[:length])
      .offset(params[:start])

    tdata = @klass.collect_table_data(records)
    prepare_json(tdata)
  end

  def prepare_json(tdata)
    record_count = @klass.count
    {
      aaData: tdata,
      iTotalRecords: record_count,
      iTotalDisplayRecords: record_count,
    }
  end
end

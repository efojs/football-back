class ArticleDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      id:     { source: "Article.id" },
      title:  { source: "Article.title" },
      lead:   { source: "Article.lead" },
      body:   { source: "Article.body" },
      author: { source: "Article.author.name" },
    }
  end

  def data
    records.map do |record|
      {
        id:       record.id,
        title:    record.title,
        lead:     record.lead,
        body:     record.body,
        author:   record.author.name,
        DT_RowId: record.id,
      }
    end
  end

  def get_raw_records
    # insert query here
    Article.all
  end

end

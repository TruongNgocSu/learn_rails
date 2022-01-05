class Log::Api4Controller < ApplicationController
  def index
    @article = Article.new( title: "test", body: "test write log", :status: 2)
    logger.debug "Article Information: #{@article}"
    render json: index_data
  end

  def show
    render json: show_data
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def show_data
    {
      "name": "test 123",
      "type": "1"
    }
  end

  def index_data
    {
      "glossary": {
        "title": "example glossary",
        "GlossDiv": {
          "title": "S",
          "GlossList": {
            "GlossEntry": {
              "ID": "SGML",
              "SortAs": "SGML",
              "GlossTerm": "Standard Generalized Markup Language",
              "Acronym": "SGML",
              "Abbrev": "ISO 8879:1986",
              "GlossDef": {
                "para": "A meta-markup language.",
                "GlossSeeAlso": ["GML", "XML"]
              },
              "GlossSee": "markup"
            }
          }
        }
      }
    }

  end
end

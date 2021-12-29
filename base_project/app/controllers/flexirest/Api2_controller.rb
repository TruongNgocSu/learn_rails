class Flexirest::Api2Controller < ApplicationController
  def index
    render json: index_data
  end

  def create
    render json: params.permit("name")
  end

  def update
    render json: updated_data
  end

  def destroy
    render json: {}
  end

  private

  def updated_data
    {
      color: "red",
      value: "#f00"
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
                "para": "A meta-markup language, used to create markup languages such as DocBook.",
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

module FHIR
  class CompartmentDefinition < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'description', 'name', 'publisher', 'status', 'url', 'version', 'code', 'resource']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'CompartmentDefinition.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'CompartmentDefinition.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'CompartmentDefinition.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'CompartmentDefinition.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages', 'uri'=>nil}},
      'text' => {'type'=>'Narrative', 'path'=>'CompartmentDefinition.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'CompartmentDefinition.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'CompartmentDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'CompartmentDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'url' => {'type'=>'uri', 'path'=>'CompartmentDefinition.url', 'min'=>1, 'max'=>1},
      'version' => {'type'=>'string', 'path'=>'CompartmentDefinition.version', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'string', 'path'=>'CompartmentDefinition.name', 'min'=>1, 'max'=>1},
      'status' => {'type'=>'code', 'path'=>'CompartmentDefinition.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/publication-status|4.0.0', 'uri'=>nil}},
      'experimental' => {'type'=>'boolean', 'path'=>'CompartmentDefinition.experimental', 'min'=>0, 'max'=>1},
      'date' => {'type'=>'dateTime', 'path'=>'CompartmentDefinition.date', 'min'=>0, 'max'=>1},
      'publisher' => {'type'=>'string', 'path'=>'CompartmentDefinition.publisher', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'ContactDetail', 'path'=>'CompartmentDefinition.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'description' => {'type'=>'markdown', 'path'=>'CompartmentDefinition.description', 'min'=>0, 'max'=>1},
      'useContext' => {'type'=>'UsageContext', 'path'=>'CompartmentDefinition.useContext', 'min'=>0, 'max'=>Float::INFINITY},
      'purpose' => {'type'=>'markdown', 'path'=>'CompartmentDefinition.purpose', 'min'=>0, 'max'=>1},
      'code' => {'type'=>'code', 'path'=>'CompartmentDefinition.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/compartment-type|4.0.0', 'uri'=>nil}},
      'search' => {'type'=>'boolean', 'path'=>'CompartmentDefinition.search', 'min'=>1, 'max'=>1},
      'resource' => {'type'=>'CompartmentDefinition::Resource', 'path'=>'CompartmentDefinition.resource', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Resource < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Resource.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Resource.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Resource.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'type'=>'code', 'path'=>'Resource.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/resource-types|4.0.0', 'uri'=>nil}},
        'param' => {'type'=>'string', 'path'=>'Resource.param', 'min'=>0, 'max'=>Float::INFINITY},
        'documentation' => {'type'=>'string', 'path'=>'Resource.documentation', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :code              # 1-1 code
      attr_accessor :param             # 0-* [ string ]
      attr_accessor :documentation     # 0-1 string
    end

    attr_accessor :id                # 0-1 id
    attr_accessor :meta              # 0-1 Meta
    attr_accessor :implicitRules     # 0-1 uri
    attr_accessor :language          # 0-1 code
    attr_accessor :text              # 0-1 Narrative
    attr_accessor :contained         # 0-* [ Resource ]
    attr_accessor :extension         # 0-* [ Extension ]
    attr_accessor :modifierExtension # 0-* [ Extension ]
    attr_accessor :url               # 1-1 uri
    attr_accessor :version           # 0-1 string
    attr_accessor :name              # 1-1 string
    attr_accessor :status            # 1-1 code
    attr_accessor :experimental      # 0-1 boolean
    attr_accessor :date              # 0-1 dateTime
    attr_accessor :publisher         # 0-1 string
    attr_accessor :contact           # 0-* [ ContactDetail ]
    attr_accessor :description       # 0-1 markdown
    attr_accessor :useContext        # 0-* [ UsageContext ]
    attr_accessor :purpose           # 0-1 markdown
    attr_accessor :code              # 1-1 code
    attr_accessor :search            # 1-1 boolean
    attr_accessor :resource          # 0-* [ CompartmentDefinition::Resource ]

    def resourceType
      'CompartmentDefinition'
    end
  end
end
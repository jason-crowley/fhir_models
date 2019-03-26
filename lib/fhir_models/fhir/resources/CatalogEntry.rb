module FHIR
  class CatalogEntry < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    SEARCH_PARAMS = 
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'CatalogEntry.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'CatalogEntry.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'CatalogEntry.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'CatalogEntry.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages', 'uri'=>nil}},
      'text' => {'type'=>'Narrative', 'path'=>'CatalogEntry.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'CatalogEntry.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'CatalogEntry.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'CatalogEntry.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'CatalogEntry.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'type' => {'type'=>'CodeableConcept', 'path'=>'CatalogEntry.type', 'min'=>0, 'max'=>1},
      'orderable' => {'type'=>'boolean', 'path'=>'CatalogEntry.orderable', 'min'=>1, 'max'=>1},
      'referencedItem' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Medication', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/ActivityDefinition', 'http://hl7.org/fhir/StructureDefinition/PlanDefinition', 'http://hl7.org/fhir/StructureDefinition/SpecimenDefinition', 'http://hl7.org/fhir/StructureDefinition/ObservationDefinition', 'http://hl7.org/fhir/StructureDefinition/Binary'], 'type'=>'Reference', 'path'=>'CatalogEntry.referencedItem', 'min'=>1, 'max'=>1},
      'additionalIdentifier' => {'type'=>'Identifier', 'path'=>'CatalogEntry.additionalIdentifier', 'min'=>0, 'max'=>Float::INFINITY},
      'classification' => {'type'=>'CodeableConcept', 'path'=>'CatalogEntry.classification', 'min'=>0, 'max'=>Float::INFINITY},
      'status' => {'type'=>'code', 'path'=>'CatalogEntry.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/publication-status|4.0.0', 'uri'=>nil}},
      'validityPeriod' => {'type'=>'Period', 'path'=>'CatalogEntry.validityPeriod', 'min'=>0, 'max'=>1},
      'validTo' => {'type'=>'dateTime', 'path'=>'CatalogEntry.validTo', 'min'=>0, 'max'=>1},
      'lastUpdated' => {'type'=>'dateTime', 'path'=>'CatalogEntry.lastUpdated', 'min'=>0, 'max'=>1},
      'additionalCharacteristic' => {'type'=>'CodeableConcept', 'path'=>'CatalogEntry.additionalCharacteristic', 'min'=>0, 'max'=>Float::INFINITY},
      'additionalClassification' => {'type'=>'CodeableConcept', 'path'=>'CatalogEntry.additionalClassification', 'min'=>0, 'max'=>Float::INFINITY},
      'relatedEntry' => {'type'=>'CatalogEntry::RelatedEntry', 'path'=>'CatalogEntry.relatedEntry', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class RelatedEntry < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'RelatedEntry.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'RelatedEntry.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'RelatedEntry.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'relationtype' => {'type'=>'code', 'path'=>'RelatedEntry.relationtype', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/relation-type|4.0.0', 'uri'=>nil}},
        'item' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CatalogEntry'], 'type'=>'Reference', 'path'=>'RelatedEntry.item', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :relationtype      # 1-1 code
      attr_accessor :item              # 1-1 Reference(CatalogEntry)
    end

    attr_accessor :id                       # 0-1 id
    attr_accessor :meta                     # 0-1 Meta
    attr_accessor :implicitRules            # 0-1 uri
    attr_accessor :language                 # 0-1 code
    attr_accessor :text                     # 0-1 Narrative
    attr_accessor :contained                # 0-* [ Resource ]
    attr_accessor :extension                # 0-* [ Extension ]
    attr_accessor :modifierExtension        # 0-* [ Extension ]
    attr_accessor :identifier               # 0-* [ Identifier ]
    attr_accessor :type                     # 0-1 CodeableConcept
    attr_accessor :orderable                # 1-1 boolean
    attr_accessor :referencedItem           # 1-1 Reference(Medication|Device|Organization|Practitioner|PractitionerRole|HealthcareService|ActivityDefinition|PlanDefinition|SpecimenDefinition|ObservationDefinition|Binary)
    attr_accessor :additionalIdentifier     # 0-* [ Identifier ]
    attr_accessor :classification           # 0-* [ CodeableConcept ]
    attr_accessor :status                   # 0-1 code
    attr_accessor :validityPeriod           # 0-1 Period
    attr_accessor :validTo                  # 0-1 dateTime
    attr_accessor :lastUpdated              # 0-1 dateTime
    attr_accessor :additionalCharacteristic # 0-* [ CodeableConcept ]
    attr_accessor :additionalClassification # 0-* [ CodeableConcept ]
    attr_accessor :relatedEntry             # 0-* [ CatalogEntry::RelatedEntry ]

    def resourceType
      'CatalogEntry'
    end
  end
end
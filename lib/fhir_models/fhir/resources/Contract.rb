module FHIR
  class Contract < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    MULTIPLE_TYPES = {
      'topic' => ['CodeableConcept', 'Reference'],
      'legallyBinding' => ['Attachment', 'Reference']
    }
    SEARCH_PARAMS = ['authority', 'domain', 'identifier', 'instantiates', 'issued', 'patient', 'signer', 'status', 'subject', 'url']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Contract.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Contract.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Contract.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'Contract.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages', 'uri'=>nil}},
      'text' => {'type'=>'Narrative', 'path'=>'Contract.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Contract.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Contract.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Contract.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'Contract.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'url' => {'type'=>'uri', 'path'=>'Contract.url', 'min'=>0, 'max'=>1},
      'version' => {'type'=>'string', 'path'=>'Contract.version', 'min'=>0, 'max'=>1},
      'status' => {'type'=>'code', 'path'=>'Contract.status', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-status|4.0.0', 'uri'=>nil}},
      'legalState' => {'type'=>'CodeableConcept', 'path'=>'Contract.legalState', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-legalstate', 'uri'=>nil}},
      'instantiatesCanonical' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Contract'], 'type'=>'Reference', 'path'=>'Contract.instantiatesCanonical', 'min'=>0, 'max'=>1},
      'instantiatesUri' => {'type'=>'uri', 'path'=>'Contract.instantiatesUri', 'min'=>0, 'max'=>1},
      'contentDerivative' => {'type'=>'CodeableConcept', 'path'=>'Contract.contentDerivative', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-content-derivative', 'uri'=>nil}},
      'issued' => {'type'=>'dateTime', 'path'=>'Contract.issued', 'min'=>0, 'max'=>1},
      'applies' => {'type'=>'Period', 'path'=>'Contract.applies', 'min'=>0, 'max'=>1},
      'expirationType' => {'type'=>'CodeableConcept', 'path'=>'Contract.expirationType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-expiration-type', 'uri'=>nil}},
      'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Contract.subject', 'min'=>0, 'max'=>Float::INFINITY},
      'authority' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Contract.authority', 'min'=>0, 'max'=>Float::INFINITY},
      'domain' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Contract.domain', 'min'=>0, 'max'=>Float::INFINITY},
      'site' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Contract.site', 'min'=>0, 'max'=>Float::INFINITY},
      'name' => {'type'=>'string', 'path'=>'Contract.name', 'min'=>0, 'max'=>1},
      'title' => {'type'=>'string', 'path'=>'Contract.title', 'min'=>0, 'max'=>1},
      'subtitle' => {'type'=>'string', 'path'=>'Contract.subtitle', 'min'=>0, 'max'=>1},
      'alias' => {'type'=>'string', 'path'=>'Contract.alias', 'min'=>0, 'max'=>Float::INFINITY},
      'author' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Contract.author', 'min'=>0, 'max'=>1},
      'scope' => {'type'=>'CodeableConcept', 'path'=>'Contract.scope', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-scope', 'uri'=>nil}},
      'topicCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Contract.topic[x]', 'min'=>0, 'max'=>1},
      'topicReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Contract.topic[x]', 'min'=>0, 'max'=>1},
      'type' => {'type'=>'CodeableConcept', 'path'=>'Contract.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-type', 'uri'=>nil}},
      'subType' => {'type'=>'CodeableConcept', 'path'=>'Contract.subType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-subtype', 'uri'=>nil}},
      'contentDefinition' => {'type'=>'Contract::ContentDefinition', 'path'=>'Contract.contentDefinition', 'min'=>0, 'max'=>1},
      'term' => {'type'=>'Contract::Term', 'path'=>'Contract.term', 'min'=>0, 'max'=>Float::INFINITY},
      'supportingInfo' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Contract.supportingInfo', 'min'=>0, 'max'=>Float::INFINITY},
      'relevantHistory' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Provenance'], 'type'=>'Reference', 'path'=>'Contract.relevantHistory', 'min'=>0, 'max'=>Float::INFINITY},
      'signer' => {'type'=>'Contract::Signer', 'path'=>'Contract.signer', 'min'=>0, 'max'=>Float::INFINITY},
      'friendly' => {'type'=>'Contract::Friendly', 'path'=>'Contract.friendly', 'min'=>0, 'max'=>Float::INFINITY},
      'legal' => {'type'=>'Contract::Legal', 'path'=>'Contract.legal', 'min'=>0, 'max'=>Float::INFINITY},
      'rule' => {'type'=>'Contract::Rule', 'path'=>'Contract.rule', 'min'=>0, 'max'=>Float::INFINITY},
      'legallyBindingAttachment' => {'type'=>'Attachment', 'path'=>'Contract.legallyBinding[x]', 'min'=>0, 'max'=>1},
      'legallyBindingReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse', 'http://hl7.org/fhir/StructureDefinition/Contract'], 'type'=>'Reference', 'path'=>'Contract.legallyBinding[x]', 'min'=>0, 'max'=>1}
    }

    class ContentDefinition < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'ContentDefinition.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'ContentDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ContentDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'type'=>'CodeableConcept', 'path'=>'ContentDefinition.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-definition-type', 'uri'=>nil}},
        'subType' => {'type'=>'CodeableConcept', 'path'=>'ContentDefinition.subType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-definition-subtype', 'uri'=>nil}},
        'publisher' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'ContentDefinition.publisher', 'min'=>0, 'max'=>1},
        'publicationDate' => {'type'=>'dateTime', 'path'=>'ContentDefinition.publicationDate', 'min'=>0, 'max'=>1},
        'publicationStatus' => {'type'=>'code', 'path'=>'ContentDefinition.publicationStatus', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-publicationstatus|4.0.0', 'uri'=>nil}},
        'copyright' => {'type'=>'markdown', 'path'=>'ContentDefinition.copyright', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :type              # 1-1 CodeableConcept
      attr_accessor :subType           # 0-1 CodeableConcept
      attr_accessor :publisher         # 0-1 Reference(Practitioner|PractitionerRole|Organization)
      attr_accessor :publicationDate   # 0-1 dateTime
      attr_accessor :publicationStatus # 1-1 code
      attr_accessor :copyright         # 0-1 markdown
    end

    class Term < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'topic' => ['CodeableConcept', 'Reference']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Term.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Term.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Term.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Term.identifier', 'min'=>0, 'max'=>1},
        'issued' => {'type'=>'dateTime', 'path'=>'Term.issued', 'min'=>0, 'max'=>1},
        'applies' => {'type'=>'Period', 'path'=>'Term.applies', 'min'=>0, 'max'=>1},
        'topicCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'Term.topic[x]', 'min'=>0, 'max'=>1},
        'topicReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Term.topic[x]', 'min'=>0, 'max'=>1},
        'type' => {'type'=>'CodeableConcept', 'path'=>'Term.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-term-type', 'uri'=>nil}},
        'subType' => {'type'=>'CodeableConcept', 'path'=>'Term.subType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-term-subtype', 'uri'=>nil}},
        'text' => {'type'=>'string', 'path'=>'Term.text', 'min'=>0, 'max'=>1},
        'securityLabel' => {'type'=>'Contract::Term::SecurityLabel', 'path'=>'Term.securityLabel', 'min'=>0, 'max'=>Float::INFINITY},
        'offer' => {'type'=>'Contract::Term::Offer', 'path'=>'Term.offer', 'min'=>1, 'max'=>1},
        'asset' => {'type'=>'Contract::Term::Asset', 'path'=>'Term.asset', 'min'=>0, 'max'=>Float::INFINITY},
        'action' => {'type'=>'Contract::Term::Action', 'path'=>'Term.action', 'min'=>0, 'max'=>Float::INFINITY},
        'group' => {'type'=>'Contract::Term', 'path'=>'Term.group', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class SecurityLabel < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'SecurityLabel.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'SecurityLabel.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'SecurityLabel.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'number' => {'type'=>'unsignedInt', 'path'=>'SecurityLabel.number', 'min'=>0, 'max'=>Float::INFINITY},
          'classification' => {'type'=>'Coding', 'path'=>'SecurityLabel.classification', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-security-classification', 'uri'=>nil}},
          'category' => {'type'=>'Coding', 'path'=>'SecurityLabel.category', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-security-category', 'uri'=>nil}},
          'control' => {'type'=>'Coding', 'path'=>'SecurityLabel.control', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-security-control', 'uri'=>nil}}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :number            # 0-* [ unsignedInt ]
        attr_accessor :classification    # 1-1 Coding
        attr_accessor :category          # 0-* [ Coding ]
        attr_accessor :control           # 0-* [ Coding ]
      end

      class Offer < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Offer.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Offer.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Offer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'identifier' => {'type'=>'Identifier', 'path'=>'Offer.identifier', 'min'=>0, 'max'=>Float::INFINITY},
          'party' => {'type'=>'Contract::Term::Offer::Party', 'path'=>'Offer.party', 'min'=>0, 'max'=>Float::INFINITY},
          'topic' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Offer.topic', 'min'=>0, 'max'=>1},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Offer.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-term-type', 'uri'=>nil}},
          'decision' => {'type'=>'CodeableConcept', 'path'=>'Offer.decision', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'valueSet'=>'http://terminology.hl7.org/ValueSet/v3-ActConsentDirective', 'uri'=>nil}},
          'decisionMode' => {'type'=>'CodeableConcept', 'path'=>'Offer.decisionMode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-decision-mode', 'uri'=>nil}},
          'answer' => {'type'=>'Contract::Term::Offer::Answer', 'path'=>'Offer.answer', 'min'=>0, 'max'=>Float::INFINITY},
          'text' => {'type'=>'string', 'path'=>'Offer.text', 'min'=>0, 'max'=>1},
          'linkId' => {'type'=>'string', 'path'=>'Offer.linkId', 'min'=>0, 'max'=>Float::INFINITY},
          'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'Offer.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Party < FHIR::Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Party.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Party.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Party.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Party.reference', 'min'=>1, 'max'=>Float::INFINITY},
            'role' => {'type'=>'CodeableConcept', 'path'=>'Party.role', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-party-role', 'uri'=>nil}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :reference         # 1-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
          attr_accessor :role              # 1-1 CodeableConcept
        end

        class Answer < FHIR::Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'value' => ['boolean', 'decimal', 'integer', 'date', 'dateTime', 'time', 'string', 'uri', 'Attachment', 'Coding', 'Quantity', 'Reference']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Answer.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Answer.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Answer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'valueBoolean' => {'type'=>'boolean', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
            'valueDecimal' => {'type'=>'decimal', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
            'valueInteger' => {'type'=>'integer', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
            'valueDate' => {'type'=>'date', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
            'valueDateTime' => {'type'=>'dateTime', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
            'valueTime' => {'type'=>'time', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
            'valueString' => {'type'=>'string', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
            'valueUri' => {'type'=>'uri', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
            'valueAttachment' => {'type'=>'Attachment', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
            'valueCoding' => {'type'=>'Coding', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
            'valueQuantity' => {'type'=>'Quantity', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1},
            'valueReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Answer.value[x]', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :valueBoolean      # 1-1 boolean
          attr_accessor :valueDecimal      # 1-1 decimal
          attr_accessor :valueInteger      # 1-1 integer
          attr_accessor :valueDate         # 1-1 date
          attr_accessor :valueDateTime     # 1-1 dateTime
          attr_accessor :valueTime         # 1-1 time
          attr_accessor :valueString       # 1-1 string
          attr_accessor :valueUri          # 1-1 uri
          attr_accessor :valueAttachment   # 1-1 Attachment
          attr_accessor :valueCoding       # 1-1 Coding
          attr_accessor :valueQuantity     # 1-1 Quantity
          attr_accessor :valueReference    # 1-1 Reference(Resource)
        end

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :identifier          # 0-* [ Identifier ]
        attr_accessor :party               # 0-* [ Contract::Term::Offer::Party ]
        attr_accessor :topic               # 0-1 Reference(Resource)
        attr_accessor :type                # 0-1 CodeableConcept
        attr_accessor :decision            # 0-1 CodeableConcept
        attr_accessor :decisionMode        # 0-* [ CodeableConcept ]
        attr_accessor :answer              # 0-* [ Contract::Term::Offer::Answer ]
        attr_accessor :text                # 0-1 string
        attr_accessor :linkId              # 0-* [ string ]
        attr_accessor :securityLabelNumber # 0-* [ unsignedInt ]
      end

      class Asset < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Asset.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Asset.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Asset.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'scope' => {'type'=>'CodeableConcept', 'path'=>'Asset.scope', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-assetscope', 'uri'=>nil}},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Asset.type', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-assettype', 'uri'=>nil}},
          'typeReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Asset.typeReference', 'min'=>0, 'max'=>Float::INFINITY},
          'subtype' => {'type'=>'CodeableConcept', 'path'=>'Asset.subtype', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-assetsubtype', 'uri'=>nil}},
          'relationship' => {'type'=>'Coding', 'path'=>'Asset.relationship', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'valueSet'=>'http://hl7.org/fhir/ValueSet/consent-content-class', 'uri'=>nil}},
          'context' => {'type'=>'Contract::Term::Asset::Context', 'path'=>'Asset.context', 'min'=>0, 'max'=>Float::INFINITY},
          'condition' => {'type'=>'string', 'path'=>'Asset.condition', 'min'=>0, 'max'=>1},
          'periodType' => {'type'=>'CodeableConcept', 'path'=>'Asset.periodType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/asset-availability', 'uri'=>nil}},
          'period' => {'type'=>'Period', 'path'=>'Asset.period', 'min'=>0, 'max'=>Float::INFINITY},
          'usePeriod' => {'type'=>'Period', 'path'=>'Asset.usePeriod', 'min'=>0, 'max'=>Float::INFINITY},
          'text' => {'type'=>'string', 'path'=>'Asset.text', 'min'=>0, 'max'=>1},
          'linkId' => {'type'=>'string', 'path'=>'Asset.linkId', 'min'=>0, 'max'=>Float::INFINITY},
          'answer' => {'type'=>'Contract::Term::Offer::Answer', 'path'=>'Asset.answer', 'min'=>0, 'max'=>Float::INFINITY},
          'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'Asset.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY},
          'valuedItem' => {'type'=>'Contract::Term::Asset::ValuedItem', 'path'=>'Asset.valuedItem', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Context < FHIR::Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Context.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Context.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Context.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'Context.reference', 'min'=>0, 'max'=>1},
            'code' => {'type'=>'CodeableConcept', 'path'=>'Context.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-assetcontext', 'uri'=>nil}},
            'text' => {'type'=>'string', 'path'=>'Context.text', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :reference         # 0-1 Reference(Resource)
          attr_accessor :code              # 0-* [ CodeableConcept ]
          attr_accessor :text              # 0-1 string
        end

        class ValuedItem < FHIR::Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'entity' => ['CodeableConcept', 'Reference']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'ValuedItem.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'ValuedItem.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'ValuedItem.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'entityCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'ValuedItem.entity[x]', 'min'=>0, 'max'=>1},
            'entityReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'ValuedItem.entity[x]', 'min'=>0, 'max'=>1},
            'identifier' => {'type'=>'Identifier', 'path'=>'ValuedItem.identifier', 'min'=>0, 'max'=>1},
            'effectiveTime' => {'type'=>'dateTime', 'path'=>'ValuedItem.effectiveTime', 'min'=>0, 'max'=>1},
            'quantity' => {'type'=>'Quantity', 'path'=>'ValuedItem.quantity', 'min'=>0, 'max'=>1},
            'unitPrice' => {'type'=>'Money', 'path'=>'ValuedItem.unitPrice', 'min'=>0, 'max'=>1},
            'factor' => {'type'=>'decimal', 'path'=>'ValuedItem.factor', 'min'=>0, 'max'=>1},
            'points' => {'type'=>'decimal', 'path'=>'ValuedItem.points', 'min'=>0, 'max'=>1},
            'net' => {'type'=>'Money', 'path'=>'ValuedItem.net', 'min'=>0, 'max'=>1},
            'payment' => {'type'=>'string', 'path'=>'ValuedItem.payment', 'min'=>0, 'max'=>1},
            'paymentDate' => {'type'=>'dateTime', 'path'=>'ValuedItem.paymentDate', 'min'=>0, 'max'=>1},
            'responsible' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'ValuedItem.responsible', 'min'=>0, 'max'=>1},
            'recipient' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'ValuedItem.recipient', 'min'=>0, 'max'=>1},
            'linkId' => {'type'=>'string', 'path'=>'ValuedItem.linkId', 'min'=>0, 'max'=>Float::INFINITY},
            'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'ValuedItem.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY}
          }

          attr_accessor :id                    # 0-1 string
          attr_accessor :extension             # 0-* [ Extension ]
          attr_accessor :modifierExtension     # 0-* [ Extension ]
          attr_accessor :entityCodeableConcept # 0-1 CodeableConcept
          attr_accessor :entityReference       # 0-1 Reference(Resource)
          attr_accessor :identifier            # 0-1 Identifier
          attr_accessor :effectiveTime         # 0-1 dateTime
          attr_accessor :quantity              # 0-1 Quantity
          attr_accessor :unitPrice             # 0-1 Money
          attr_accessor :factor                # 0-1 decimal
          attr_accessor :points                # 0-1 decimal
          attr_accessor :net                   # 0-1 Money
          attr_accessor :payment               # 0-1 string
          attr_accessor :paymentDate           # 0-1 dateTime
          attr_accessor :responsible           # 0-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
          attr_accessor :recipient             # 0-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
          attr_accessor :linkId                # 0-* [ string ]
          attr_accessor :securityLabelNumber   # 0-* [ unsignedInt ]
        end

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :scope               # 0-1 CodeableConcept
        attr_accessor :type                # 0-* [ CodeableConcept ]
        attr_accessor :typeReference       # 0-* [ Reference(Resource) ]
        attr_accessor :subtype             # 0-* [ CodeableConcept ]
        attr_accessor :relationship        # 0-1 Coding
        attr_accessor :context             # 0-* [ Contract::Term::Asset::Context ]
        attr_accessor :condition           # 0-1 string
        attr_accessor :periodType          # 0-* [ CodeableConcept ]
        attr_accessor :period              # 0-* [ Period ]
        attr_accessor :usePeriod           # 0-* [ Period ]
        attr_accessor :text                # 0-1 string
        attr_accessor :linkId              # 0-* [ string ]
        attr_accessor :answer              # 0-* [ Contract::Term::Offer::Answer ]
        attr_accessor :securityLabelNumber # 0-* [ unsignedInt ]
        attr_accessor :valuedItem          # 0-* [ Contract::Term::Asset::ValuedItem ]
      end

      class Action < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'occurrence' => ['dateTime', 'Period', 'Timing']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Action.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Action.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Action.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'doNotPerform' => {'type'=>'boolean', 'path'=>'Action.doNotPerform', 'min'=>0, 'max'=>1},
          'type' => {'type'=>'CodeableConcept', 'path'=>'Action.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-action', 'uri'=>nil}},
          'subject' => {'type'=>'Contract::Term::Action::Subject', 'path'=>'Action.subject', 'min'=>0, 'max'=>Float::INFINITY},
          'intent' => {'type'=>'CodeableConcept', 'path'=>'Action.intent', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse', 'uri'=>nil}},
          'linkId' => {'type'=>'string', 'path'=>'Action.linkId', 'min'=>0, 'max'=>Float::INFINITY},
          'status' => {'type'=>'CodeableConcept', 'path'=>'Action.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-actionstatus', 'uri'=>nil}},
          'context' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Encounter', 'http://hl7.org/fhir/StructureDefinition/EpisodeOfCare'], 'type'=>'Reference', 'path'=>'Action.context', 'min'=>0, 'max'=>1},
          'contextLinkId' => {'type'=>'string', 'path'=>'Action.contextLinkId', 'min'=>0, 'max'=>Float::INFINITY},
          'occurrenceDateTime' => {'type'=>'dateTime', 'path'=>'Action.occurrence[x]', 'min'=>0, 'max'=>1},
          'occurrencePeriod' => {'type'=>'Period', 'path'=>'Action.occurrence[x]', 'min'=>0, 'max'=>1},
          'occurrenceTiming' => {'type'=>'Timing', 'path'=>'Action.occurrence[x]', 'min'=>0, 'max'=>1},
          'requester' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Action.requester', 'min'=>0, 'max'=>Float::INFINITY},
          'requesterLinkId' => {'type'=>'string', 'path'=>'Action.requesterLinkId', 'min'=>0, 'max'=>Float::INFINITY},
          'performerType' => {'type'=>'CodeableConcept', 'path'=>'Action.performerType', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/provenance-agent-type', 'uri'=>nil}},
          'performerRole' => {'type'=>'CodeableConcept', 'path'=>'Action.performerRole', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/provenance-agent-role', 'uri'=>nil}},
          'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Location'], 'type'=>'Reference', 'path'=>'Action.performer', 'min'=>0, 'max'=>1},
          'performerLinkId' => {'type'=>'string', 'path'=>'Action.performerLinkId', 'min'=>0, 'max'=>Float::INFINITY},
          'reasonCode' => {'type'=>'CodeableConcept', 'path'=>'Action.reasonCode', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://terminology.hl7.org/ValueSet/v3-PurposeOfUse', 'uri'=>nil}},
          'reasonReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Condition', 'http://hl7.org/fhir/StructureDefinition/Observation', 'http://hl7.org/fhir/StructureDefinition/DiagnosticReport', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/Questionnaire', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'type'=>'Reference', 'path'=>'Action.reasonReference', 'min'=>0, 'max'=>Float::INFINITY},
          'reason' => {'type'=>'string', 'path'=>'Action.reason', 'min'=>0, 'max'=>Float::INFINITY},
          'reasonLinkId' => {'type'=>'string', 'path'=>'Action.reasonLinkId', 'min'=>0, 'max'=>Float::INFINITY},
          'note' => {'type'=>'Annotation', 'path'=>'Action.note', 'min'=>0, 'max'=>Float::INFINITY},
          'securityLabelNumber' => {'type'=>'unsignedInt', 'path'=>'Action.securityLabelNumber', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Subject < FHIR::Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Subject.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Subject.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Subject.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'reference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/Device', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Subject.reference', 'min'=>1, 'max'=>Float::INFINITY},
            'role' => {'type'=>'CodeableConcept', 'path'=>'Subject.role', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-actorrole', 'uri'=>nil}}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :reference         # 1-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
          attr_accessor :role              # 0-1 CodeableConcept
        end

        attr_accessor :id                  # 0-1 string
        attr_accessor :extension           # 0-* [ Extension ]
        attr_accessor :modifierExtension   # 0-* [ Extension ]
        attr_accessor :doNotPerform        # 0-1 boolean
        attr_accessor :type                # 1-1 CodeableConcept
        attr_accessor :subject             # 0-* [ Contract::Term::Action::Subject ]
        attr_accessor :intent              # 1-1 CodeableConcept
        attr_accessor :linkId              # 0-* [ string ]
        attr_accessor :status              # 1-1 CodeableConcept
        attr_accessor :context             # 0-1 Reference(Encounter|EpisodeOfCare)
        attr_accessor :contextLinkId       # 0-* [ string ]
        attr_accessor :occurrenceDateTime  # 0-1 dateTime
        attr_accessor :occurrencePeriod    # 0-1 Period
        attr_accessor :occurrenceTiming    # 0-1 Timing
        attr_accessor :requester           # 0-* [ Reference(Patient|RelatedPerson|Practitioner|PractitionerRole|Device|Group|Organization) ]
        attr_accessor :requesterLinkId     # 0-* [ string ]
        attr_accessor :performerType       # 0-* [ CodeableConcept ]
        attr_accessor :performerRole       # 0-1 CodeableConcept
        attr_accessor :performer           # 0-1 Reference(RelatedPerson|Patient|Practitioner|PractitionerRole|CareTeam|Device|Substance|Organization|Location)
        attr_accessor :performerLinkId     # 0-* [ string ]
        attr_accessor :reasonCode          # 0-* [ CodeableConcept ]
        attr_accessor :reasonReference     # 0-* [ Reference(Condition|Observation|DiagnosticReport|DocumentReference|Questionnaire|QuestionnaireResponse) ]
        attr_accessor :reason              # 0-* [ string ]
        attr_accessor :reasonLinkId        # 0-* [ string ]
        attr_accessor :note                # 0-* [ Annotation ]
        attr_accessor :securityLabelNumber # 0-* [ unsignedInt ]
      end

      attr_accessor :id                   # 0-1 string
      attr_accessor :extension            # 0-* [ Extension ]
      attr_accessor :modifierExtension    # 0-* [ Extension ]
      attr_accessor :identifier           # 0-1 Identifier
      attr_accessor :issued               # 0-1 dateTime
      attr_accessor :applies              # 0-1 Period
      attr_accessor :topicCodeableConcept # 0-1 CodeableConcept
      attr_accessor :topicReference       # 0-1 Reference(Resource)
      attr_accessor :type                 # 0-1 CodeableConcept
      attr_accessor :subType              # 0-1 CodeableConcept
      attr_accessor :text                 # 0-1 string
      attr_accessor :securityLabel        # 0-* [ Contract::Term::SecurityLabel ]
      attr_accessor :offer                # 1-1 Contract::Term::Offer
      attr_accessor :asset                # 0-* [ Contract::Term::Asset ]
      attr_accessor :action               # 0-* [ Contract::Term::Action ]
      attr_accessor :group                # 0-* [ Contract::Term ]
    end

    class Signer < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Signer.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Signer.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Signer.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'type'=>'Coding', 'path'=>'Signer.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'valueSet'=>'http://hl7.org/fhir/ValueSet/contract-signer-type', 'uri'=>nil}},
        'party' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Signer.party', 'min'=>1, 'max'=>1},
        'signature' => {'type'=>'Signature', 'path'=>'Signer.signature', 'min'=>1, 'max'=>Float::INFINITY}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :type              # 1-1 Coding
      attr_accessor :party             # 1-1 Reference(Organization|Patient|Practitioner|PractitionerRole|RelatedPerson)
      attr_accessor :signature         # 1-* [ Signature ]
    end

    class Friendly < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'content' => ['Attachment', 'Reference']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Friendly.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Friendly.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Friendly.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'contentAttachment' => {'type'=>'Attachment', 'path'=>'Friendly.content[x]', 'min'=>1, 'max'=>1},
        'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'type'=>'Reference', 'path'=>'Friendly.content[x]', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :contentAttachment # 1-1 Attachment
      attr_accessor :contentReference  # 1-1 Reference(Composition|DocumentReference|QuestionnaireResponse)
    end

    class Legal < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'content' => ['Attachment', 'Reference']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Legal.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Legal.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Legal.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'contentAttachment' => {'type'=>'Attachment', 'path'=>'Legal.content[x]', 'min'=>1, 'max'=>1},
        'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Composition', 'http://hl7.org/fhir/StructureDefinition/DocumentReference', 'http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse'], 'type'=>'Reference', 'path'=>'Legal.content[x]', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :contentAttachment # 1-1 Attachment
      attr_accessor :contentReference  # 1-1 Reference(Composition|DocumentReference|QuestionnaireResponse)
    end

    class Rule < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'content' => ['Attachment', 'Reference']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Rule.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Rule.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Rule.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'contentAttachment' => {'type'=>'Attachment', 'path'=>'Rule.content[x]', 'min'=>1, 'max'=>1},
        'contentReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/DocumentReference'], 'type'=>'Reference', 'path'=>'Rule.content[x]', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :contentAttachment # 1-1 Attachment
      attr_accessor :contentReference  # 1-1 Reference(DocumentReference)
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
    attr_accessor :url                      # 0-1 uri
    attr_accessor :version                  # 0-1 string
    attr_accessor :status                   # 0-1 code
    attr_accessor :legalState               # 0-1 CodeableConcept
    attr_accessor :instantiatesCanonical    # 0-1 Reference(Contract)
    attr_accessor :instantiatesUri          # 0-1 uri
    attr_accessor :contentDerivative        # 0-1 CodeableConcept
    attr_accessor :issued                   # 0-1 dateTime
    attr_accessor :applies                  # 0-1 Period
    attr_accessor :expirationType           # 0-1 CodeableConcept
    attr_accessor :subject                  # 0-* [ Reference(Resource) ]
    attr_accessor :authority                # 0-* [ Reference(Organization) ]
    attr_accessor :domain                   # 0-* [ Reference(Location) ]
    attr_accessor :site                     # 0-* [ Reference(Location) ]
    attr_accessor :name                     # 0-1 string
    attr_accessor :title                    # 0-1 string
    attr_accessor :subtitle                 # 0-1 string
    attr_accessor :alias                    # 0-* [ string ]
    attr_accessor :author                   # 0-1 Reference(Patient|Practitioner|PractitionerRole|Organization)
    attr_accessor :scope                    # 0-1 CodeableConcept
    attr_accessor :topicCodeableConcept     # 0-1 CodeableConcept
    attr_accessor :topicReference           # 0-1 Reference(Resource)
    attr_accessor :type                     # 0-1 CodeableConcept
    attr_accessor :subType                  # 0-* [ CodeableConcept ]
    attr_accessor :contentDefinition        # 0-1 Contract::ContentDefinition
    attr_accessor :term                     # 0-* [ Contract::Term ]
    attr_accessor :supportingInfo           # 0-* [ Reference(Resource) ]
    attr_accessor :relevantHistory          # 0-* [ Reference(Provenance) ]
    attr_accessor :signer                   # 0-* [ Contract::Signer ]
    attr_accessor :friendly                 # 0-* [ Contract::Friendly ]
    attr_accessor :legal                    # 0-* [ Contract::Legal ]
    attr_accessor :rule                     # 0-* [ Contract::Rule ]
    attr_accessor :legallyBindingAttachment # 0-1 Attachment
    attr_accessor :legallyBindingReference  # 0-1 Reference(Composition|DocumentReference|QuestionnaireResponse|Contract)

    def resourceType
      'Contract'
    end
  end
end
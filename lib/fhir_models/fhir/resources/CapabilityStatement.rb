module FHIR
  class CapabilityStatement < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'date', 'description', 'fhirversion', 'format', 'guide', 'jurisdiction', 'mode', 'name', 'publisher', 'resource', 'resource-profile', 'security-service', 'software', 'status', 'supported-profile', 'title', 'url', 'version']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'CapabilityStatement.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'CapabilityStatement.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'CapabilityStatement.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'type'=>'code', 'path'=>'CapabilityStatement.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'preferred', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages', 'uri'=>nil}},
      'text' => {'type'=>'Narrative', 'path'=>'CapabilityStatement.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'CapabilityStatement.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'CapabilityStatement.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'CapabilityStatement.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'url' => {'type'=>'uri', 'path'=>'CapabilityStatement.url', 'min'=>0, 'max'=>1},
      'version' => {'type'=>'string', 'path'=>'CapabilityStatement.version', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'string', 'path'=>'CapabilityStatement.name', 'min'=>0, 'max'=>1},
      'title' => {'type'=>'string', 'path'=>'CapabilityStatement.title', 'min'=>0, 'max'=>1},
      'status' => {'type'=>'code', 'path'=>'CapabilityStatement.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/publication-status|4.0.0', 'uri'=>nil}},
      'experimental' => {'type'=>'boolean', 'path'=>'CapabilityStatement.experimental', 'min'=>0, 'max'=>1},
      'date' => {'type'=>'dateTime', 'path'=>'CapabilityStatement.date', 'min'=>1, 'max'=>1},
      'publisher' => {'type'=>'string', 'path'=>'CapabilityStatement.publisher', 'min'=>0, 'max'=>1},
      'contact' => {'type'=>'ContactDetail', 'path'=>'CapabilityStatement.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'description' => {'type'=>'markdown', 'path'=>'CapabilityStatement.description', 'min'=>0, 'max'=>1},
      'useContext' => {'type'=>'UsageContext', 'path'=>'CapabilityStatement.useContext', 'min'=>0, 'max'=>Float::INFINITY},
      'jurisdiction' => {'type'=>'CodeableConcept', 'path'=>'CapabilityStatement.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'valueSet'=>'http://hl7.org/fhir/ValueSet/jurisdiction', 'uri'=>nil}},
      'purpose' => {'type'=>'markdown', 'path'=>'CapabilityStatement.purpose', 'min'=>0, 'max'=>1},
      'copyright' => {'type'=>'markdown', 'path'=>'CapabilityStatement.copyright', 'min'=>0, 'max'=>1},
      'kind' => {'type'=>'code', 'path'=>'CapabilityStatement.kind', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/capability-statement-kind|4.0.0', 'uri'=>nil}},
      'instantiates' => {'type'=>'canonical', 'path'=>'CapabilityStatement.instantiates', 'min'=>0, 'max'=>Float::INFINITY},
      'imports' => {'type'=>'canonical', 'path'=>'CapabilityStatement.imports', 'min'=>0, 'max'=>Float::INFINITY},
      'software' => {'type'=>'CapabilityStatement::Software', 'path'=>'CapabilityStatement.software', 'min'=>0, 'max'=>1},
      'implementation' => {'type'=>'CapabilityStatement::Implementation', 'path'=>'CapabilityStatement.implementation', 'min'=>0, 'max'=>1},
      'fhirVersion' => {'type'=>'code', 'path'=>'CapabilityStatement.fhirVersion', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/FHIR-version|4.0.0', 'uri'=>nil}},
      'format' => {'type'=>'code', 'path'=>'CapabilityStatement.format', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/mimetypes|4.0.0', 'uri'=>nil}},
      'patchFormat' => {'type'=>'code', 'path'=>'CapabilityStatement.patchFormat', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/mimetypes|4.0.0', 'uri'=>nil}},
      'implementationGuide' => {'type'=>'canonical', 'path'=>'CapabilityStatement.implementationGuide', 'min'=>0, 'max'=>Float::INFINITY},
      'rest' => {'type'=>'CapabilityStatement::Rest', 'path'=>'CapabilityStatement.rest', 'min'=>0, 'max'=>Float::INFINITY},
      'messaging' => {'type'=>'CapabilityStatement::Messaging', 'path'=>'CapabilityStatement.messaging', 'min'=>0, 'max'=>Float::INFINITY},
      'document' => {'type'=>'CapabilityStatement::Document', 'path'=>'CapabilityStatement.document', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Software < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Software.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Software.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Software.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'string', 'path'=>'Software.name', 'min'=>1, 'max'=>1},
        'version' => {'type'=>'string', 'path'=>'Software.version', 'min'=>0, 'max'=>1},
        'releaseDate' => {'type'=>'dateTime', 'path'=>'Software.releaseDate', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :name              # 1-1 string
      attr_accessor :version           # 0-1 string
      attr_accessor :releaseDate       # 0-1 dateTime
    end

    class Implementation < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Implementation.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Implementation.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Implementation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'string', 'path'=>'Implementation.description', 'min'=>1, 'max'=>1},
        'url' => {'type'=>'url', 'path'=>'Implementation.url', 'min'=>0, 'max'=>1},
        'custodian' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Implementation.custodian', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :description       # 1-1 string
      attr_accessor :url               # 0-1 url
      attr_accessor :custodian         # 0-1 Reference(Organization)
    end

    class Rest < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Rest.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Rest.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Rest.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'mode' => {'type'=>'code', 'path'=>'Rest.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/restful-capability-mode|4.0.0', 'uri'=>nil}},
        'documentation' => {'type'=>'markdown', 'path'=>'Rest.documentation', 'min'=>0, 'max'=>1},
        'security' => {'type'=>'CapabilityStatement::Rest::Security', 'path'=>'Rest.security', 'min'=>0, 'max'=>1},
        'resource' => {'type'=>'CapabilityStatement::Rest::Resource', 'path'=>'Rest.resource', 'min'=>0, 'max'=>Float::INFINITY},
        'interaction' => {'type'=>'CapabilityStatement::Rest::Interaction', 'path'=>'Rest.interaction', 'min'=>0, 'max'=>Float::INFINITY},
        'searchParam' => {'type'=>'CapabilityStatement::Rest::Resource::SearchParam', 'path'=>'Rest.searchParam', 'min'=>0, 'max'=>Float::INFINITY},
        'operation' => {'type'=>'CapabilityStatement::Rest::Resource::Operation', 'path'=>'Rest.operation', 'min'=>0, 'max'=>Float::INFINITY},
        'compartment' => {'type'=>'canonical', 'path'=>'Rest.compartment', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Security < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Security.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Security.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Security.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'cors' => {'type'=>'boolean', 'path'=>'Security.cors', 'min'=>0, 'max'=>1},
          'service' => {'type'=>'CodeableConcept', 'path'=>'Security.service', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'valueSet'=>'http://hl7.org/fhir/ValueSet/restful-security-service', 'uri'=>nil}},
          'description' => {'type'=>'markdown', 'path'=>'Security.description', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :cors              # 0-1 boolean
        attr_accessor :service           # 0-* [ CodeableConcept ]
        attr_accessor :description       # 0-1 markdown
      end

      class Resource < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Resource.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Resource.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Resource.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'type'=>'code', 'path'=>'Resource.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/resource-types|4.0.0', 'uri'=>nil}},
          'profile' => {'type'=>'canonical', 'path'=>'Resource.profile', 'min'=>0, 'max'=>1},
          'supportedProfile' => {'type'=>'canonical', 'path'=>'Resource.supportedProfile', 'min'=>0, 'max'=>Float::INFINITY},
          'documentation' => {'type'=>'markdown', 'path'=>'Resource.documentation', 'min'=>0, 'max'=>1},
          'interaction' => {'type'=>'CapabilityStatement::Rest::Resource::Interaction', 'path'=>'Resource.interaction', 'min'=>0, 'max'=>Float::INFINITY},
          'versioning' => {'type'=>'code', 'path'=>'Resource.versioning', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/versioning-policy|4.0.0', 'uri'=>nil}},
          'readHistory' => {'type'=>'boolean', 'path'=>'Resource.readHistory', 'min'=>0, 'max'=>1},
          'updateCreate' => {'type'=>'boolean', 'path'=>'Resource.updateCreate', 'min'=>0, 'max'=>1},
          'conditionalCreate' => {'type'=>'boolean', 'path'=>'Resource.conditionalCreate', 'min'=>0, 'max'=>1},
          'conditionalRead' => {'type'=>'code', 'path'=>'Resource.conditionalRead', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/conditional-read-status|4.0.0', 'uri'=>nil}},
          'conditionalUpdate' => {'type'=>'boolean', 'path'=>'Resource.conditionalUpdate', 'min'=>0, 'max'=>1},
          'conditionalDelete' => {'type'=>'code', 'path'=>'Resource.conditionalDelete', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/conditional-delete-status|4.0.0', 'uri'=>nil}},
          'referencePolicy' => {'type'=>'code', 'path'=>'Resource.referencePolicy', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/reference-handling-policy|4.0.0', 'uri'=>nil}},
          'searchInclude' => {'type'=>'string', 'path'=>'Resource.searchInclude', 'min'=>0, 'max'=>Float::INFINITY},
          'searchRevInclude' => {'type'=>'string', 'path'=>'Resource.searchRevInclude', 'min'=>0, 'max'=>Float::INFINITY},
          'searchParam' => {'type'=>'CapabilityStatement::Rest::Resource::SearchParam', 'path'=>'Resource.searchParam', 'min'=>0, 'max'=>Float::INFINITY},
          'operation' => {'type'=>'CapabilityStatement::Rest::Resource::Operation', 'path'=>'Resource.operation', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Interaction < FHIR::Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Interaction.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Interaction.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Interaction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'type'=>'code', 'path'=>'Interaction.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/type-restful-interaction|4.0.0', 'uri'=>nil}},
            'documentation' => {'type'=>'markdown', 'path'=>'Interaction.documentation', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :documentation     # 0-1 markdown
        end

        class SearchParam < FHIR::Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'SearchParam.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'SearchParam.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'SearchParam.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'type'=>'string', 'path'=>'SearchParam.name', 'min'=>1, 'max'=>1},
            'definition' => {'type'=>'canonical', 'path'=>'SearchParam.definition', 'min'=>0, 'max'=>1},
            'type' => {'type'=>'code', 'path'=>'SearchParam.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/search-param-type|4.0.0', 'uri'=>nil}},
            'documentation' => {'type'=>'markdown', 'path'=>'SearchParam.documentation', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 string
          attr_accessor :definition        # 0-1 canonical
          attr_accessor :type              # 1-1 code
          attr_accessor :documentation     # 0-1 markdown
        end

        class Operation < FHIR::Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Operation.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Operation.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Operation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'name' => {'type'=>'string', 'path'=>'Operation.name', 'min'=>1, 'max'=>1},
            'definition' => {'type'=>'canonical', 'path'=>'Operation.definition', 'min'=>1, 'max'=>1},
            'documentation' => {'type'=>'markdown', 'path'=>'Operation.documentation', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :name              # 1-1 string
          attr_accessor :definition        # 1-1 canonical
          attr_accessor :documentation     # 0-1 markdown
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :type              # 1-1 code
        attr_accessor :profile           # 0-1 canonical
        attr_accessor :supportedProfile  # 0-* [ canonical ]
        attr_accessor :documentation     # 0-1 markdown
        attr_accessor :interaction       # 0-* [ CapabilityStatement::Rest::Resource::Interaction ]
        attr_accessor :versioning        # 0-1 code
        attr_accessor :readHistory       # 0-1 boolean
        attr_accessor :updateCreate      # 0-1 boolean
        attr_accessor :conditionalCreate # 0-1 boolean
        attr_accessor :conditionalRead   # 0-1 code
        attr_accessor :conditionalUpdate # 0-1 boolean
        attr_accessor :conditionalDelete # 0-1 code
        attr_accessor :referencePolicy   # 0-* [ code ]
        attr_accessor :searchInclude     # 0-* [ string ]
        attr_accessor :searchRevInclude  # 0-* [ string ]
        attr_accessor :searchParam       # 0-* [ CapabilityStatement::Rest::Resource::SearchParam ]
        attr_accessor :operation         # 0-* [ CapabilityStatement::Rest::Resource::Operation ]
      end

      class Interaction < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Interaction.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Interaction.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Interaction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'code' => {'type'=>'code', 'path'=>'Interaction.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/system-restful-interaction|4.0.0', 'uri'=>nil}},
          'documentation' => {'type'=>'markdown', 'path'=>'Interaction.documentation', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :code              # 1-1 code
        attr_accessor :documentation     # 0-1 markdown
      end

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :mode              # 1-1 code
      attr_accessor :documentation     # 0-1 markdown
      attr_accessor :security          # 0-1 CapabilityStatement::Rest::Security
      attr_accessor :resource          # 0-* [ CapabilityStatement::Rest::Resource ]
      attr_accessor :interaction       # 0-* [ CapabilityStatement::Rest::Interaction ]
      attr_accessor :searchParam       # 0-* [ CapabilityStatement::Rest::Resource::SearchParam ]
      attr_accessor :operation         # 0-* [ CapabilityStatement::Rest::Resource::Operation ]
      attr_accessor :compartment       # 0-* [ canonical ]
    end

    class Messaging < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Messaging.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Messaging.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Messaging.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'endpoint' => {'type'=>'CapabilityStatement::Messaging::Endpoint', 'path'=>'Messaging.endpoint', 'min'=>0, 'max'=>Float::INFINITY},
        'reliableCache' => {'type'=>'unsignedInt', 'path'=>'Messaging.reliableCache', 'min'=>0, 'max'=>1},
        'documentation' => {'type'=>'markdown', 'path'=>'Messaging.documentation', 'min'=>0, 'max'=>1},
        'supportedMessage' => {'type'=>'CapabilityStatement::Messaging::SupportedMessage', 'path'=>'Messaging.supportedMessage', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Endpoint < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Endpoint.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Endpoint.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Endpoint.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'protocol' => {'type'=>'Coding', 'path'=>'Endpoint.protocol', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'valueSet'=>'http://hl7.org/fhir/ValueSet/message-transport', 'uri'=>nil}},
          'address' => {'type'=>'url', 'path'=>'Endpoint.address', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :protocol          # 1-1 Coding
        attr_accessor :address           # 1-1 url
      end

      class SupportedMessage < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'SupportedMessage.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'SupportedMessage.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'SupportedMessage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'mode' => {'type'=>'code', 'path'=>'SupportedMessage.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/event-capability-mode|4.0.0', 'uri'=>nil}},
          'definition' => {'type'=>'canonical', 'path'=>'SupportedMessage.definition', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :mode              # 1-1 code
        attr_accessor :definition        # 1-1 canonical
      end

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :endpoint          # 0-* [ CapabilityStatement::Messaging::Endpoint ]
      attr_accessor :reliableCache     # 0-1 unsignedInt
      attr_accessor :documentation     # 0-1 markdown
      attr_accessor :supportedMessage  # 0-* [ CapabilityStatement::Messaging::SupportedMessage ]
    end

    class Document < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Document.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Document.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Document.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'mode' => {'type'=>'code', 'path'=>'Document.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'valueSet'=>'http://hl7.org/fhir/ValueSet/document-mode|4.0.0', 'uri'=>nil}},
        'documentation' => {'type'=>'markdown', 'path'=>'Document.documentation', 'min'=>0, 'max'=>1},
        'profile' => {'type'=>'canonical', 'path'=>'Document.profile', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id                # 0-1 string
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :mode              # 1-1 code
      attr_accessor :documentation     # 0-1 markdown
      attr_accessor :profile           # 1-1 canonical
    end

    attr_accessor :id                  # 0-1 id
    attr_accessor :meta                # 0-1 Meta
    attr_accessor :implicitRules       # 0-1 uri
    attr_accessor :language            # 0-1 code
    attr_accessor :text                # 0-1 Narrative
    attr_accessor :contained           # 0-* [ Resource ]
    attr_accessor :extension           # 0-* [ Extension ]
    attr_accessor :modifierExtension   # 0-* [ Extension ]
    attr_accessor :url                 # 0-1 uri
    attr_accessor :version             # 0-1 string
    attr_accessor :name                # 0-1 string
    attr_accessor :title               # 0-1 string
    attr_accessor :status              # 1-1 code
    attr_accessor :experimental        # 0-1 boolean
    attr_accessor :date                # 1-1 dateTime
    attr_accessor :publisher           # 0-1 string
    attr_accessor :contact             # 0-* [ ContactDetail ]
    attr_accessor :description         # 0-1 markdown
    attr_accessor :useContext          # 0-* [ UsageContext ]
    attr_accessor :jurisdiction        # 0-* [ CodeableConcept ]
    attr_accessor :purpose             # 0-1 markdown
    attr_accessor :copyright           # 0-1 markdown
    attr_accessor :kind                # 1-1 code
    attr_accessor :instantiates        # 0-* [ canonical ]
    attr_accessor :imports             # 0-* [ canonical ]
    attr_accessor :software            # 0-1 CapabilityStatement::Software
    attr_accessor :implementation      # 0-1 CapabilityStatement::Implementation
    attr_accessor :fhirVersion         # 1-1 code
    attr_accessor :format              # 1-* [ code ]
    attr_accessor :patchFormat         # 0-* [ code ]
    attr_accessor :implementationGuide # 0-* [ canonical ]
    attr_accessor :rest                # 0-* [ CapabilityStatement::Rest ]
    attr_accessor :messaging           # 0-* [ CapabilityStatement::Messaging ]
    attr_accessor :document            # 0-* [ CapabilityStatement::Document ]

    def resourceType
      'CapabilityStatement'
    end
  end
end
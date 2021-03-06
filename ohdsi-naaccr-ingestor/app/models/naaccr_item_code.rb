class NaaccrItemCode < ActiveRecord::Base
# class NaaccrItem < ApplicationRecord
  belongs_to :naaccr_item
  has_many :naaccr_schema_maps, as: :mappable

  PROVENANCE_BASE_NAACCR_DATA_DICTIONARY = 'Base NAACCR Data Dictionary'
  PROVENANCE_SEER_API = 'SEER API'
  PROVENANCES = [PROVENANCE_BASE_NAACCR_DATA_DICTIONARY, PROVENANCE_SEER_API]

  CODE_OMOP_DOMAIN_ID_NONE = 'None'
  CODE_OMOP_DOMAIN_ID_MEAS_VALUE = 'Meas Value'
  CODE_OMOP_DOMAIN_ID_TREATMENT = 'Treatment'
  CODE_OMOP_DOMAIN_IDS = [CODE_OMOP_DOMAIN_ID_NONE, CODE_OMOP_DOMAIN_ID_MEAS_VALUE, CODE_OMOP_DOMAIN_ID_TREATMENT]
end
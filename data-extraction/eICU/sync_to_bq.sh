bq rm -f -t oxygenators-209612:eicu.sofa_results
bq rm -f -t oxygenators-209612:eicu.eicu_oxygen_therapy
bq rm -f -t oxygenators-209612:eicu.final_patient_results

bq mk --use_legacy_sql=false --view "$(cat eicu_sofa_results.sql)" oxygenators-209612:eicu.sofa_results
bq mk --use_legacy_sql=false --view "$(cat eicu_oxygen_therapy.sql)" oxygenators-209612:eicu.eicu_oxygen_therapy
bq mk --use_legacy_sql=false --view "$(cat eicu_final_patient_results.sql)" oxygenators-209612:eicu.final_patient_results

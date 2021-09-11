SELECT
    cb.*,
    cp.desc_pregunta,
    csb.id_plantilla_solicitud_beca,
    CS.ID_CONVOCATORIA
    ,ssb.ID_seccion_sld_beca,
    ssb.cve_seccion_sld_beca--,
    --csb.id_conf_seccion_sld_beca,
    --cb.id_conf_pregunta_beca
    --cs.*
FROM
    convocatoria_plantilla_sol cs,
    conf_pregunta_beca cb,
    cat_pregunta cp,
    informacion_beca ib,
    solicitud_informacion_beca sb,
    solicitud s,
    conf_seccion_sld_beca csb,
    cat_seccion_sld_beca ssb
WHERE
          cp.id_pregunta = cb.id_pregunta
    AND
        cb.id_conf_seccion_sld_beca = csb.id_conf_seccion_sld_beca
    AND
        csb.id_seccion_sld_beca = ssb.id_seccion_sld_beca
    AND
        cb.id_plantilla_solicitud_beca = cs.id_plantilla_solicitud
    AND
        cs.id_convocatoria = s.id_convocatoria
    AND
        s.id_solicitud = sb.id_solicitud_beca
    AND
        sb.id_informacion_beca = ib.id_informacion_beca
    AND
        IB.ID_INFORMACION_BECA = 274311
    AND
        ssb.cve_seccion_sld_beca = 12002015
    --AND
        --csb.id_plantilla_solicitud_beca = 5365
ORDER 
    BY cb.id_pregunta ASC
;


--por convocatoria


SELECT
    cb.*,
    CP.ID_PREGUNTA,
    cp.desc_pregunta
    --csb.id_plantilla_solicitud_beca,
    ,ssb.ID_seccion_sld_beca,
    ssb.cve_seccion_sld_beca,
    CS.ID_CONVOCATORIA
    --ssb.ID_seccion_sld_beca,
    --ssb.cve_seccion_sld_beca,
    --csb.id_conf_seccion_sld_beca,
    --cb.id_conf_pregunta_beca
    --cs.*
FROM
    convocatoria_plantilla_sol cs,
    conf_pregunta_beca cb,
    cat_pregunta cp,
    conf_seccion_sld_beca csb,
    cat_seccion_sld_beca ssb
WHERE
          cp.id_pregunta = cb.id_pregunta
    AND
        cb.id_conf_seccion_sld_beca = csb.id_conf_seccion_sld_beca
    AND
        csb.id_seccion_sld_beca = ssb.id_seccion_sld_beca
    AND
        cb.id_plantilla_solicitud_beca = cs.id_plantilla_solicitud
    --AND
        --ssb.cve_seccion_sld_beca = 12002015
    --AND
        --CP.ID_PREGUNTA = 1
    AND 
        CS.ID_CONVOCATORIA in (
--5845, --SE
--5841 --OC
--5721, --NE
--5701, --CE
--5842, --SO
--5722  --NO
--,5862
--5863,
--,
5902
--,5904
)
    --AND
        --csb.id_plantilla_solicitud_beca = 5365
ORDER 
    BY cb.id_pregunta ASC
;


SELECT * FROM CONVOCATORIA WHERE ID_CONVOCATORIA = 5841;
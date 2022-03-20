{% macro audit_insert(action) %}

insert into dev.dbt_venkatachaari.dbt_audits
(audit_type) 
values('{{ action }}');

commit;

{% endmacro %}



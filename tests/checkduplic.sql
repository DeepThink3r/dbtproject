select 
    count(*) qtd, 
    company_name, 
    contact_name 
from {{ref('customers')}}
group by company_name, contact_name
having qtd > 1
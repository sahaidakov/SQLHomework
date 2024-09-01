with project_length_month_count as (
    SELECT pr.id as projectid,
  (DATE_PART('year', pr.finish_date ::date) - DATE_PART('year', pr.start_date ::date))*12
   + (DATE_PART ('month', pr.finish_date :: date) - DATE_PART ('month', pr.start_date :: date))
   as month_count
  from project pr
  order by pr.id
)
select projectid, month_count
from project_length_month_count
where month_count = (
     select max(month_count)
	 from project_length_month_count
);

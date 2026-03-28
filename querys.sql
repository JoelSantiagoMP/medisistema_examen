-- Consultas
-- 1
select count(id_paciente) from medicos
group by id;

-- 2

select id, nombre, dias_vacaciones

-- 3

select id, nombre, apellido1, apellido2 from medicos
order by horas_consulta desc
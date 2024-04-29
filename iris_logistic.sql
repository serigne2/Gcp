CREATE model
`irisdatasets.iris_logistic`
options
(model_type='LOGISTIC_REG',
INPUT_LABEL_COLS=['variety'] ) AS 

select
   *
   from

   ML.PREDICT(
    MODEL `irisdatasets.mymodel`, 
       (
        SELECT
         sepal_length,
         sepal_width,
         petal_length,
         petal_width,
         variety
         FROM `irisdatasets.table_iris`
       )
   );
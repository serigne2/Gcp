CREATE MODEL
`irisdatasets.mymodel`

OPTIONS
(
MODEL_TYPE='PCA',
NUM_PRINCIPAL_COMPONENTS=2,
SCALE_FEATURES=FALSE
) AS 
SELECT 
sepal_length,
sepal_width,
petal_length,
petal_width
FROM `irisdatasets.table_iris`;

SELECT g. goods_name,c. categorys_name
FROM goods g
LEFT JOIN categoods cg
	ON g.goods_id = cg.goods_id
LEFT JOIN Categorys c
	ON cg.categorys_id = C.categorys_id
	ORDER BY g. goods_name;


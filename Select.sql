Select p.Name as Product, c.Name as Category
	from Product as p with(nolock) 
	left join ProductsCategories as pc with(nolock) on pc.ProductId = p.Id
	left join Category as c with(nolock) on c.Id = pc.CategoryId
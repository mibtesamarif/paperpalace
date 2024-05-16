<?php
include("query.php");
include("header.php");
?>

	<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Explore Our Diverse Range of Products - Shop by Category</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Shop Category</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->


	<!-- ================ category section start ================= -->		  
  <section class="section-margin--small mb-5">
    <div class="container">
      <div class="row">
        <div class="col-xl-3 col-lg-4 col-md-5">
          <div class="sidebar-categories">
            <div class="head">Browse Categories</div>
              <ul class="main-categories">
                  <li class="common-filter">
                      <?php
                      $query = $pdo->query("SELECT category.category_id, category.category_name, COUNT(product.product_id) AS product_count 
                                            FROM category 
                                            LEFT JOIN jonior_category ON category.category_id = jonior_category.jonior_category_category_id 
                                            LEFT JOIN product ON jonior_category.jonior_category_id = product.product_jonior_category_id 
                                            GROUP BY category.category_id");
                      $allcategory = $query->fetchAll(PDO::FETCH_ASSOC);
                      foreach ($allcategory as $category) {
                          ?>
                          <form action="#">
                              <ul>
                                  <li class="filter-list">
                                  <input class="pixel-checkbox category-checkbox" value="<?php echo $category['category_id']?>" type="checkbox" id="<?php echo $category['category_name']?>" name="<?php echo $category['category_name']?>">
                                      <label class="ml-3" for="<?php echo $category['category_name']?>">
                                          <?php echo $category['category_name']?>
                                          <span>(<?php echo $category['product_count']?>)</span>
                                      </label>
                                  </li>
                              </ul>
                          </form>
                      <?php
                      }
                      ?>
                  </li>
                </ul>
            </div>
          <div class="sidebar-filter">
              <div class="top-filter-head">Product Filters</div>
              <div class="common-filter">
                  <div class="head">Brands</div>
                    <?php
                    $query = $pdo->query("SELECT brands.brands_name, COUNT(product.product_id) AS product_count
                                        FROM brands
                                        LEFT JOIN product ON brands.brands_id = product.product_brand_id
                                        GROUP BY brands.brands_id");
                    $allbrands = $query->fetchAll(PDO::FETCH_ASSOC);
                    foreach ($allbrands as $brands) {
                      ?>
                      <form action="#">
                          <ul>
                              <li class="filter-list"><input class="pixel-checkbox brand-checkbox" type="checkbox" id="<?php echo $brands['brands_name']?>" value="<?php echo $brands['brands_name']?>" name="<?php echo $brands['brands_name']?>"><label class="ml-3" for="<?php echo $brands['brands_name']?>"><?php echo $brands['brands_name']?><span>(<?php echo $brands['product_count']?>)</span></label></li>
                          </ul>
                      </form>
                    <?php
                    }
                    ?>
                  </div>
              </div>
              </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
          <!-- Start Filter Bar -->
          <div class="filter-bar d-flex flex-wrap align-items-center">
            <div>
              <div class="input-group filter-bar-search">
                <input type="text" id="searchInput" placeholder="Search">
              </div>
            </div>
          </div>
          <!-- End Filter Bar -->
          <!-- Start Best Seller -->
          <section class="lattest-product-area pb-40 category-list">
            <div class="row" id="productContainer">
              <?php
                $query = $pdo->query("SELECT * FROM product");
                $allproduct = $query->fetchAll(PDO::FETCH_ASSOC);
                foreach ($allproduct as $product) {
              ?>
              <div class="col-md-6 col-lg-4 product-item" data-name="<?php echo strtolower($product['product_name']); ?>">
                <div class="card text-center card-product">
                  <div class="card-product__img">
                    <img class="card-img" src="adminPanel/assets/img/product-image/<?php echo $product['product_image']?>" alt="product">
                  </div>
                  <div class="card-body">
                    <p>Accessories</p>
                    <h4 class="card-product__title"><a href="single-product.php?sid=<?php echo $product['product_id'] ?>"><?php echo $product['product_name']?></a></h4>
                    <p class="card-product__price">$<?php echo $product['price']?></p>
                  </div>
                </div>
              </div>
              <?php
                }
              ?>
            </div>
            <!-- Display message for no results -->
            <div id="noResultsMessage" class="alert alert-warning" role="alert" style="display: none;">
            <strong>No results found for "<span id="searchQuerySpan"></span>"</strong>
            </div>
          </section>
          <!-- End Best Seller -->
        </div>
      </div>
    </div>
  </section>
	<!-- ================ category section end ================= -->		  

	<!-- ================ top product area start ================= -->	
	<section class="related-product-area">
		<div class="container">
			<div class="section-intro pb-60px">
        <p>Popular Item in the market</p>
        <h2>Top <span class="section-intro__style">Product</span></h2>
      </div>
			<div class="row mt-30">
        <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
          <div class="single-search-product-wrapper">
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-1.png" alt=""></a>
              <div class="desc">
                  <a href="#" class="title">Gray Coffee Cup</a>
                  <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-2.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-3.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
          <div class="single-search-product-wrapper">
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-4.png" alt=""></a>
              <div class="desc">
                  <a href="#" class="title">Gray Coffee Cup</a>
                  <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-5.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-6.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
          <div class="single-search-product-wrapper">
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-7.png" alt=""></a>
              <div class="desc">
                  <a href="#" class="title">Gray Coffee Cup</a>
                  <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-8.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-9.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
          <div class="single-search-product-wrapper">
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-1.png" alt=""></a>
              <div class="desc">
                  <a href="#" class="title">Gray Coffee Cup</a>
                  <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-2.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
            <div class="single-search-product d-flex">
              <a href="#"><img src="img/product/product-sm-3.png" alt=""></a>
              <div class="desc">
                <a href="#" class="title">Gray Coffee Cup</a>
                <div class="price">$170.00</div>
              </div>
            </div>
          </div>
        </div>
      </div>
		</div>
	</section>
	<!-- ================ top product area end ================= -->		

	<!-- ================ Subscribe section start ================= -->		  
  <section class="subscribe-position">
    <div class="container">
      <div class="subscribe text-center">
        <h3 class="subscribe__title">Get Update From Anywhere</h3>
        <p>Bearing Void gathering light light his eavening unto dont afraid</p>
        <div id="mc_embed_signup">
          <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe-form form-inline mt-5 pt-1">
            <div class="form-group ml-sm-auto">
              <input class="form-control mb-1" type="email" name="EMAIL" placeholder="Enter your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" >
              <div class="info"></div>
            </div>
            <button class="button button-subscribe mr-auto mb-1" type="submit">Subscribe Now</button>
            <div style="position: absolute; left: -5000px;">
              <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
            </div>

          </form>
        </div>
        
      </div>
    </div>
  </section>
	<!-- ================ Subscribe section end ================= -->		  
  <script>
  // Get references to the search input, product items, and no results message
  const searchInput = document.getElementById('searchInput');
  const productItems = document.querySelectorAll('.product-item');
  const noResultsMessage = document.getElementById('noResultsMessage');
  const searchQuerySpan = document.getElementById('searchQuerySpan');

  // Get references to brand and category checkboxes
  const brandCheckboxes = document.querySelectorAll('.brand-checkbox');
  const categoryCheckboxes = document.querySelectorAll('.category-checkbox');

  // Add event listener to the search input for live searching
  searchInput.addEventListener('input', function() {
    // Clear all brand and category checkboxes
    brandCheckboxes.forEach(checkbox => {
      checkbox.checked = false;
    });
    categoryCheckboxes.forEach(checkbox => {
      checkbox.checked = false;
    });

    // Get the search query entered by the user
    const searchQuery = this.value.trim().toLowerCase();

    // Loop through all product items and hide/show based on search query
    let foundResults = false;
    productItems.forEach(item => {
      const productName = item.dataset.name;
      if (productName.includes(searchQuery)) {
        item.style.display = 'block';
        foundResults = true;
      } else {
        item.style.display = 'none';
      }
    });

    // Display no results message if no matching products found
    if (!foundResults) {
      noResultsMessage.style.display = 'block';
      searchQuerySpan.textContent = searchQuery;
    } else {
      noResultsMessage.style.display = 'none';
    }
  });

  // Add event listener to brand checkboxes for filtering
  brandCheckboxes.forEach(checkbox => {
    checkbox.addEventListener('change', function() {
      filterProducts();
    });
  });

  // Add event listener to category checkboxes for filtering
  categoryCheckboxes.forEach(checkbox => {
    checkbox.addEventListener('change', function() {
      filterProducts();
    });
  });

  // Function to filter products based on selected checkboxes
  function filterProducts() {
    const selectedBrands = Array.from(brandCheckboxes)
      .filter(checkbox => checkbox.checked)
      .map(checkbox => checkbox.value);
    const selectedCategories = Array.from(categoryCheckboxes)
      .filter(checkbox => checkbox.checked)
      .map(checkbox => checkbox.value);

    productItems.forEach(item => {
      const brand = item.dataset.brand;
      const category = item.dataset.category;

      const showBrand = selectedBrands.length === 0 || selectedBrands.includes(brand);
      const showCategory = selectedCategories.length === 0 || selectedCategories.includes(category);

      if (showBrand && showCategory) {
        item.style.display = 'block';
      } else {
        item.style.display = 'none';
      }
    });
  }
</script>






  <?php
include("footer.php");
?>

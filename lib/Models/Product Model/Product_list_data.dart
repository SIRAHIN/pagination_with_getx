import 'package:pagination_with_flutter/Models/Category%20Model/Category_Mode.dart';
import 'package:pagination_with_flutter/Models/Color%20Model/Colors_Model.dart';
import 'package:pagination_with_flutter/Models/Variation%20Model/Variation_model.dart';

class ProductsListData {
  int? id;
  String? addedBy;
  int? userId;
  String? name;
  String? slug;
  List<CategoryIds>? categoryIds;
  int? brandId;
  String? unit;
  int? minQty;
  int? refundable;
  List<String>? images;
  String? thumbnail;
  int? featured;
  Null flashDeal;
  String? videoProvider;
  Null videoUrl;
  List<Colors>? colors;
  int? variantProduct;
  List<Null>? attributes;
  List<Null>? choiceOptions;
  List<Variation>? variation;
  int? published;
  int? unitPrice;
  int? purchasePrice;
  int? tax;
  String? taxType;
  int? discount;
  String? discountType;
  int? currentStock;
  String? details;
  int? freeShipping;
  Null attachment;
  String? createdAt;
  String? updatedAt;
  int? status;
  int? featuredStatus;
  String? metaTitle;
  String? metaDescription;
  String? metaImage;
  int? requestStatus;
  Null deniedNote;
  int? weight;
  String? policy;
  int? productManagerId;
  int? productManagerAmount;
  int? isAdminManage;
  int? sellerAmount;
  int? resellerAmount;
  int? reviewsCount;
  List<Null>? rating;
  List<Null>? translations;
  List<Null>? reviews;

  ProductsListData(
      {this.id,
      this.addedBy,
      this.userId,
      this.name,
      this.slug,
      this.categoryIds,
      this.brandId,
      this.unit,
      this.minQty,
      this.refundable,
      this.images,
      this.thumbnail,
      this.featured,
      this.flashDeal,
      this.videoProvider,
      this.videoUrl,
      this.colors,
      this.variantProduct,
      this.attributes,
      this.choiceOptions,
      this.variation,
      this.published,
      this.unitPrice,
      this.purchasePrice,
      this.tax,
      this.taxType,
      this.discount,
      this.discountType,
      this.currentStock,
      this.details,
      this.freeShipping,
      this.attachment,
      this.createdAt,
      this.updatedAt,
      this.status,
      this.featuredStatus,
      this.metaTitle,
      this.metaDescription,
      this.metaImage,
      this.requestStatus,
      this.deniedNote,
      this.weight,
      this.policy,
      this.productManagerId,
      this.productManagerAmount,
      this.isAdminManage,
      this.sellerAmount,
      this.resellerAmount,
      this.reviewsCount,
      this.rating,
      this.translations,
      this.reviews});

  ProductsListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    addedBy = json['added_by'];
    userId = json['user_id'];
    name = json['name'];
    slug = json['slug'];
    if (json['category_ids'] != null) {
      categoryIds = <CategoryIds>[];
      json['category_ids'].forEach((v) {
        categoryIds!.add(CategoryIds.fromJson(v));
      });
    }
    brandId = json['brand_id'];
    unit = json['unit'];
    minQty = json['min_qty'];
    refundable = json['refundable'];
    images = json['images'].cast<String>();
    thumbnail = json['thumbnail'];
    featured = json['featured'];
    flashDeal = json['flash_deal'];
    videoProvider = json['video_provider'];
    videoUrl = json['video_url'];
    if (json['colors'] != null) {
      colors = <Colors>[];
      json['colors'].forEach((v) {
        colors!.add(Colors.fromJson(v));
      });
    }
    variantProduct = json['variant_product'];
    if (json['attributes'] != null) {
      attributes = <Null>[];
      json['attributes'].forEach((v) {
      //  attributes!.add(new Null.fromJson(v));
      });
    }
    if (json['choice_options'] != null) {
      choiceOptions = <Null>[];
      json['choice_options'].forEach((v) {
      //  choiceOptions!.add(new Null.fromJson(v));
      });
    }
    if (json['variation'] != null) {
      variation = <Variation>[];
      json['variation'].forEach((v) {
        variation!.add(Variation.fromJson(v));
      });
    }
    published = json['published'];
    unitPrice = json['unit_price'];
    purchasePrice = json['purchase_price'];
    tax = json['tax'];
    taxType = json['tax_type'];
    discount = json['discount'];
    discountType = json['discount_type'];
    currentStock = json['current_stock'];
    details = json['details'];
    freeShipping = json['free_shipping'];
    attachment = json['attachment'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = json['status'];
    featuredStatus = json['featured_status'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaImage = json['meta_image'];
    requestStatus = json['request_status'];
    deniedNote = json['denied_note'];
    weight = json['weight'];
    policy = json['policy'];
    productManagerId = json['product_manager_id'];
    productManagerAmount = json['product_manager_amount'];
    isAdminManage = json['is_admin_manage'];
    sellerAmount = json['seller_amount'];
    resellerAmount = json['reseller_amount'];
    reviewsCount = json['reviews_count'];
    if (json['rating'] != null) {
      rating = <Null>[];
      json['rating'].forEach((v) {
      //  rating!.add(new Null.fromJson(v));
      });
    }
    if (json['translations'] != null) {
      translations = <Null>[];
      json['translations'].forEach((v) {
      //  translations!.add(new Null.fromJson(v));
      });
    }
    if (json['reviews'] != null) {
      reviews = <Null>[];
      json['reviews'].forEach((v) {
      //  reviews!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['added_by'] = addedBy;
    data['user_id'] = userId;
    data['name'] = name;
    data['slug'] = slug;
    if (categoryIds != null) {
      data['category_ids'] = categoryIds!.map((v) => v.toJson()).toList();
    }
    data['brand_id'] = brandId;
    data['unit'] = unit;
    data['min_qty'] = minQty;
    data['refundable'] = refundable;
    data['images'] = images;
    data['thumbnail'] = thumbnail;
    data['featured'] = featured;
    data['flash_deal'] = flashDeal;
    data['video_provider'] = videoProvider;
    data['video_url'] = videoUrl;
    if (colors != null) {
      data['colors'] = colors!.map((v) => v.toJson()).toList();
    }
    data['variant_product'] = variantProduct;
    if (attributes != null) {
    //  data['attributes'] = this.attributes!.map((v) => v.toJson()).toList();
    }
    if (choiceOptions != null) {
    //  data['choice_options'] =
    //      this.choiceOptions!.map((v) => v.toJson()).toList();
    }
    if (variation != null) {
      data['variation'] = variation!.map((v) => v.toJson()).toList();
    }
    data['published'] = published;
    data['unit_price'] = unitPrice;
    data['purchase_price'] = purchasePrice;
    data['tax'] = tax;
    data['tax_type'] = taxType;
    data['discount'] = discount;
    data['discount_type'] = discountType;
    data['current_stock'] = currentStock;
    data['details'] = details;
    data['free_shipping'] = freeShipping;
    data['attachment'] = attachment;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['status'] = status;
    data['featured_status'] = featuredStatus;
    data['meta_title'] = metaTitle;
    data['meta_description'] = metaDescription;
    data['meta_image'] = metaImage;
    data['request_status'] = requestStatus;
    data['denied_note'] = deniedNote;
    data['weight'] = weight;
    data['policy'] = policy;
    data['product_manager_id'] = productManagerId;
    data['product_manager_amount'] = productManagerAmount;
    data['is_admin_manage'] = isAdminManage;
    data['seller_amount'] = sellerAmount;
    data['reseller_amount'] = resellerAmount;
    data['reviews_count'] = reviewsCount;
    if (rating != null) {
     // data['rating'] = this.rating!.map((v) => v.toJson()).toList();
    }
    if (translations != null) {
    //  data['translations'] = this.translations!.map((v) => v.toJson()).toList();
    }
    if (reviews != null) {
    //  data['reviews'] = this.reviews!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
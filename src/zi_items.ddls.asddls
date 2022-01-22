@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Items'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_ITEMS
  as select from ztb_items as Items
  association to parent ZI_ORDERS as _Orders on $projection.Id = _Orders.Id
{
  key id               as Id,
      name             as Name,
      description      as Description,
      releasedate      as ReleaseDate,
      discontinueddate as DiscontinuedDate,
      price            as Price,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      height           as Height,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      width            as Width,
      depth            as Depth,
      quantity         as Quantity,
      unitofmeasure    as UnitOfMeasure,
      _Orders
}

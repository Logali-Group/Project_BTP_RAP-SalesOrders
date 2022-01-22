@EndUserText.label: 'Items Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_Items
  as projection on ZI_ITEMS
{
  key Id,
      Name,
      Description,
      @EndUserText.label: 'Release'
      ReleaseDate,
      @EndUserText.label: 'Discontinued'
      DiscontinuedDate,
      Price,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      Height,
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      Width,
      Depth,
      Quantity,
      @EndUserText.label: 'Unit'
      UnitOfMeasure,
      /* Associations */
      _Orders : redirected to parent ZC_ORDERS
}

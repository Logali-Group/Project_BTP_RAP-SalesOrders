@EndUserText.label: 'Orders Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZC_ORDERS
  as projection on ZI_ORDERS
{
  key Id,
      Email,
      @EndUserText.label: 'First Name'
      FirstName,
      @EndUserText.label: 'Last Name'
      LastName,
      @EndUserText.label: 'Country'
      Country,
      @EndUserText.label: 'Created On'
      CreatedOn,
      @EndUserText.label: 'Delivery Date'
      DeliveryDate,
      @EndUserText.label: 'Order Status'
      OrderStatus,
      StatusCriticality,
      ImageUrl,
      /* Associations */
      _Items : redirected to composition child ZC_Items
}

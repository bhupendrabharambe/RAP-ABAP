@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'so item'
@Metadata.ignorePropagatedAnnotations: false
define view entity zc_soitem as projection on ZI_SOITEM
{
    key Soid,
    ItemId,
    Product,
    Amount,
    Currency,
    SalesPerson,
    SalesTimestamp,
    SalesManager,
    ApprovalTimestamp,
    ChangedBy,
    ChangedOn,
    ImageItem,
    /* Associations */
    _Header
}

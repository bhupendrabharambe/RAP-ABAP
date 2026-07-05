@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'sales order'
@Metadata.ignorePropagatedAnnotations: true
   define root view entity ZC_SALESORDER1
provider contract transactional_query  
as projection on zitg_root_so
{
    key Soid,
    Buyer,
    SalesPerson,
    SalesTimestamp,
    SalesManager,
    ApprovalTimestamp,
    CreatedBy,
    CreatedOn,
    ChangedBy,
    ChangedOn,
    Url,
    /* Associations */
    _Items
}

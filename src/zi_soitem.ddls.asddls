@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'so item'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZI_SOITEM as select from zbb_dt_soit as s1

  association to parent zitg_root_so as _Header
    on $projection.Soid = _Header.Soid
    
{
    key s1.soid as Soid,
        s1.item_id as ItemId,
        s1.product as Product,
        s1.amount as Amount,
        s1.currency as Currency,
        s1.sales_person as SalesPerson,
        s1.sales_timestamp as SalesTimestamp,
        s1.sales_manager as SalesManager,
        s1.approval_timestamp as ApprovalTimestamp,
        s1.changed_by as ChangedBy,
        s1.changed_on as ChangedOn,
        s1.image_item as ImageItem,

_Header

}

@AbapCatalog.sqlViewName: 'ZITG_CDSASSO1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'association'
@Metadata.ignorePropagatedAnnotations: false
define view zitg_cdsassoc as select from zbb_dt_so as z1
association [0..*] to zbb_dt_soit as z2 on $projection.Soid = z2.soid
{
    key z1.soid as Soid,
    z1.buyer as Buyer,
    z1.sales_person as SalesPerson,
    z1.sales_timestamp as SalesTimestamp,
    z1.sales_manager as SalesManager,
    z1.approval_timestamp as ApprovalTimestamp,
    z1.created_by as CreatedBy,
    z1.created_on as CreatedOn,
    z1.changed_by as ChangedBy,
    z1.changed_on as ChangedOn,
    z1.url as Url,
    z2.item_id as ItemId,
    z2.product as Product,
    z2.image_item as ImageItem
}

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'so header'
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
define view entity zbb_cds_so as select from zbb_dt_so as s1
{
   key s1.soid as Soid,
    s1.buyer as Buyer,
    s1.sales_person as SalesPerson,
    s1.sales_timestamp as SalesTimestamp,
    s1.sales_manager as SalesManager,
    s1.approval_timestamp as ApprovalTimestamp,
    s1.created_by as CreatedBy,
    s1.created_on as CreatedOn,
    s1.changed_by as ChangedBy,
    s1.changed_on as ChangedOn,
    s1.url as Url
}

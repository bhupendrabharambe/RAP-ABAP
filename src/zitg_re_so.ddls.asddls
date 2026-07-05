@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SO HEADER RE'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZITG_RE_SO as select from zbb_dt_so
composition [1..*] of ZITG_SOITEM_ENTITY as _item
{
    key zbb_dt_so.soid as Soid,
    zbb_dt_so.buyer as Buyer,
    zbb_dt_so.sales_person as SalesPerson,
    zbb_dt_so.sales_timestamp as SalesTimestamp,
    zbb_dt_so.sales_manager as SalesManager,
    zbb_dt_so.approval_timestamp as ApprovalTimestamp,
    zbb_dt_so.created_by as CreatedBy,
    zbb_dt_so.created_on as CreatedOn,
    zbb_dt_so.changed_by as ChangedBy,
    zbb_dt_so.changed_on as ChangedOn,
    zbb_dt_so.url as Url,
    _item // Make association public
}

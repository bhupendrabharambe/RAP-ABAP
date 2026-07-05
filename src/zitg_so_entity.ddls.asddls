@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SO ENTITY'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZITG_SO_ENTITY as select from zbb_dt_so
{
    key soid as Soid,
    buyer as Buyer,
    sales_person as SalesPerson,
    sales_timestamp as SalesTimestamp,
    sales_manager as SalesManager,
    approval_timestamp as ApprovalTimestamp,
    created_by as CreatedBy,
    created_on as CreatedOn,
    changed_by as ChangedBy,
    changed_on as ChangedOn,
    url as Url
}

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'SO ITEM ENTITY'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZITG_SOITEM_ENTITY as select from zbb_dt_soit
association to parent ZITG_RE_SO as header on $projection.Soid = header.Soid
association [1..1] to zitg_prd_entity as prd on $projection.Product = prd.ProdId
{
    key soid as Soid,
    key item_id as ItemId,
    product as Product,
    amount as Amount,
    currency as Currency,
    sales_person as SalesPerson,
    sales_timestamp as SalesTimestamp,
    sales_manager as SalesManager,
    approval_timestamp as ApprovalTimestamp,
    changed_by as ChangedBy,
    changed_on as ChangedOn,
    image_item as ImageItem,
    header,
    prd
}

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product entity'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity zitg_prd_entity as select from zbb_dt_prod
{
    key prod_id as ProdId,
    descpt as Descpt,
    price as Price,
    currency as Currency
}

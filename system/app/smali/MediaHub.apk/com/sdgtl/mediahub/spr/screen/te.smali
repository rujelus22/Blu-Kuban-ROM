.class final Lcom/sdgtl/mediahub/spr/screen/te;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/te;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/te;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->J(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/te;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/screen/ts;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sdgtl/mediahub/spr/screen/ts;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/te;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->i:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    :goto_25
    return-void

    :cond_26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/te;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/screen/ts;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sdgtl/mediahub/spr/screen/ts;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/te;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_50

    const-string v1, "category_order"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/te;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->p(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_50
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/te;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->h:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_25
.end method

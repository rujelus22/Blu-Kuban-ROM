.class final Lcom/sdgtl/mediahub/spr/screen/td;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/td;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/td;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const-string v1, "tv_category_order"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/td;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->f:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x2400

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;II)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/td;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->finish()V

    return-void
.end method

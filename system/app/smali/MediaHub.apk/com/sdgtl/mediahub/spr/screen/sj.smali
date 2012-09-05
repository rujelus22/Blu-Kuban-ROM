.class final Lcom/sdgtl/mediahub/spr/screen/sj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/sj;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    :goto_5
    return-void

    :pswitch_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/sj;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "pricing_type_code"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/sj;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product_type"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/sj;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product_info"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/sj;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sj;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->C:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x4

    invoke-static {v1, v2, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_5

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

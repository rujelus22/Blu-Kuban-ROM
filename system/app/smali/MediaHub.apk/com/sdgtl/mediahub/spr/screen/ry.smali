.class final Lcom/sdgtl/mediahub/spr/screen/ry;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ry;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ry;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ry;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ry;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ry;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ry;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)I

    move-result v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ry;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ry;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->c:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    goto :goto_5

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

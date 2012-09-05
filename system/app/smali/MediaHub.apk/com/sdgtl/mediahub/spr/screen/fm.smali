.class final Lcom/sdgtl/mediahub/spr/screen/fm;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/fm;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fm;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fm;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fm;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;-><init>(Lcom/sdgtl/mediahub/spr/common/di;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/fm;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/fm;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/fm;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/fm;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    goto :goto_5

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.class final Lcom/sdgtl/mediahub/spr/screen/fe;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/fe;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fe;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fe;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/fe;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Lcom/sdgtl/mediahub/spr/common/di;)V

    goto :goto_5

    :pswitch_17
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fe;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    goto :goto_5

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_17
        :pswitch_6
    .end packed-switch
.end method

.class final Lcom/sdgtl/mediahub/spr/screen/ar;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ar;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ar;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ar;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->h(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ar;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->i(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V

    goto :goto_5

    :pswitch_18
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ar;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Ljava/lang/String;)V

    goto :goto_5

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_18
        :pswitch_6
    .end packed-switch
.end method

.class final Lcom/sdgtl/mediahub/spr/screen/fy;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/fy;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    const-string v0, "Network Error - Cancel selected"

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    :pswitch_b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/fy;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->finish()V

    goto :goto_5

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

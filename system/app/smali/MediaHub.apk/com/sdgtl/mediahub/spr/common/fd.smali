.class final Lcom/sdgtl/mediahub/spr/common/fd;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fd;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fd;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->setResult(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    :goto_b
    return-void

    :pswitch_c
    const-string v0, "Network Error - Retry selected"

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    goto :goto_b

    :pswitch_12
    const-string v0, "Network Error - Cancel selected"

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    goto :goto_b

    :pswitch_18
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fd;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->finish()V

    goto :goto_b

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_18
        :pswitch_c
    .end packed-switch
.end method

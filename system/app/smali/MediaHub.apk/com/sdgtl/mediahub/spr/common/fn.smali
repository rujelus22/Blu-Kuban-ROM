.class final Lcom/sdgtl/mediahub/spr/common/fn;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fn;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_1a

    :goto_5
    return-void

    :sswitch_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fn;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->b:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :sswitch_10
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fn;->a:Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->c:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x9 -> :sswitch_10
    .end sparse-switch
.end method
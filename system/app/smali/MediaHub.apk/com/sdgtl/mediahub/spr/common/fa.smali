.class final Lcom/sdgtl/mediahub/spr/common/fa;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fa;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fa;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fa;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->b(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V

    goto :goto_a
.end method

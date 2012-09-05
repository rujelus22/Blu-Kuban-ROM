.class final Lcom/sdgtl/mediahub/spr/common/fh;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fh;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fh;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fh;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->finish()V

    return-void
.end method

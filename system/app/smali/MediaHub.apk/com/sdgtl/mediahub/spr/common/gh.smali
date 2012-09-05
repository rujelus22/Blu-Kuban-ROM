.class final Lcom/sdgtl/mediahub/spr/common/gh;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/gh;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/gh;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0, v1, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/gh;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const-string v1, "downloading_notification_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/gh;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->x(Landroid/content/Context;)V

    return-void
.end method

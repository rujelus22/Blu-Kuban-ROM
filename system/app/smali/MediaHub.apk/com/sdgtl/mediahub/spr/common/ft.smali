.class final Lcom/sdgtl/mediahub/spr/common/ft;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/ft;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    const-string v0, "MediaHubSignIn"

    const-string v1, "mSignIn failed !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ft;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ft;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    return-void
.end method

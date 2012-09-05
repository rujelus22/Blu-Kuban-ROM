.class final Lcom/sdgtl/mediahub/spr/common/fw;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestSignIn end !!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const-string v1, "hd_available_device"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ei;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ei;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ei;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestIdDeviceDomainsHardening Start !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "domain_method"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain_userid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ei;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x19

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->c(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    :goto_5c
    return-void

    :cond_5d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->i(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->j(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->k(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    :goto_92
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto :goto_5c

    :cond_af
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fw;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    goto :goto_92
.end method

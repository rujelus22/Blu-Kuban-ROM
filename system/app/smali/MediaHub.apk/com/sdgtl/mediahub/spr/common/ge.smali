.class final Lcom/sdgtl/mediahub/spr/common/ge;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    const v7, 0x7f0a00e1

    const v6, 0x7f0a00e0

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_158

    :cond_c
    :goto_c
    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const-string v2, ""

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v4, 0x7f0a0069

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->c(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/gf;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/common/gf;-><init>(Lcom/sdgtl/mediahub/spr/common/ge;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cp;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestIdDeviceRejoinDomainsHardening Start !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "domain_method"

    const-string v2, "01"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "domain_userid"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x19

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_c

    :cond_9a
    const-string v0, "MediaHubDRM"

    const-string v1, "[DRM] Leave Domain L2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->d:Lcom/sdgtl/mediahub/spr/common/gi;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/gi;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cp;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cp;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "leaveDomainResult == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v1, v6}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v2, v7}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_c

    :cond_10e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "delete_device_uid"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "old_user_id"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x1a

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_c

    :pswitch_140
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v1, v6}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v2, v7}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/ge;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_c

    nop

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_140
        :pswitch_d
    .end packed-switch
.end method

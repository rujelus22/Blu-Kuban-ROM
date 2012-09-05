.class final Lcom/sdgtl/mediahub/spr/common/fu;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fu;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fu;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    goto :goto_5

    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.singin.mediahub.Remove"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fu;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fu;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fu;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const-string v2, ""

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fu;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v4, 0x7f0a006f

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fu;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->c(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/fv;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/common/fv;-><init>(Lcom/sdgtl/mediahub/spr/common/fu;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_5

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method

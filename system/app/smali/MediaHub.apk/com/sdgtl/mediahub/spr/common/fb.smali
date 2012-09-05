.class final Lcom/sdgtl/mediahub/spr/common/fb;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fb;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fb;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fb;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const-string v2, ""

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fb;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    const v4, 0x7f0a0069

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fb;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->c(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/fc;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/common/fc;-><init>(Lcom/sdgtl/mediahub/spr/common/fb;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "domain_method"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain_userid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fb;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->d(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fb;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fb;->a:Lcom/sdgtl/mediahub/spr/common/LaunchFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->e(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x19

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/LaunchFlow;->a(Lcom/sdgtl/mediahub/spr/common/LaunchFlow;J)V

    return-void
.end method

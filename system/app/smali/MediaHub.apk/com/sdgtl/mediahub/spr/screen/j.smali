.class final Lcom/sdgtl/mediahub/spr/screen/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/Help;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/Help;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/j;)Lcom/sdgtl/mediahub/spr/screen/Help;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    if-eqz p2, :cond_54

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/Help;->a(Lcom/sdgtl/mediahub/spr/screen/Help;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const-string v2, "response_msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/Help;->b(Lcom/sdgtl/mediahub/spr/screen/Help;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/Help;->b(Lcom/sdgtl/mediahub/spr/screen/Help;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_38
    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/Help;->c(Lcom/sdgtl/mediahub/spr/screen/Help;)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/Help;->a:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    :cond_54
    :goto_54
    return-void

    :cond_55
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/Help;->a(Lcom/sdgtl/mediahub/spr/screen/Help;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/Help;->d(Lcom/sdgtl/mediahub/spr/screen/Help;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_54

    :try_start_66
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dc;

    if-eqz v0, :cond_d0

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dc;->a:I

    if-nez v1, :cond_be

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dc;->c:Ljava/lang/String;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/Help;->e(Lcom/sdgtl/mediahub/spr/screen/Help;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dc;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/k;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/k;-><init>(Lcom/sdgtl/mediahub/spr/screen/j;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/sdgtl/mediahub/spr/common/a;

    :cond_8d
    :goto_8d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/Help;->b(Lcom/sdgtl/mediahub/spr/screen/Help;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/Help;->b(Lcom/sdgtl/mediahub/spr/screen/Help;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_9e
    .catch Ljava/lang/ClassCastException; {:try_start_66 .. :try_end_9e} :catch_9f

    goto :goto_54

    :catch_9f
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_id"

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/Help;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/Help;->a(Lcom/sdgtl/mediahub/spr/screen/Help;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/Help;->a(Lcom/sdgtl/mediahub/spr/screen/Help;J)V

    goto :goto_54

    :cond_be
    :try_start_be
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dc;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dc;->a:I

    invoke-static {p1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/Help;->b:Landroid/os/Handler;

    invoke-static {v1, v0, v2}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_8d

    :cond_d0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    const v2, 0x7f0a01c8

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/Help;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/j;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/Help;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_e2
    .catch Ljava/lang/ClassCastException; {:try_start_be .. :try_end_e2} :catch_9f

    goto :goto_8d
.end method

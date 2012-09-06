.class Lcom/estrongs/android/pop/view/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bb;->a:Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bb;->a:Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;

    const-class v2, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bb;->a:Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_1a

    :goto_14
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bb;->a:Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->finish()V

    return-void

    :catch_1a
    move-exception v0

    goto :goto_14
.end method

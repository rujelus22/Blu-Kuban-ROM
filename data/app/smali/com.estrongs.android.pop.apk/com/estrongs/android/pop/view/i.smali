.class Lcom/estrongs/android/pop/view/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/i;->a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/i;->a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a(Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/i;->a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    const-class v2, Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/i;->a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->stopService(Landroid/content/Intent;)Z

    :goto_16
    iget-object v0, p0, Lcom/estrongs/android/pop/view/i;->a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->finish()V

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/i;->a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    invoke-static {v0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    sget-wide v1, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->b(J)V

    goto :goto_16
.end method

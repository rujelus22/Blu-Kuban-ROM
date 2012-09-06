.class Lcom/estrongs/android/pop/view/mj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/app/ProgressDialog;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/mh;->a(Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    goto :goto_15
.end method

.class Lcom/estrongs/android/pop/app/di;
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
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/app/dh;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/estrongs/android/pop/app/dh;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dh;->a(Landroid/app/ProgressDialog;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/dh;->a(Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1a

    :cond_16
    invoke-static {v1}, Lcom/estrongs/android/pop/app/dh;->a(Z)V

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-static {v1}, Lcom/estrongs/android/pop/app/dh;->a(Z)V

    goto :goto_19

    :catchall_1f
    move-exception v0

    invoke-static {v1}, Lcom/estrongs/android/pop/app/dh;->a(Z)V

    throw v0
.end method

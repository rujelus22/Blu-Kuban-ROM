.class Lcom/estrongs/android/pop/scanner/e;
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

    invoke-static {}, Lcom/estrongs/android/pop/scanner/c;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/estrongs/android/pop/scanner/c;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/scanner/c;->a(Landroid/app/ProgressDialog;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/scanner/c;->a(Z)V

    :cond_15
    return-void
.end method

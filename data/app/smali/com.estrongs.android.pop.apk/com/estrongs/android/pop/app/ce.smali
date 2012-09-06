.class Lcom/estrongs/android/pop/app/ce;
.super Landroid/app/AlertDialog;


# instance fields
.field a:Lcom/estrongs/android/pop/app/ca;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/ca;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ce;->a:Lcom/estrongs/android/pop/app/ca;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ce;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ce;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ca;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/ca;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ce;->a:Lcom/estrongs/android/pop/app/ca;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ca;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

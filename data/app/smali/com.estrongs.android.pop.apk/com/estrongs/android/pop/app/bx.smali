.class Lcom/estrongs/android/pop/app/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bx;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bx;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->f(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Lcom/estrongs/android/widget/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ag;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bx;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;Z)V

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

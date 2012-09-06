.class final Ldbxyzptlk/e/f;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Ldbxyzptlk/e/e;


# direct methods
.method constructor <init>(Ldbxyzptlk/e/e;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Ldbxyzptlk/e/f;->a:Ldbxyzptlk/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Ldbxyzptlk/e/f;->a:Ldbxyzptlk/e/e;

    const/4 v1, 0x0

    iput-object v1, v0, Ldbxyzptlk/e/e;->b:Ljava/lang/ref/WeakReference;

    .line 91
    iget-object v0, p0, Ldbxyzptlk/e/f;->a:Ldbxyzptlk/e/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ldbxyzptlk/e/e;->a:Z

    .line 92
    iget-object v0, p0, Ldbxyzptlk/e/f;->a:Ldbxyzptlk/e/e;

    invoke-static {v0}, Ldbxyzptlk/e/e;->a(Ldbxyzptlk/e/e;)Lcom/dropbox/android/taskqueue/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->b()V

    .line 93
    return-void
.end method

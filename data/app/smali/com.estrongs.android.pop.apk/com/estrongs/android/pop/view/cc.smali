.class Lcom/estrongs/android/pop/view/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cc;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cc;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->u()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/pop/view/cc;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q(Lcom/estrongs/android/pop/view/FileExplorerActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_28

    move v0, v1

    :goto_20
    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cc;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V

    goto :goto_e

    :cond_28
    const/4 v0, 0x0

    goto :goto_20
.end method

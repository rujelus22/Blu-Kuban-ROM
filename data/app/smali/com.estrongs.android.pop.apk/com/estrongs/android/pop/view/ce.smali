.class Lcom/estrongs/android/pop/view/ce;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ce;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ce;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ce;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Z)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ce;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ce;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Z)V

    goto :goto_1e
.end method

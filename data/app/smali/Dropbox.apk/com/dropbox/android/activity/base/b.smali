.class final Lcom/dropbox/android/activity/base/b;
.super Landroid/content/BroadcastReceiver;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/base/a;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/base/a;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dropbox/android/activity/base/b;->a:Lcom/dropbox/android/activity/base/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 86
    const-string v0, "com.dropbox.android.filemanager.ApiManager.ACTION_UNLINKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 87
    iget-object v0, p0, Lcom/dropbox/android/activity/base/b;->a:Lcom/dropbox/android/activity/base/a;

    invoke-static {v0}, Lcom/dropbox/android/activity/base/a;->a(Lcom/dropbox/android/activity/base/a;)Lcom/dropbox/android/activity/base/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/dropbox/android/activity/base/e;->e_()Z

    move-result v0

    if-nez v0, :cond_31

    .line 88
    const-string v0, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 89
    iget-object v0, p0, Lcom/dropbox/android/activity/base/b;->a:Lcom/dropbox/android/activity/base/a;

    invoke-static {v0}, Lcom/dropbox/android/activity/base/a;->b(Lcom/dropbox/android/activity/base/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 103
    :cond_31
    :goto_31
    return-void

    .line 91
    :cond_32
    invoke-static {}, Lcom/dropbox/android/activity/base/a;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dropbox/android/activity/base/c;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/base/c;-><init>(Lcom/dropbox/android/activity/base/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_31

    .line 101
    :cond_42
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected broadcast in BaseHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class Lcom/estrongs/android/widget/o;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/FileBrowserDialog;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/widget/o;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    iput-object p2, p0, Lcom/estrongs/android/widget/o;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/o;)Lcom/estrongs/android/widget/FileBrowserDialog;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/o;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/widget/o;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/widget/o;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_29

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/widget/o;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->d(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/estrongs/android/widget/o;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->d(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    goto :goto_0

    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    return-void

    :cond_35
    iget-object v1, p0, Lcom/estrongs/android/widget/o;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/d/n;->a(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/widget/o;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->e(Lcom/estrongs/android/widget/FileBrowserDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/o;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/widget/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/p;-><init>(Lcom/estrongs/android/widget/o;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

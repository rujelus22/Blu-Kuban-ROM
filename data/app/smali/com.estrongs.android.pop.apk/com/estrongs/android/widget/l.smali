.class Lcom/estrongs/android/widget/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/FileBrowserDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/l;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/widget/l;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->f(Lcom/estrongs/android/widget/FileBrowserDialog;)Lcom/estrongs/android/widget/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/w;->b()V

    iget-object v0, p0, Lcom/estrongs/android/widget/l;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->h(Lcom/estrongs/android/widget/FileBrowserDialog;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/estrongs/android/widget/l;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    :try_start_18
    iget-object v0, p0, Lcom/estrongs/android/widget/l;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/widget/l;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v0

    const-string v2, "exit"

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/widget/l;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->d(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v1

    :cond_36
    return-void

    :catchall_37
    move-exception v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_37

    throw v0
.end method

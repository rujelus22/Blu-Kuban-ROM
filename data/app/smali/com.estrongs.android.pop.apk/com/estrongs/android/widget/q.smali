.class Lcom/estrongs/android/widget/q;
.super Lcom/estrongs/android/widget/w;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/FileBrowserDialog;

.field private final synthetic h:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/Context;Lcom/estrongs/android/widget/al;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    iput-object p4, p0, Lcom/estrongs/android/widget/q;->h:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/widget/w;-><init>(Landroid/content/Context;Lcom/estrongs/android/widget/al;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/q;)Lcom/estrongs/android/widget/FileBrowserDialog;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/io/File;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->h(Lcom/estrongs/android/widget/FileBrowserDialog;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_36

    :cond_1a
    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->i(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->j(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->k(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method protected a(Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v0, v0, Lcom/estrongs/android/widget/FileBrowserDialog;->c:Lcom/estrongs/android/widget/ac;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/widget/ac;->a(Ljava/io/File;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->b()V

    return-void
.end method

.method protected b(Ljava/io/File;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->i(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v0, v0, Lcom/estrongs/android/widget/FileBrowserDialog;->f:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->j(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->k(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_29
    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0, v2}, Lcom/estrongs/android/widget/FileBrowserDialog;->a(Lcom/estrongs/android/widget/FileBrowserDialog;Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->h(Lcom/estrongs/android/widget/FileBrowserDialog;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->h:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/widget/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/r;-><init>(Lcom/estrongs/android/widget/q;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_42
    return-void

    :cond_43
    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->j(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->k(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_29
.end method

.method protected c(Ljava/io/File;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->i(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-static {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->f(Lcom/estrongs/android/widget/FileBrowserDialog;)Lcom/estrongs/android/widget/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/w;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->b()V

    :cond_20
    return-void
.end method

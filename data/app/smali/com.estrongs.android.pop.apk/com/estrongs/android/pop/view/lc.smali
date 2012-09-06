.class Lcom/estrongs/android/pop/view/lc;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/lb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/lb;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lc;->a:Lcom/estrongs/android/pop/view/lb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lc;->a:Lcom/estrongs/android/pop/view/lb;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/lb;->a(Lcom/estrongs/android/pop/view/lb;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/lc;->a:Lcom/estrongs/android/pop/view/lb;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/lb;->b(Lcom/estrongs/android/pop/view/lb;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/lc;->a:Lcom/estrongs/android/pop/view/lb;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/lb;->f(Lcom/estrongs/android/pop/view/lb;)Lcom/estrongs/android/pop/view/Property;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/view/Property;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/lc;->a:Lcom/estrongs/android/pop/view/lb;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/lb;->c(Lcom/estrongs/android/pop/view/lb;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/lc;->a:Lcom/estrongs/android/pop/view/lb;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/lb;->f(Lcom/estrongs/android/pop/view/lb;)Lcom/estrongs/android/pop/view/Property;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/view/Property;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lc;->a:Lcom/estrongs/android/pop/view/lb;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/lb;->f(Lcom/estrongs/android/pop/view/lb;)Lcom/estrongs/android/pop/view/Property;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lc;->a:Lcom/estrongs/android/pop/view/lb;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/lb;->d(Lcom/estrongs/android/pop/view/lb;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/lc;->a:Lcom/estrongs/android/pop/view/lb;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/lb;->e(Lcom/estrongs/android/pop/view/lb;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/Property;->a(Lcom/estrongs/android/pop/view/Property;Landroid/widget/TextView;J)V
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_6e

    :cond_6c
    monitor-exit p0

    return-void

    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

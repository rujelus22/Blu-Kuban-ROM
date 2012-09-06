.class Lcom/estrongs/android/util/ai;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/util/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/util/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/util/ai;->a:Lcom/estrongs/android/util/ah;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/util/ai;->a:Lcom/estrongs/android/util/ah;

    invoke-static {v0}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/ah;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/util/ai;->a:Lcom/estrongs/android/util/ah;

    invoke-static {v2}, Lcom/estrongs/android/util/ah;->b(Lcom/estrongs/android/util/ah;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    iget-object v2, p0, Lcom/estrongs/android/util/ai;->a:Lcom/estrongs/android/util/ah;

    invoke-static {v2}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/ah;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/estrongs/android/util/ai;->a:Lcom/estrongs/android/util/ah;

    invoke-static {v2}, Lcom/estrongs/android/util/ah;->b(Lcom/estrongs/android/util/ah;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    iget-object v2, p0, Lcom/estrongs/android/util/ai;->a:Lcom/estrongs/android/util/ah;

    invoke-static {v2}, Lcom/estrongs/android/util/ah;->c(Lcom/estrongs/android/util/ah;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_33
    iget-object v3, p0, Lcom/estrongs/android/util/ai;->a:Lcom/estrongs/android/util/ah;

    invoke-static {v3}, Lcom/estrongs/android/util/ah;->c(Lcom/estrongs/android/util/ah;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_59

    iget-object v0, p0, Lcom/estrongs/android/util/ai;->a:Lcom/estrongs/android/util/ah;

    invoke-static {v0}, Lcom/estrongs/android/util/ah;->c(Lcom/estrongs/android/util/ah;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/util/ai;->a:Lcom/estrongs/android/util/ah;

    invoke-static {v1}, Lcom/estrongs/android/util/ah;->d(Lcom/estrongs/android/util/ah;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    :cond_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_33 .. :try_end_5a} :catchall_66

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/util/ai;->a:Lcom/estrongs/android/util/ah;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/util/ah;->b(Ljava/lang/String;Z)V

    goto :goto_4

    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v0
.end method

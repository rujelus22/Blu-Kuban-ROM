.class public LY/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Ljava/util/Vector;

.field protected b:Ljava/util/Vector;

.field protected c:Ljava/lang/Object;

.field protected final d:LP/a;

.field protected e:LX/c;

.field protected f:[Ljava/lang/Thread;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field private final i:Lcom/google/gmm/debug/c;

.field private j:I

.field private k:I

.field private l:I

.field private final m:Ljava/util/Hashtable;

.field private final n:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(LX/c;Ljava/lang/String;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LY/c;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LY/c;->b:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LY/c;->c:Ljava/lang/Object;

    const/16 v0, 0x7f

    iput v0, p0, LY/c;->j:I

    const/16 v0, 0xff

    iput v0, p0, LY/c;->k:I

    iput v1, p0, LY/c;->l:I

    iput-boolean v1, p0, LY/c;->h:Z

    iput-object p1, p0, LY/c;->e:LX/c;

    iput-object p2, p0, LY/c;->g:Ljava/lang/String;

    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, LY/c;->f:[Ljava/lang/Thread;

    invoke-static {}, LP/b;->a()LP/b;

    move-result-object v0

    invoke-virtual {v0}, LP/b;->i()LP/a;

    move-result-object v0

    iput-object v0, p0, LY/c;->d:LP/a;

    iput-object v2, p0, LY/c;->m:Ljava/util/Hashtable;

    iput-object v2, p0, LY/c;->n:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gmm/debug/c;->a(Ljava/lang/Class;)Lcom/google/gmm/debug/c;

    move-result-object v0

    iput-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    return-void
.end method

.method private d(LY/a;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method private e(LY/a;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, LY/c;->j:I

    return v0
.end method

.method a(LY/a;)V
    .registers 4

    invoke-virtual {p1}, LY/a;->i()V

    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p1}, LY/a;->e()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :goto_d
    :pswitch_d
    monitor-exit v1

    return-void

    :pswitch_f
    invoke-virtual {p1}, LY/a;->g()V

    goto :goto_d

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0

    :pswitch_16
    const/4 v0, 0x4

    :try_start_17
    invoke-virtual {p1, v0}, LY/a;->a(I)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_13

    goto :goto_d

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_16
    .end packed-switch
.end method

.method a(LY/b;)V
    .registers 9

    iget-object v4, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p1}, LY/b;->m()I

    move-result v5

    const/4 v3, 0x0

    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_e
    if-ge v3, v1, :cond_2d

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY/b;

    invoke-virtual {v0}, LY/b;->m()I

    move-result v0

    if-gt v5, v0, :cond_2a

    add-int/lit8 v0, v2, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_27
    move v3, v1

    move v1, v0

    goto :goto_e

    :cond_2a
    move v0, v2

    move v1, v3

    goto :goto_27

    :cond_2d
    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1}, LY/b;->j()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LY/b;->a(I)V

    iget-object v0, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    return-void

    :catchall_40
    move-exception v0

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v0
.end method

.method a(LY/d;)V
    .registers 12

    iget-object v4, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p1}, LY/d;->n()J

    move-result-wide v5

    const/4 v3, 0x0

    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_e
    if-ge v3, v1, :cond_2f

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY/d;

    invoke-virtual {v0}, LY/d;->n()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2c

    add-int/lit8 v0, v2, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_29
    move v3, v1

    move v1, v0

    goto :goto_e

    :cond_2c
    move v0, v2

    move v1, v3

    goto :goto_29

    :cond_2f
    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LY/d;->a(I)V

    iget-object v0, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public b(LY/a;)I
    .registers 4

    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, LY/a;->c()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected b()Z
    .registers 6

    const/4 v1, 0x3

    iget-boolean v0, p0, LY/c;->h:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForSomethingToDo(): task queue empty @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LY/c;->d:LP/a;

    invoke-interface {v2}, LP/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_33
    :try_start_33
    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const-string v1, "waitForSomethingToDo(): timer task queue empty"

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_4b
    iget-object v0, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_50} :catch_b9

    :cond_50
    :goto_50
    iget-boolean v0, p0, LY/c;->h:Z

    return v0

    :cond_53
    :try_start_53
    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY/d;

    iget-object v1, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForSomethingToDo(): scheduled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LY/d;->n()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_81
    invoke-virtual {v0}, LY/d;->n()J

    move-result-wide v0

    iget-object v2, p0, LY/c;->d:LP/a;

    invoke-interface {v2}, LP/a;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-object v2, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitForSomethingToDo(): #1 delta = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_ad
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_50

    iget-object v2, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_b8
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_b8} :catch_b9

    goto :goto_50

    :catch_b9
    move-exception v0

    iget-object v1, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const-string v2, "exception thrown while waiting"

    invoke-virtual {v1, v2, v0}, Lcom/google/gmm/debug/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_50
.end method

.method protected c()LY/b;
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-virtual {v0, v8}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): moving expired tasks @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LY/c;->d:LP/a;

    invoke-interface {v3}, LP/a;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): timer queue length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTaskToRun(): priority queue length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_65
    :goto_65
    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY/d;

    iget-object v2, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-virtual {v2, v8}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-object v2, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const-string v3, "getNextTaskToRun(): timerTask = "

    invoke-virtual {v2, v3, v0}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_84
    invoke-virtual {v0}, LY/d;->n()J

    move-result-wide v2

    iget-object v4, p0, LY/c;->d:LP/a;

    invoke-interface {v4}, LP/a;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-virtual {v4, v8}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v4

    if-eqz v4, :cond_d1

    iget-object v4, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNextTaskToRun(): current = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, LY/c;->d:LP/a;

    invoke-interface {v6}, LP/a;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    iget-object v4, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNextTaskToRun(): scheduled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, LY/d;->n()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_d1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_101

    iget-object v4, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-virtual {v4, v8}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v4

    if-eqz v4, :cond_f7

    iget-object v4, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gettNextTaskToRun(): #2 delta = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_f7
    iget-object v2, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0, v0}, LY/c;->a(LY/b;)V

    goto/16 :goto_65

    :cond_101
    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-virtual {v0, v8}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_127

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTask(): getting available task @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LY/c;->d:LP/a;

    invoke-interface {v3}, LP/a;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_127
    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_140

    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY/b;

    invoke-virtual {v0, v8}, LY/b;->a(I)V

    iget-object v1, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_13f
    return-object v0

    :cond_140
    move-object v0, v1

    goto :goto_13f
.end method

.method c(LY/a;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    invoke-virtual {p1}, LY/a;->e()I

    move-result v3

    packed-switch v3, :pswitch_data_3a

    monitor-exit v2

    move v0, v1

    :goto_e
    return v0

    :pswitch_f
    iget-object v1, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LY/a;->a(I)V

    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_e

    :catchall_1f
    move-exception v0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v0

    :pswitch_22
    :try_start_22
    iget-object v1, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LY/a;->a(I)V

    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_e

    :pswitch_32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LY/a;->a(I)V

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_1f

    move v0, v1

    goto :goto_e

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_22
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method public d()V
    .registers 7

    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, LY/c;->h:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, LY/c;->h:Z

    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, LY/c;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, LY/c;->f:[Ljava/lang/Thread;

    iget-object v3, p0, LY/c;->e:LX/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LY/c;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, LX/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, LY/c;->f:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3d
    monitor-exit v1

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public run()V
    .registers 7

    const/4 v5, 0x3

    const/4 v0, 0x0

    :cond_2
    :goto_2
    iget-object v1, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-virtual {v1, v5}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): loop [running="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, LY/c;->h:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_2a
    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_4d

    :try_start_2f
    iget-object v2, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const-string v3, "run(): clean up"

    invoke-virtual {v2, v3}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_3f
    invoke-virtual {v0}, LY/b;->e()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_78

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LY/b;->a(I)V

    invoke-virtual {v0}, LY/b;->g()V

    :cond_4d
    :goto_4d
    invoke-virtual {p0}, LY/c;->b()Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const-string v2, "run(): exiting loop"

    invoke-virtual {v0, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_2f .. :try_end_64} :catchall_83

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-virtual {v0, v5}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const-string v1, "run(): end "

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    return-void

    :cond_78
    :try_start_78
    invoke-virtual {v0}, LY/b;->e()I

    move-result v2

    if-ne v2, v5, :cond_4d

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LY/b;->a(I)V

    goto :goto_4d

    :catchall_83
    move-exception v0

    monitor-exit v1
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_83

    throw v0

    :cond_86
    :try_start_86
    invoke-virtual {p0}, LY/c;->c()LY/b;

    move-result-object v0

    iget-object v2, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-object v2, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-direct {p0, v0}, LY/c;->d(LY/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_86 .. :try_end_9d} :catchall_83

    iget-object v1, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-virtual {v1, v5}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_c3

    iget-object v1, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): running task @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LY/c;->d:LP/a;

    invoke-interface {v3}, LP/a;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_c3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, LY/b;->k()V

    :try_start_c8
    invoke-virtual {v0}, LY/b;->h()V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_cb} :catch_e1

    :goto_cb
    iget-object v1, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-virtual {v1, v5}, Lcom/google/gmm/debug/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_dc

    iget-object v1, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    invoke-direct {p0, v0}, LY/c;->e(LY/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    :cond_dc
    invoke-virtual {v0}, LY/b;->l()V

    goto/16 :goto_2

    :catch_e1
    move-exception v1

    iget-object v2, p0, LY/c;->i:Lcom/google/gmm/debug/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runtime exception thrown by task ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/gmm/debug/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_cb
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

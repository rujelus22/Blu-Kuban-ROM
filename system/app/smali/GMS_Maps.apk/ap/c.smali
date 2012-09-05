.class public Lap/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Ljava/util/Vector;

.field protected b:Ljava/util/Vector;

.field protected c:Ljava/lang/Object;

.field protected final d:Laf/a;

.field protected e:Lao/d;

.field protected f:[Ljava/lang/Thread;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field private i:I

.field private j:I

.field private k:I

.field private final l:Ljava/util/Hashtable;

.field private final m:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lao/d;)V
    .registers 4

    const-string v0, "TaskRunner"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lap/c;-><init>(Lao/d;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lao/d;Ljava/lang/String;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lap/c;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lap/c;->b:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lap/c;->c:Ljava/lang/Object;

    const/16 v0, 0x7f

    iput v0, p0, Lap/c;->i:I

    const/16 v0, 0xff

    iput v0, p0, Lap/c;->j:I

    iput v1, p0, Lap/c;->k:I

    iput-boolean v1, p0, Lap/c;->h:Z

    iput-object p1, p0, Lap/c;->e:Lao/d;

    iput-object p2, p0, Lap/c;->g:Ljava/lang/String;

    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, Lap/c;->f:[Ljava/lang/Thread;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    iput-object v0, p0, Lap/c;->d:Laf/a;

    iput-object v2, p0, Lap/c;->l:Ljava/util/Hashtable;

    iput-object v2, p0, Lap/c;->m:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lap/c;->i:I

    return v0
.end method

.method a(Lap/a;)V
    .registers 4

    iget-object v1, p0, Lap/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lap/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    :goto_a
    :pswitch_a
    monitor-exit v1

    return-void

    :pswitch_c
    invoke-virtual {p1}, Lap/a;->h()V

    goto :goto_a

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0

    :pswitch_13
    const/4 v0, 0x4

    :try_start_14
    invoke-virtual {p1, v0}, Lap/a;->a(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_10

    goto :goto_a

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method a(Lap/b;)V
    .registers 9

    iget-object v4, p0, Lap/c;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p1}, Lap/b;->j()I

    move-result v5

    const/4 v3, 0x0

    iget-object v0, p0, Lap/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_e
    if-ge v3, v1, :cond_2d

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lap/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lap/b;

    invoke-virtual {v0}, Lap/b;->j()I

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
    iget-object v0, p0, Lap/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lap/b;->a(I)V

    iget-object v0, p0, Lap/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method a(Lap/d;)V
    .registers 12

    iget-object v4, p0, Lap/c;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p1}, Lap/d;->k()J

    move-result-wide v5

    const/4 v3, 0x0

    iget-object v0, p0, Lap/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_e
    if-ge v3, v1, :cond_2f

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lap/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lap/d;

    invoke-virtual {v0}, Lap/d;->k()J

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
    iget-object v0, p0, Lap/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lap/d;->a(I)V

    iget-object v0, p0, Lap/c;->c:Ljava/lang/Object;

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

.method public b(Lap/a;)I
    .registers 4

    iget-object v1, p0, Lap/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lap/a;->d()I

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
    .registers 5

    iget-boolean v0, p0, Lap/c;->h:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lap/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_c
    iget-object v0, p0, Lap/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lap/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_19} :catch_3c

    :cond_19
    :goto_19
    iget-boolean v0, p0, Lap/c;->h:Z

    return v0

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lap/c;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lap/d;

    invoke-virtual {v0}, Lap/d;->k()J

    move-result-wide v0

    iget-object v2, p0, Lap/c;->d:Laf/a;

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_19

    iget-object v2, p0, Lap/c;->c:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_3b} :catch_3c

    goto :goto_19

    :catch_3c
    move-exception v0

    const-string v1, "exception thrown while waiting"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method protected c()Lap/b;
    .registers 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v0, p0, Lap/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lap/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lap/d;

    invoke-virtual {v0}, Lap/d;->k()J

    move-result-wide v2

    iget-object v4, p0, Lap/c;->d:Laf/a;

    invoke-interface {v4}, Laf/a;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2c

    iget-object v2, p0, Lap/c;->b:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0, v0}, Lap/c;->a(Lap/b;)V

    goto :goto_2

    :cond_2c
    iget-object v0, p0, Lap/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lap/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lap/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lap/b;->a(I)V

    iget-object v1, p0, Lap/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_45
    return-object v0

    :cond_46
    move-object v0, v1

    goto :goto_45
.end method

.method c(Lap/a;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lap/c;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    invoke-virtual {p1}, Lap/a;->f()I

    move-result v3

    packed-switch v3, :pswitch_data_3a

    monitor-exit v2

    move v0, v1

    :goto_e
    return v0

    :pswitch_f
    iget-object v1, p0, Lap/c;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lap/a;->a(I)V

    iget-object v1, p0, Lap/c;->c:Ljava/lang/Object;

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
    iget-object v1, p0, Lap/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lap/a;->a(I)V

    iget-object v1, p0, Lap/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_e

    :pswitch_32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lap/a;->a(I)V

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

    iget-object v1, p0, Lap/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lap/c;->h:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lap/c;->h:Z

    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lap/c;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, Lap/c;->f:[Ljava/lang/Thread;

    iget-object v3, p0, Lap/c;->e:Lao/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lap/c;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lao/d;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lap/c;->f:[Ljava/lang/Thread;

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

.method public e()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lap/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Lap/c;->h:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    const/4 v2, 0x0

    iput-boolean v2, p0, Lap/c;->h:Z

    :goto_c
    iget-object v2, p0, Lap/c;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Lap/c;->f:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    iget-object v0, p0, Lap/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1e
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public run()V
    .registers 5

    const/4 v0, 0x0

    :cond_1
    :goto_1
    iget-object v1, p0, Lap/c;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_14

    :try_start_6
    invoke-virtual {v0}, Lap/b;->f()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lap/b;->a(I)V

    invoke-virtual {v0}, Lap/b;->h()V

    :cond_14
    :goto_14
    invoke-virtual {p0}, Lap/c;->b()Z

    move-result v0

    if-nez v0, :cond_2b

    monitor-exit v1

    return-void

    :cond_1c
    invoke-virtual {v0}, Lap/b;->f()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lap/b;->a(I)V

    goto :goto_14

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lap/c;->c()Lap/b;

    move-result-object v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    if-eqz v0, :cond_1

    :try_start_32
    invoke-virtual {v0}, Lap/b;->i()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_1

    :catch_36
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runtime exception thrown by task ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

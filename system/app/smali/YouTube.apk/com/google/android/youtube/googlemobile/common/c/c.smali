.class public final Lcom/google/android/youtube/googlemobile/common/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Ljava/util/Vector;

.field protected b:Ljava/util/Vector;

.field protected c:Ljava/lang/Object;

.field protected final d:Lcom/google/android/youtube/googlemobile/common/a;

.field protected e:Lcom/google/android/youtube/googlemobile/common/b/c;

.field protected f:[Ljava/lang/Thread;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/b/c;Ljava/lang/String;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->b:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    const/16 v0, 0x7f

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->i:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->j:I

    iput v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->k:I

    iput-boolean v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->h:Z

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->e:Lcom/google/android/youtube/googlemobile/common/b/c;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->g:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->f:[Ljava/lang/Thread;

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/b;->a()Lcom/google/android/youtube/googlemobile/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/b;->i()Lcom/google/android/youtube/googlemobile/common/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->d:Lcom/google/android/youtube/googlemobile/common/a;

    return-void
.end method

.method private d()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_8
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_15} :catch_38

    :cond_15
    :goto_15
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->h:Z

    return v0

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/common/c/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/d;->i()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->d:Lcom/google/android/youtube/googlemobile/common/a;

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/common/a;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_15

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_37} :catch_38

    goto :goto_15

    :catch_38
    move-exception v0

    goto :goto_15
.end method

.method private e()Lcom/google/android/youtube/googlemobile/common/c/b;
    .registers 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/common/c/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/d;->i()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->d:Lcom/google/android/youtube/googlemobile/common/a;

    invoke-interface {v4}, Lcom/google/android/youtube/googlemobile/common/a;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->b:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/common/c/c;->a(Lcom/google/android/youtube/googlemobile/common/c/b;)V

    goto :goto_2

    :cond_2c
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/common/c/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/common/c/b;->a(I)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_45
    return-object v0

    :cond_46
    move-object v0, v1

    goto :goto_45
.end method


# virtual methods
.method final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->i:I

    return v0
.end method

.method final a(Lcom/google/android/youtube/googlemobile/common/c/a;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/common/c/a;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    :goto_a
    :pswitch_a
    monitor-exit v1

    return-void

    :pswitch_c
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/common/c/a;->f()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    goto :goto_a

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_13
    const/4 v0, 0x4

    :try_start_14
    invoke-virtual {p1, v0}, Lcom/google/android/youtube/googlemobile/common/c/a;->a(I)V
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

.method final a(Lcom/google/android/youtube/googlemobile/common/c/b;)V
    .registers 8

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/common/c/b;->h()I

    move-result v5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v1

    move v1, v0

    :goto_10
    if-ge v3, v1, :cond_2a

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/common/c/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->h()I

    move-result v0

    if-gt v5, v0, :cond_28

    add-int/lit8 v0, v2, 0x1

    move v3, v0

    goto :goto_10

    :cond_28
    move v1, v2

    goto :goto_10

    :cond_2a
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->a(I)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method final a(Lcom/google/android/youtube/googlemobile/common/c/d;)V
    .registers 11

    iget-object v4, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/common/c/d;->i()J

    move-result-wide v5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v1

    move v1, v0

    :goto_10
    if-ge v3, v1, :cond_2c

    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/common/c/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/d;->i()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2a

    add-int/lit8 v0, v2, 0x1

    move v3, v0

    goto :goto_10

    :cond_2a
    move v1, v2

    goto :goto_10

    :cond_2c
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/googlemobile/common/c/d;->a(I)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final b(Lcom/google/android/youtube/googlemobile/common/c/a;)I
    .registers 4

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/common/c/a;->c()I

    move-result v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .registers 7

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->h:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->h:Z

    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->f:[Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->e:Lcom/google/android/youtube/googlemobile/common/b/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lcom/google/android/youtube/googlemobile/common/b/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->f:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->h:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->h:Z

    :goto_c
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->f:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final c(Lcom/google/android/youtube/googlemobile/common/c/a;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    invoke-virtual {p1}, Lcom/google/android/youtube/googlemobile/common/c/a;->d()I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1f

    move-result v3

    packed-switch v3, :pswitch_data_3a

    monitor-exit v2

    move v0, v1

    :goto_e
    return v0

    :pswitch_f
    :try_start_f
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/googlemobile/common/c/a;->a(I)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1f

    goto :goto_e

    :catchall_1f
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_22
    :try_start_22
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/googlemobile/common/c/a;->a(I)V

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_e

    :pswitch_32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/googlemobile/common/c/a;->a(I)V

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

.method public final run()V
    .registers 5

    const/4 v0, 0x0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/c/c;->c:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_10

    :try_start_6
    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->d()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->f()V

    :cond_10
    :goto_10
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/c/c;->d()Z

    move-result v0

    if-nez v0, :cond_20

    monitor-exit v1

    return-void

    :cond_18
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/googlemobile/common/c/b;->a(I)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    goto :goto_10

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_20
    :try_start_20
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/c/c;->e()Lcom/google/android/youtube/googlemobile/common/c/b;

    move-result-object v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    if-eqz v0, :cond_1

    :try_start_27
    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/b;->g()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_1

    :catch_2b
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

    invoke-static {v2, v1}, Lcom/google/android/youtube/googlemobile/debug/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

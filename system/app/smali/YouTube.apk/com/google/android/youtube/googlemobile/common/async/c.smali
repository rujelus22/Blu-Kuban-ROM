.class public final Lcom/google/android/youtube/googlemobile/common/async/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/lang/Object;

.field private c:Lcom/google/android/youtube/googlemobile/common/c/c;

.field private d:Lcom/google/android/youtube/googlemobile/common/b/c;

.field private e:Lcom/google/android/youtube/googlemobile/common/io/h;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/Thread;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/c/c;Lcom/google/android/youtube/googlemobile/common/b/c;Lcom/google/android/youtube/googlemobile/common/io/h;Ljava/lang/String;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->a:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->c:Lcom/google/android/youtube/googlemobile/common/c/c;

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->d:Lcom/google/android/youtube/googlemobile/common/b/c;

    iput-object p3, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->e:Lcom/google/android/youtube/googlemobile/common/io/h;

    iput-object p4, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->f:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->g:[Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/common/async/c;)Lcom/google/android/youtube/googlemobile/common/c/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->c:Lcom/google/android/youtube/googlemobile/common/c/c;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/common/async/c;Ljava/lang/String;Z)Lcom/google/android/youtube/googlemobile/common/io/e;
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->e:Lcom/google/android/youtube/googlemobile/common/io/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/googlemobile/common/io/h;->a(Ljava/lang/String;Z)Lcom/google/android/youtube/googlemobile/common/io/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/common/async/c;Lcom/google/android/youtube/googlemobile/common/async/d;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/common/async/c;->a(Lcom/google/android/youtube/googlemobile/common/async/d;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/google/android/youtube/googlemobile/common/async/d;)Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_17

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/google/android/youtube/googlemobile/common/async/c;)Lcom/google/android/youtube/googlemobile/common/io/h;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->e:Lcom/google/android/youtube/googlemobile/common/io/h;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/googlemobile/common/async/b;
    .registers 3

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/async/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/googlemobile/common/async/d;-><init>(Lcom/google/android/youtube/googlemobile/common/async/c;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()V
    .registers 7

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->h:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->h:Z

    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->g:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->g:[Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->d:Lcom/google/android/youtube/googlemobile/common/b/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->f:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->g:[Ljava/lang/Thread;

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

.method public final b()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->h:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->h:Z

    :goto_c
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->g:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->g:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->b:Ljava/lang/Object;

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

.method public final run()V
    .registers 5

    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    move-result v0

    if-nez v0, :cond_14

    :try_start_b
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_3

    :catch_11
    move-exception v0

    :try_start_12
    monitor-exit v1

    :goto_13
    return-void

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->h:Z

    if-nez v0, :cond_1d

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_13

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->a:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/common/async/d;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/async/c;->a:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_1a

    :try_start_2d
    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/async/d;->run()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_0

    :catch_31
    move-exception v0

    goto :goto_0
.end method

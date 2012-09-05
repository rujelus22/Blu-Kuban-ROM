.class public final Lcom/google/android/youtube/googlemobile/masf/d;
.super Ljava/io/InputStream;


# instance fields
.field protected a:Ljava/io/InputStream;

.field protected b:Lcom/google/android/youtube/googlemobile/masf/b;

.field protected c:I

.field protected d:Ljava/lang/Object;

.field protected volatile e:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->a:Ljava/io/InputStream;

    iput p2, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    return-void
.end method

.method private a([BII)I
    .registers 6

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    if-lez v1, :cond_21

    :try_start_5
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->a:Ljava/io/InputStream;

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_18

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    :cond_18
    if-lez v0, :cond_1e

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    if-nez v1, :cond_21

    :cond_1e
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/d;->c()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_22

    :cond_21
    return v0

    :catch_22
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/d;->c()V

    throw v0
.end method

.method private c()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->e:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->e:Z

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()I
    .registers 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    if-lez v1, :cond_18

    :try_start_5
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_15

    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    if-nez v1, :cond_18

    :cond_15
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/d;->c()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_19

    :cond_18
    return v0

    :catch_19
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/d;->c()V

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->e:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-nez v0, :cond_f

    :try_start_7
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_3

    :catch_d
    move-exception v0

    goto :goto_3

    :cond_f
    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->b:Lcom/google/android/youtube/googlemobile/masf/b;

    if-eqz v0, :cond_b

    :cond_9
    monitor-exit p0

    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/b;

    const/high16 v1, 0x1

    iget v2, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/masf/b;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->b:Lcom/google/android/youtube/googlemobile/masf/b;

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_3d

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_1f
    :try_start_1f
    iget v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->c:I

    if-lez v1, :cond_4f

    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/youtube/googlemobile/masf/d;->a([BII)I

    move-result v1

    if-lez v1, :cond_40

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/d;->b:Lcom/google/android/youtube/googlemobile/masf/b;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/googlemobile/masf/b;->a([BI)V
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_48
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_30} :catch_31

    goto :goto_1f

    :catch_31
    move-exception v0

    :try_start_32
    const-string v1, "DelimitedInputStream"

    invoke-static {v1, v0}, Lcom/google/android/youtube/googlemobile/common/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_48

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->b:Lcom/google/android/youtube/googlemobile/masf/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b;->b()V

    goto :goto_a

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_40
    :try_start_40
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_48
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_48} :catch_31

    :catchall_48
    move-exception v0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/d;->b:Lcom/google/android/youtube/googlemobile/masf/b;

    invoke-virtual {v1}, Lcom/google/android/youtube/googlemobile/masf/b;->b()V

    throw v0

    :cond_4f
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->b:Lcom/google/android/youtube/googlemobile/masf/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b;->b()V

    goto :goto_a
.end method

.method public final declared-synchronized close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/d;->read()I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    move-result v0

    if-gez v0, :cond_4

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->b:Lcom/google/android/youtube/googlemobile/masf/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->b:Lcom/google/android/youtube/googlemobile/masf/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/b;->a()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/d;->d()I
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final read([B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/youtube/googlemobile/masf/d;->read([BII)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized read([BII)I
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->b:Lcom/google/android/youtube/googlemobile/masf/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/d;->b:Lcom/google/android/youtube/googlemobile/masf/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/googlemobile/masf/b;->a([BII)I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/googlemobile/masf/d;->a([BII)I
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

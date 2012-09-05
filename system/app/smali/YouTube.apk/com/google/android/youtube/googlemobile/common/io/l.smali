.class public final Lcom/google/android/youtube/googlemobile/common/io/l;
.super Ljava/io/InputStream;


# instance fields
.field a:[Ljava/io/InputStream;

.field b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/io/l;-><init>([Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/io/l;-><init>([Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>([Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    return-void
.end method

.method private a()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    aget-object v0, v0, v1

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    :try_start_c
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_29

    :goto_15
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    aput-object v3, v0, v1

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    array-length v1, v1

    if-lt v0, v1, :cond_28

    iput-object v3, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    :cond_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_15
.end method


# virtual methods
.method public final declared-synchronized available()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/l;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .registers 5

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_20

    if-nez v0, :cond_8

    :cond_6
    monitor-exit p0

    return-void

    :cond_8
    const/4 v0, 0x0

    :goto_9
    :try_start_9
    iget v2, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    array-length v3, v3
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_20

    if-ge v2, v3, :cond_26

    :try_start_10
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    iget v3, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_23

    :goto_19
    :try_start_19
    iget v2, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_20

    goto :goto_9

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_23
    move-exception v0

    move v0, v1

    goto :goto_19

    :cond_26
    const/4 v2, 0x0

    :try_start_27
    iput-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_20
.end method

.method public final declared-synchronized read()I
    .registers 3

    const/4 v0, -0x1

    monitor-enter p0

    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/l;->a()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_16

    move-result-object v1

    if-nez v1, :cond_a

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v0, :cond_12

    move v0, v1

    goto :goto_8

    :cond_12
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/l;->b()V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_2

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    if-nez p3, :cond_12

    :cond_10
    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    add-int v2, p2, p3

    :try_start_18
    array-length v3, p1

    if-le v2, v3, :cond_21

    :cond_1b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_21
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    array-length v3, v3

    if-lt v2, v3, :cond_2e

    :cond_2c
    move v0, v1

    goto :goto_10

    :cond_2e
    if-eqz p3, :cond_10

    :goto_30
    if-lez p3, :cond_46

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/l;->a()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_46

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v1, :cond_42

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    goto :goto_30

    :cond_42
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/l;->b()V
    :try_end_45
    .catchall {:try_start_18 .. :try_end_45} :catchall_b

    goto :goto_30

    :cond_46
    if-nez v0, :cond_10

    move v0, v1

    goto :goto_10
.end method

.method public final declared-synchronized skip(J)J
    .registers 13

    const-wide/16 v8, 0x1

    const-wide/16 v0, 0x0

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->b:I

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/common/io/l;->a:[Ljava/io/InputStream;

    array-length v3, v3
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_34

    if-lt v2, v3, :cond_12

    :cond_10
    :goto_10
    monitor-exit p0

    return-wide v0

    :cond_12
    cmp-long v2, p1, v0

    if-lez v2, :cond_10

    move-wide v2, v0

    :goto_17
    cmp-long v4, p1, v0

    if-lez v4, :cond_3d

    :try_start_1b
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/l;->a()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-nez v7, :cond_3a

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_37

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/l;->b()V
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_34

    goto :goto_17

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_37
    sub-long/2addr p1, v8

    add-long/2addr v2, v8

    goto :goto_17

    :cond_3a
    sub-long/2addr p1, v5

    add-long/2addr v2, v5

    goto :goto_17

    :cond_3d
    move-wide v0, v2

    goto :goto_10
.end method

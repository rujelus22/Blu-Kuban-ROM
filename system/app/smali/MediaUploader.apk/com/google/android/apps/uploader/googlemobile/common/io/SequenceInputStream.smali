.class public Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;
.super Ljava/io/InputStream;


# instance fields
.field streamArray:[Ljava/io/InputStream;

.field streamIndex:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V

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

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>([Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    return-void
.end method

.method private getStream()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    aget-object v0, v0, v1

    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private nextStream()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    :try_start_c
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_29

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    aput-object v3, v0, v1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v1, v1

    if-lt v0, v1, :cond_28

    iput-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    :cond_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_15
.end method

.method private static validateStreamArray([Ljava/io/InputStream;)Z
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->getStream()Ljava/io/InputStream;

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

.method public declared-synchronized close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;
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
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v2, v2
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_20

    if-ge v1, v2, :cond_26

    :try_start_10
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_23

    :goto_19
    :try_start_19
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_20

    goto :goto_9

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_23
    move-exception v0

    move v0, v3

    goto :goto_19

    :cond_26
    const/4 v1, 0x0

    :try_start_27
    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    if-ne v0, v3, :cond_6

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_20
.end method

.method public declared-synchronized read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    monitor-enter p0

    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->getStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_15

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v1

    :cond_9
    monitor-exit p0

    return v0

    :cond_b
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->nextStream()V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    goto :goto_2

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, -0x1

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
    if-nez p3, :cond_13

    move v0, v2

    :cond_11
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    if-ltz p2, :cond_1c

    if-ltz p3, :cond_1c

    add-int v0, p2, p3

    :try_start_19
    array-length v1, p1

    if-le v0, v1, :cond_22

    :cond_1c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v1, v1

    if-lt v0, v1, :cond_2f

    :cond_2d
    move v0, v4

    goto :goto_11

    :cond_2f
    if-nez p3, :cond_4c

    move v0, v2

    goto :goto_11

    :cond_33
    invoke-virtual {v3, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v4, :cond_48

    add-int/2addr v2, v3

    sub-int/2addr v1, v3

    add-int/2addr v0, v3

    :goto_3c
    if-lez v1, :cond_44

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->getStream()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_33

    :cond_44
    if-nez v0, :cond_11

    move v0, v4

    goto :goto_11

    :cond_48
    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->nextStream()V
    :try_end_4b
    .catchall {:try_start_19 .. :try_end_4b} :catchall_b

    goto :goto_3c

    :cond_4c
    move v0, v2

    move v1, p3

    move v2, p2

    goto :goto_3c
.end method

.method public declared-synchronized skip(J)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamIndex:I

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->streamArray:[Ljava/io/InputStream;

    array-length v1, v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_3c

    if-lt v0, v1, :cond_13

    :cond_10
    move-wide v0, v8

    :cond_11
    :goto_11
    monitor-exit p0

    return-wide v0

    :cond_13
    cmp-long v0, p1, v8

    if-gtz v0, :cond_3f

    move-wide v0, v8

    goto :goto_11

    :cond_19
    :try_start_19
    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v7, v5, v8

    if-nez v7, :cond_39

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_36

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->nextStream()V

    :goto_2b
    cmp-long v4, v2, v8

    if-lez v4, :cond_11

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/SequenceInputStream;->getStream()Ljava/io/InputStream;
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_3c

    move-result-object v4

    if-nez v4, :cond_19

    goto :goto_11

    :cond_36
    sub-long/2addr v2, v10

    add-long/2addr v0, v10

    goto :goto_2b

    :cond_39
    sub-long/2addr v2, v5

    add-long/2addr v0, v5

    goto :goto_2b

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3f
    move-wide v0, v8

    move-wide v2, p1

    goto :goto_2b
.end method

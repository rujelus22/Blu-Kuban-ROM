.class Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private closed:Z

.field private head:I

.field private final mutex:Ljava/lang/Object;

.field private tail:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    if-gtz p1, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    if-gez v1, :cond_b

    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    :goto_a
    return v0

    :cond_b
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    if-le v1, v2, :cond_19

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    sub-int/2addr v1, v2

    :goto_16
    monitor-exit v0

    move v0, v1

    goto :goto_a

    :cond_19
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_16

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->closed:Z

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public read()I
    .registers 5

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :goto_4
    :try_start_4
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    if-gez v1, :cond_17

    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->closed:Z

    if-eqz v1, :cond_f

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_41

    move v0, v2

    :goto_e
    return v0

    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_4

    :catch_15
    move-exception v1

    goto :goto_4

    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    array-length v3, v3

    if-ne v2, v3, :cond_2d

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    :cond_2d
    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    if-ne v2, v3, :cond_39

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    :cond_39
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    move v0, v1

    goto :goto_e

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_17 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public read([BII)I
    .registers 11

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez p3, :cond_6

    move v0, v3

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :goto_9
    :try_start_9
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    if-gez v1, :cond_1c

    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->closed:Z

    if-eqz v1, :cond_14

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_75

    move v0, v2

    goto :goto_5

    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_75
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_9

    :catch_1a
    move-exception v1

    goto :goto_9

    :cond_1c
    :try_start_1c
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    if-ge v1, v2, :cond_58

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    sub-int/2addr v1, v2

    move v2, v3

    move v4, p2

    move v3, p3

    :goto_2a
    if-le v1, v3, :cond_2d

    move v1, v3

    :cond_2d
    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    iget v5, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    invoke-static {v3, v5, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v1

    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    array-length v3, v3

    if-ne v1, v3, :cond_44

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    :cond_44
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    if-ne v1, v3, :cond_50

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    :cond_50
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    move v0, v2

    goto :goto_5

    :cond_58
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_78

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, p2, v1

    sub-int v3, p3, v1

    iget v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    move v6, v4

    move v4, v2

    move v2, v1

    move v1, v6

    goto :goto_2a

    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_1c .. :try_end_77} :catchall_75

    throw v1

    :cond_78
    move v2, v3

    move v4, p2

    move v3, p3

    goto :goto_2a
.end method

.method public write(B)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    :try_start_3
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_33

    if-ne v1, v2, :cond_11

    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_33
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_3

    :catch_f
    move-exception v1

    goto :goto_3

    :cond_11
    :try_start_11
    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    if-gez v1, :cond_18

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    iget v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    aput-byte p1, v1, v2

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_2c

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    :cond_2c
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public write([BI)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v0

    move v2, p2

    :cond_5
    :goto_5
    if-lez v2, :cond_52

    :goto_7
    :try_start_7
    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    iget v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_48

    if-ne v3, v4, :cond_1a

    :try_start_d
    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_48
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_7

    :catch_18
    move-exception v3

    goto :goto_7

    :cond_1a
    :try_start_1a
    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    if-gez v3, :cond_21

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    :cond_21
    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    iget v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    if-ge v3, v4, :cond_4b

    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->head:I

    iget v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    sub-int/2addr v3, v4

    :goto_2c
    if-le v3, v2, :cond_2f

    move v3, v2

    :cond_2f
    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    iget v5, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    invoke-static {p1, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v3

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    iget v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    array-length v4, v4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    goto :goto_5

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_48

    throw v1

    :cond_4b
    :try_start_4b
    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->buffer:[B

    array-length v3, v3

    iget v4, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->tail:I

    sub-int/2addr v3, v4

    goto :goto_2c

    :cond_52
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_48

    return-void
.end method

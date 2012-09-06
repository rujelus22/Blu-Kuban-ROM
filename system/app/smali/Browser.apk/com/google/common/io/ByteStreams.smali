.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    .local p0, from:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, to:Lcom/google/common/io/OutputSupplier;,"Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    const/4 v4, 0x1

    .line 113
    .local v4, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 115
    .local v2, in:Ljava/io/InputStream;
    :try_start_7
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1e

    .line 117
    .local v3, out:Ljava/io/OutputStream;
    :try_start_d
    invoke-static {v2, v3}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_19

    move-result-wide v0

    .line 118
    .local v0, count:J
    const/4 v4, 0x0

    .line 121
    :try_start_12
    invoke-static {v3, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1e

    .line 124
    invoke-static {v2, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v0

    .line 121
    .end local v0           #count:J
    :catchall_19
    move-exception v5

    :try_start_1a
    invoke-static {v3, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v5
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1e

    .line 124
    .end local v3           #out:Ljava/io/OutputStream;
    :catchall_1e
    move-exception v5

    invoke-static {v2, v4}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v5
.end method

.method public static copy(Lcom/google/common/io/InputSupplier;Ljava/io/OutputStream;)J
    .registers 7
    .parameter
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/io/OutputStream;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    .local p0, from:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v3, 0x1

    .line 141
    .local v3, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 143
    .local v2, in:Ljava/io/InputStream;
    :try_start_7
    invoke-static {v2, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_10

    move-result-wide v0

    .line 144
    .local v0, count:J
    const/4 v3, 0x0

    .line 147
    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v0

    .end local v0           #count:J
    :catchall_10
    move-exception v4

    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v4
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 163
    .local v0, buf:[B
    const-wide/16 v2, 0x0

    .line 165
    .local v2, total:J
    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 166
    .local v1, r:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_e

    .line 172
    return-wide v2

    .line 169
    :cond_e
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 170
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 171
    goto :goto_6
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J
    .registers 7
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    .local v0, buf:Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 188
    .local v1, total:J
    :goto_8
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    .line 189
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 190
    :goto_12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 191
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_12

    .line 193
    :cond_1f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_8

    .line 195
    :cond_23
    return-wide v1
.end method

.method public static equal(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/InputSupplier;)Z
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, supplier1:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, supplier2:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v7, 0x0

    const/16 v10, 0x1000

    .line 575
    new-array v0, v10, [B

    .line 576
    .local v0, buf1:[B
    new-array v1, v10, [B

    .line 578
    .local v1, buf2:[B
    const/4 v6, 0x1

    .line 579
    .local v6, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 581
    .local v2, in1:Ljava/io/InputStream;
    :try_start_e
    invoke-interface {p1}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_42

    .line 584
    .local v3, in2:Ljava/io/InputStream;
    :cond_14
    const/4 v8, 0x0

    const/16 v9, 0x1000

    :try_start_17
    invoke-static {v2, v0, v8, v9}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 585
    .local v4, read1:I
    const/4 v8, 0x0

    const/16 v9, 0x1000

    invoke-static {v3, v1, v8, v9}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v5

    .line 586
    .local v5, read2:I
    if-ne v4, v5, :cond_2a

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_3d

    move-result v8

    if-nez v8, :cond_32

    .line 587
    :cond_2a
    const/4 v6, 0x0

    .line 595
    :try_start_2b
    invoke-static {v3, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_42

    .line 598
    invoke-static {v2, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    :goto_31
    return v7

    .line 589
    :cond_32
    if-eq v4, v10, :cond_14

    .line 590
    const/4 v6, 0x0

    .line 591
    const/4 v7, 0x1

    .line 595
    :try_start_36
    invoke-static {v3, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_42

    .line 598
    invoke-static {v2, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    goto :goto_31

    .line 595
    .end local v4           #read1:I
    .end local v5           #read2:I
    :catchall_3d
    move-exception v7

    :try_start_3e
    invoke-static {v3, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v7
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_42

    .line 598
    .end local v3           #in2:Ljava/io/InputStream;
    :catchall_42
    move-exception v7

    invoke-static {v2, v6}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v7
.end method

.method public static getChecksum(Lcom/google/common/io/InputSupplier;Ljava/util/zip/Checksum;)J
    .registers 4
    .parameter
    .parameter "checksum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/util/zip/Checksum;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    new-instance v0, Lcom/google/common/io/ByteStreams$2;

    invoke-direct {v0, p1}, Lcom/google/common/io/ByteStreams$2;-><init>(Ljava/util/zip/Checksum;)V

    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDigest(Lcom/google/common/io/InputSupplier;Ljava/security/MessageDigest;)[B
    .registers 3
    .parameter
    .parameter "md"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/security/MessageDigest;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    new-instance v0, Lcom/google/common/io/ByteStreams$3;

    invoke-direct {v0, p1}, Lcom/google/common/io/ByteStreams$3;-><init>(Ljava/security/MessageDigest;)V

    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;>;)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 834
    .local p0, suppliers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;>;"
    new-instance v0, Lcom/google/common/io/ByteStreams$5;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$5;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs join([Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/InputSupplier;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    .local p0, suppliers:[Lcom/google/common/io/InputSupplier;,"[Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->join(Ljava/lang/Iterable;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static length(Lcom/google/common/io/InputSupplier;)J
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const-wide/16 v2, 0x0

    .line 547
    .local v2, count:J
    const/4 v5, 0x1

    .line 548
    .local v5, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 552
    .local v4, in:Ljava/io/InputStream;
    :goto_9
    const-wide/32 v6, 0x7fffffff

    :try_start_c
    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 553
    .local v0, amt:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_26

    .line 554
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_28

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_22

    .line 555
    const/4 v5, 0x0

    .line 564
    invoke-static {v4, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-wide v2

    .line 558
    :cond_22
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_9

    .line 560
    :cond_26
    add-long/2addr v2, v0

    goto :goto_9

    .line 564
    .end local v0           #amt:J
    :catchall_28
    move-exception v6

    invoke-static {v4, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v6
.end method

.method public static newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;
    .registers 2
    .parameter "bytes"

    .prologue
    .line 236
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>([B)V

    return-object v0
.end method

.method public static newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;
    .registers 3
    .parameter "bytes"
    .parameter "start"

    .prologue
    .line 247
    array-length v0, p0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 248
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>([BI)V

    return-object v0
.end method

.method public static newDataOutput()Lcom/google/common/io/ByteArrayDataOutput;
    .registers 1

    .prologue
    .line 390
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-direct {v0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>()V

    return-object v0
.end method

.method public static newDataOutput(I)Lcom/google/common/io/ByteArrayDataOutput;
    .registers 6
    .parameter "size"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 400
    if-ltz p0, :cond_18

    move v0, v1

    :goto_5
    const-string v3, "Invalid size: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 401
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>(I)V

    return-object v0

    :cond_18
    move v0, v2

    .line 400
    goto :goto_5
.end method

.method public static newInputStreamSupplier([B)Lcom/google/common/io/InputSupplier;
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/io/ByteStreams;->newInputStreamSupplier([BII)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static newInputStreamSupplier([BII)Lcom/google/common/io/InputSupplier;
    .registers 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/google/common/io/ByteStreams$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/ByteStreams$1;-><init>([BII)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .registers 8
    .parameter "in"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    if-gez p3, :cond_a

    .line 770
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "len is negative"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 772
    :cond_a
    const/4 v1, 0x0

    .line 773
    .local v1, total:I
    :goto_b
    if-ge v1, p3, :cond_18

    .line 774
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 775
    .local v0, result:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_19

    .line 780
    .end local v0           #result:I
    :cond_18
    return v1

    .line 778
    .restart local v0       #result:I
    :cond_19
    add-int/2addr v1, v0

    .line 779
    goto :goto_b
.end method

.method public static readBytes(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    .local p1, processor:Lcom/google/common/io/ByteProcessor;,"Lcom/google/common/io/ByteProcessor<TT;>;"
    const/16 v4, 0x1000

    new-array v1, v4, [B

    .line 676
    .local v1, buf:[B
    const/4 v3, 0x1

    .line 677
    .local v3, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 681
    .local v2, in:Ljava/io/InputStream;
    :cond_b
    :try_start_b
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 682
    .local v0, amt:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1b

    .line 683
    const/4 v3, 0x0

    .line 687
    :goto_13
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_23

    move-result-object v4

    .line 689
    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v4

    .line 686
    :cond_1b
    const/4 v4, 0x0

    :try_start_1c
    invoke-interface {p1, v1, v4, v0}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    move-result v4

    if-nez v4, :cond_b

    goto :goto_13

    .line 689
    .end local v0           #amt:I
    :catchall_23
    move-exception v4

    invoke-static {v2, v3}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v4
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .registers 4
    .parameter "in"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 615
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .registers 5
    .parameter "in"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eq v0, p3, :cond_c

    .line 634
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 636
    :cond_c
    return-void
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .registers 9
    .parameter "in"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 651
    :goto_2
    cmp-long v2, p1, v4

    if-lez v2, :cond_21

    .line 652
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 653
    .local v0, amt:J
    cmp-long v2, v0, v4

    if-nez v2, :cond_1f

    .line 655
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 656
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 658
    :cond_1b
    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    goto :goto_2

    .line 660
    :cond_1f
    sub-long/2addr p1, v0

    goto :goto_2

    .line 663
    .end local v0           #amt:J
    :cond_21
    return-void
.end method

.method public static slice(Lcom/google/common/io/InputSupplier;JJ)Lcom/google/common/io/InputSupplier;
    .registers 11
    .parameter
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;JJ)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 798
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    cmp-long v0, p1, v4

    if-ltz v0, :cond_23

    move v0, v1

    :goto_c
    const-string v3, "offset is negative"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 800
    cmp-long v0, p3, v4

    if-ltz v0, :cond_25

    :goto_15
    const-string v0, "length is negative"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 801
    new-instance v0, Lcom/google/common/io/ByteStreams$4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/io/ByteStreams$4;-><init>(Lcom/google/common/io/InputSupplier;JJ)V

    return-object v0

    :cond_23
    move v0, v2

    .line 799
    goto :goto_c

    :cond_25
    move v1, v2

    .line 800
    goto :goto_15
.end method

.method public static toByteArray(Lcom/google/common/io/InputSupplier;)[B
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    .local p0, supplier:Lcom/google/common/io/InputSupplier;,"Lcom/google/common/io/InputSupplier<+Ljava/io/InputStream;>;"
    const/4 v2, 0x1

    .line 221
    .local v2, threw:Z
    invoke-interface {p0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 223
    .local v0, in:Ljava/io/InputStream;
    :try_start_7
    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_10

    move-result-object v1

    .line 224
    .local v1, result:[B
    const/4 v2, 0x0

    .line 227
    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    return-object v1

    .end local v1           #result:[B
    :catchall_10
    move-exception v3

    invoke-static {v0, v2}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v3
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 208
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 209
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static write([BLcom/google/common/io/OutputSupplier;)V
    .registers 5
    .parameter "from"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    .local p1, to:Lcom/google/common/io/OutputSupplier;,"Lcom/google/common/io/OutputSupplier<+Ljava/io/OutputStream;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/4 v1, 0x1

    .line 92
    .local v1, threw:Z
    invoke-interface {p1}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 94
    .local v0, out:Ljava/io/OutputStream;
    :try_start_a
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 95
    const/4 v1, 0x0

    .line 97
    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 99
    return-void

    .line 97
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v2
.end method

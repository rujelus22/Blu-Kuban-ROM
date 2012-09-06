.class public final Lcom/google/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private final flushedBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private flushedBuffersTotalBytes:I

.field private final initialCapacity:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 673
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method constructor <init>(I)V
    .registers 4
    .parameter "initialCapacity"

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 692
    if-gez p1, :cond_d

    .line 693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_d
    iput p1, p0, Lcom/google/protobuf/ByteString$Output;->initialCapacity:I

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    .line 697
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    .line 698
    return-void
.end method

.method private flushFullBuffer(I)V
    .registers 6
    .parameter "minSize"

    .prologue
    .line 796
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/protobuf/LiteralByteString;

    iget-object v3, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v2, v3}, Lcom/google/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget-object v2, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 801
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->initialCapacity:I

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    ushr-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 803
    .local v0, newSize:I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    .line 804
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    .line 805
    return-void
.end method

.method private flushLastBuffer()V
    .registers 5

    .prologue
    .line 812
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    iget-object v2, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v2, v2

    if-ge v1, v2, :cond_28

    .line 813
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    if-lez v1, :cond_1d

    .line 814
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 815
    .local v0, bufferCopy:[B
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/protobuf/LiteralByteString;

    invoke-direct {v2, v0}, Lcom/google/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    .end local v0           #bufferCopy:[B
    :cond_1d
    :goto_1d
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 829
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    .line 830
    return-void

    .line 820
    :cond_28
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/protobuf/LiteralByteString;

    iget-object v3, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v2, v3}, Lcom/google/protobuf/LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    sget-object v1, Lcom/google/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    goto :goto_1d
.end method


# virtual methods
.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 779
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 780
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 781
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 782
    monitor-exit p0

    return-void

    .line 779
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 3

    .prologue
    .line 770
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteString()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 735
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/protobuf/ByteString$Output;->flushLastBuffer()V

    .line 736
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/google/protobuf/ByteString;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 735
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 786
    const-string v0, "<ByteString.Output@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString$Output;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .parameter "b"

    .prologue
    .line 702
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 703
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 705
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 706
    monitor-exit p0

    return-void

    .line 702
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 7
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 710
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_17

    .line 712
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 713
    iget v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_33

    .line 726
    :goto_15
    monitor-exit p0

    return-void

    .line 716
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    sub-int v0, v1, v2

    .line 717
    .local v0, copySize:I
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 718
    add-int/2addr p2, v0

    .line 719
    sub-int/2addr p3, v0

    .line 722
    invoke-direct {p0, p3}, Lcom/google/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 723
    iget-object v1, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    iput p3, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_33

    goto :goto_15

    .line 710
    .end local v0           #copySize:I
    :catchall_33
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 11
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    monitor-enter p0

    .line 753
    :try_start_1
    iget-object v7, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/google/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/protobuf/ByteString;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/protobuf/ByteString;

    .line 755
    .local v4, cachedFlushBuffers:[Lcom/google/protobuf/ByteString;
    iget-object v2, p0, Lcom/google/protobuf/ByteString$Output;->buffer:[B

    .line 756
    .local v2, cachedBuffer:[B
    iget v3, p0, Lcom/google/protobuf/ByteString$Output;->bufferPos:I

    .line 757
    .local v3, cachedBufferPos:I
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_23

    .line 758
    move-object v0, v4

    .local v0, arr$:[Lcom/google/protobuf/ByteString;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_19
    if-ge v5, v6, :cond_26

    aget-object v1, v0, v5

    .line 759
    .local v1, byteString:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 758
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 757
    .end local v0           #arr$:[Lcom/google/protobuf/ByteString;
    .end local v1           #byteString:Lcom/google/protobuf/ByteString;
    .end local v2           #cachedBuffer:[B
    .end local v3           #cachedBufferPos:I
    .end local v4           #cachedFlushBuffers:[Lcom/google/protobuf/ByteString;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catchall_23
    move-exception v7

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v7

    .line 761
    .restart local v0       #arr$:[Lcom/google/protobuf/ByteString;
    .restart local v2       #cachedBuffer:[B
    .restart local v3       #cachedBufferPos:I
    .restart local v4       #cachedFlushBuffers:[Lcom/google/protobuf/ByteString;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_26
    const/4 v7, 0x0

    invoke-virtual {p1, v2, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 762
    return-void
.end method

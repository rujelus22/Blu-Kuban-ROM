.class public Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;
.super Lcom/google/android/apps/translatedecoder/util/BitData;
.source "ByteBufferBasedBitData.java"


# static fields
.field public static final CLASS_ID:I = 0x1

.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x77bfd7afd429a95bL


# instance fields
.field private final lb:Ljava/nio/LongBuffer;

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/LongBuffer;)V
    .registers 3
    .parameter "lb"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/util/BitData;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->lb:Ljava/nio/LongBuffer;

    .line 29
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->size:I

    .line 30
    return-void
.end method

.method public static readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/BitData;
    .registers 4
    .parameter "buf"

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 103
    .local v1, len:I
    invoke-static {p0, v1}, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->subBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    .line 104
    .local v0, lb:Ljava/nio/LongBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    new-instance v2, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;

    invoke-direct {v2, v0}, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;-><init>(Ljava/nio/LongBuffer;)V

    return-object v2
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    .line 87
    sget-object v0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->logger:Ljava/util/logging/Logger;

    const-string v1, "calling unimplement function"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 89
    return-void
.end method

.method public get(I)Z
    .registers 7
    .parameter "bitIndex"

    .prologue
    .line 79
    if-gez p1, :cond_1b

    .line 80
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->lb:Ljava/nio/LongBuffer;

    div-int/lit8 v1, p1, 0x40

    invoke-virtual {v0, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 v4, p1, 0x40

    shl-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public length()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->size:I

    return v0
.end method

.method public nextSetBit(I)I
    .registers 12
    .parameter "fromIndex"

    .prologue
    .line 44
    if-gez p1, :cond_1b

    .line 45
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromIndex < 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 47
    :cond_1b
    const/4 v5, 0x1

    .line 48
    .local v5, needGet:Z
    move v3, p1

    .line 49
    .local v3, i:I
    div-int/lit8 v4, v3, 0x40

    .line 50
    .local v4, lbIndex:I
    rem-int/lit8 v0, v3, 0x40

    .line 51
    .local v0, bitIndex:I
    const-wide/16 v1, 0x0

    .line 52
    .local v1, currentVal:J
    :cond_23
    :goto_23
    iget v6, p0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->size:I

    if-ge v3, v6, :cond_48

    .line 53
    if-eqz v5, :cond_30

    .line 54
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->lb:Ljava/nio/LongBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v1

    .line 55
    const/4 v5, 0x0

    .line 57
    :cond_30
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    and-long/2addr v6, v1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3b

    .line 68
    .end local v3           #i:I
    :goto_3a
    return v3

    .line 60
    .restart local v3       #i:I
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    const/16 v6, 0x40

    if-ne v0, v6, :cond_23

    .line 63
    const/4 v0, 0x0

    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 65
    const/4 v5, 0x1

    goto :goto_23

    .line 68
    :cond_48
    const/4 v3, -0x1

    goto :goto_3a
.end method

.method public set(IZ)V
    .registers 5
    .parameter "bitIndex"
    .parameter "flag"

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->logger:Ljava/util/logging/Logger;

    const-string v1, "calling unimplement function"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 75
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->size:I

    return v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 5
    .parameter "buf"

    .prologue
    .line 93
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->logger:Ljava/util/logging/Logger;

    const-string v2, "write to memory mapped file!"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->lb:Ljava/nio/LongBuffer;

    invoke-virtual {v1}, Ljava/nio/LongBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x40

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 96
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->lb:Ljava/nio/LongBuffer;

    invoke-virtual {v1}, Ljava/nio/LongBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ByteBufferBasedBitData;->lb:Ljava/nio/LongBuffer;

    invoke-virtual {v1}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 99
    :cond_2d
    return-void
.end method

.class public Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;
.super Lcom/google/android/apps/translatedecoder/util/BitData;
.source "BitSetBasedBitData.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x2d560b15a471cb9bL


# instance fields
.field private final bitSet:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/BitSet;)V
    .registers 2
    .parameter "bitSet"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/util/BitData;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;->bitSet:Ljava/util/BitSet;

    .line 24
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 54
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 73
    instance-of v1, p1, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 74
    check-cast v0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;

    .line 75
    .local v0, to:Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;
    iget-object v1, v0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;->bitSet:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 77
    .end local v0           #to:Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public get(I)Z
    .registers 3
    .parameter "bitIndex"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    return v0
.end method

.method public nextSetBit(I)I
    .registers 3
    .parameter "bitIndex"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    return v0
.end method

.method public set(IZ)V
    .registers 4
    .parameter "bitIndex"
    .parameter "flag"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->set(IZ)V

    .line 44
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;->bitSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->size()I

    move-result v0

    return v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 8
    .parameter "buf"

    .prologue
    .line 58
    sget-object v4, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;->logger:Ljava/util/logging/Logger;

    const-string v5, "write to memory mapped file!"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 62
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->toLongArray(Lcom/google/android/apps/translatedecoder/util/BitData;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x40

    div-int/lit8 v4, v4, 0x8

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 66
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 67
    .local v2, wrd:J
    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_1e

    .line 69
    .end local v2           #wrd:J
    :cond_32
    return-void
.end method

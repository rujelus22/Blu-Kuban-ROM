.class public Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;
.super Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
.source "FixedBitsTrieNodeList.java"


# static fields
.field public static final CLASS_ID:I = 0x1

.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x7b932083fc955010L


# instance fields
.field private final data:Lcom/google/android/apps/translatedecoder/util/BitData;

.field private final offsetLen:I

.field private final quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

.field private size:I

.field private final trieNodeLen:I

.field private final valueLen:I

.field private final wordIdLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/BitData;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V
    .registers 10
    .parameter "data"
    .parameter "size"
    .parameter "wordIdLen"
    .parameter "offsetLen"
    .parameter "valueLen"
    .parameter "quantizer"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;-><init>()V

    .line 45
    iput p2, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->size:I

    .line 46
    iput p3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->wordIdLen:I

    .line 47
    iput p4, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->offsetLen:I

    .line 48
    iput p5, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->valueLen:I

    .line 49
    add-int v0, p3, p4

    add-int/2addr v0, p5

    iput v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->trieNodeLen:I

    .line 50
    iput-object p6, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    if-nez v0, :cond_1e

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "quantizer is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1e
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    .line 55
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/BitData;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->trieNodeLen:I

    mul-int/2addr v1, p2

    if-ge v0, v1, :cond_52

    .line 58
    sget-object v0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data size is too small! data.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/BitData;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->trieNodeLen:I

    mul-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 61
    :cond_52
    return-void
.end method

.method public constructor <init>(Ljava/util/BitSet;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V
    .registers 14
    .parameter "data"
    .parameter "size"
    .parameter "wordIdLen"
    .parameter "offsetLen"
    .parameter "valueLen"
    .parameter "quantizer"

    .prologue
    .line 65
    new-instance v1, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;

    invoke-direct {v1, p1}, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;-><init>(Ljava/util/BitSet;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Lcom/google/android/apps/translatedecoder/util/BitData;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 66
    return-void
.end method

.method public static readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
    .registers 8
    .parameter "buf"

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 129
    .local v2, size:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 130
    .local v3, wordIdLen:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 131
    .local v4, offSetLen:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 134
    .local v5, valueLen:I
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move-result-object v6

    .line 137
    .local v6, quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/BitData;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/BitData;

    move-result-object v1

    .line 138
    .local v1, data:Lcom/google/android/apps/translatedecoder/util/BitData;
    new-instance v0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;-><init>(Lcom/google/android/apps/translatedecoder/util/BitData;IIIILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V
    .registers 6
    .parameter "node"

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getWordId()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    iget v2, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->size:I

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->trieNodeLen:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->wordIdLen:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->intToBitSet(ILcom/google/android/apps/translatedecoder/util/BitData;II)V

    .line 96
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getOffset()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    iget v2, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->size:I

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->trieNodeLen:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->wordIdLen:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->offsetLen:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->intToBitSet(ILcom/google/android/apps/translatedecoder/util/BitData;II)V

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->getUnit(D)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    iget v2, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->size:I

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->trieNodeLen:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->wordIdLen:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->offsetLen:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->valueLen:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->intToBitSet(ILcom/google/android/apps/translatedecoder/util/BitData;II)V

    .line 99
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->size:I

    .line 100
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/BitData;->clear()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->size:I

    .line 106
    return-void
.end method

.method public fill(ILcom/google/android/apps/translatedecoder/succinct/TrieNode;)V
    .registers 7
    .parameter "pos"
    .parameter "node"

    .prologue
    const/4 v3, -0x1

    .line 70
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->wordIdLen:I

    if-lez v0, :cond_47

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    iget v1, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->trieNodeLen:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->wordIdLen:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->bitSetToInt(Lcom/google/android/apps/translatedecoder/util/BitData;II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->setWordId(I)V

    .line 75
    :goto_13
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->offsetLen:I

    if-lez v0, :cond_4b

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    iget v1, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->trieNodeLen:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->wordIdLen:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->offsetLen:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->bitSetToInt(Lcom/google/android/apps/translatedecoder/util/BitData;II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->setOffset(I)V

    .line 80
    :goto_28
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->valueLen:I

    if-lez v0, :cond_4f

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    iget v2, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->trieNodeLen:I

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->wordIdLen:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->offsetLen:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->valueLen:I

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->bitSetToInt(Lcom/google/android/apps/translatedecoder/util/BitData;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->getValue(I)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->setValue(D)V

    .line 86
    :goto_46
    return-void

    .line 73
    :cond_47
    invoke-virtual {p2, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->setWordId(I)V

    goto :goto_13

    .line 78
    :cond_4b
    invoke-virtual {p2, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->setOffset(I)V

    goto :goto_28

    .line 84
    :cond_4f
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->setValue(D)V

    goto :goto_46
.end method

.method public size()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->size:I

    return v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 5
    .parameter "buf"

    .prologue
    .line 110
    sget-object v0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write to buffer, postion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 113
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->size:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 114
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->wordIdLen:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 115
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->offsetLen:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 116
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->valueLen:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/succinct/FixedBitsTrieNodeList;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/BitData;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 119
    return-void
.end method

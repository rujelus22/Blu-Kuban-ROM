.class public Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;
.super Ljava/lang/Object;
.source "TargetPhrasesContainer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x57b4a9a953c0e42L


# instance fields
.field private final data:Lcom/google/android/apps/translatedecoder/util/BitData;

.field private final quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

.field private final valLen:I

.field private final wordIdLen:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/BitData;IILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V
    .registers 5
    .parameter "data"
    .parameter "wordIdLen"
    .parameter "valLen"
    .parameter "quantizer"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    .line 55
    iput p2, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->wordIdLen:I

    .line 56
    iput p3, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->valLen:I

    .line 57
    iput-object p4, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/BitSet;IILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V
    .registers 6
    .parameter "data"
    .parameter "wordIdLen"
    .parameter "valLen"
    .parameter "quantizer"

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;

    invoke-direct {v0, p1}, Lcom/google/android/apps/translatedecoder/util/BitSetBasedBitData;-><init>(Ljava/util/BitSet;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;-><init>(Lcom/google/android/apps/translatedecoder/util/BitData;IILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    .line 63
    return-void
.end method

.method private addTargetPhrase(Lcom/google/android/apps/translatedecoder/util/BitData;I[IIZ)I
    .registers 13
    .parameter "data"
    .parameter "bitOffSet"
    .parameter "words"
    .parameter "value"
    .parameter "lastPhrase"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 92
    move v1, p2

    .line 93
    .local v1, res:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v3, p3

    if-ge v0, v3, :cond_22

    .line 94
    aget v3, p3, v0

    iget v6, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->wordIdLen:I

    invoke-static {v3, p1, v1, v6}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->intToBitSet(ILcom/google/android/apps/translatedecoder/util/BitData;II)V

    .line 95
    iget v3, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->wordIdLen:I

    add-int/2addr v1, v3

    .line 96
    add-int/lit8 v2, v1, 0x1

    .end local v1           #res:I
    .local v2, res:I
    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_20

    move v3, v4

    :goto_19
    invoke-virtual {p1, v1, v3}, Lcom/google/android/apps/translatedecoder/util/BitData;->set(IZ)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #res:I
    .restart local v1       #res:I
    goto :goto_4

    .end local v1           #res:I
    .restart local v2       #res:I
    :cond_20
    move v3, v5

    .line 96
    goto :goto_19

    .line 98
    .end local v2           #res:I
    .restart local v1       #res:I
    :cond_22
    iget v3, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->valLen:I

    invoke-static {p4, p1, v1, v3}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->intToBitSet(ILcom/google/android/apps/translatedecoder/util/BitData;II)V

    .line 99
    iget v3, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->valLen:I

    add-int/2addr v1, v3

    .line 100
    add-int/lit8 v2, v1, 0x1

    .end local v1           #res:I
    .restart local v2       #res:I
    if-nez p5, :cond_32

    :goto_2e
    invoke-virtual {p1, v1, v4}, Lcom/google/android/apps/translatedecoder/util/BitData;->set(IZ)V

    .line 101
    return v2

    :cond_32
    move v4, v5

    .line 100
    goto :goto_2e
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;
    .registers 6
    .parameter "buf"

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 148
    .local v3, wordIdLen:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 149
    .local v2, valLen:I
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    move-result-object v1

    .line 150
    .local v1, quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/BitData;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/BitData;

    move-result-object v0

    .line 152
    .local v0, data:Lcom/google/android/apps/translatedecoder/util/BitData;
    new-instance v4, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;

    invoke-direct {v4, v0, v3, v2, v1}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;-><init>(Lcom/google/android/apps/translatedecoder/util/BitData;IILcom/google/android/apps/translatedecoder/succinct/Quantizer;)V

    return-object v4
.end method


# virtual methods
.method public addTargetPhrases(Ljava/util/List;I)I
    .registers 12
    .parameter
    .parameter "byteOffset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/pt/PhrasePair;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, phrases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    mul-int/lit8 v2, p2, 0x8

    .line 77
    .local v2, bitOffset:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_38

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->tgtWords()[I

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->cost()D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->getUnit(D)I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v6, v0, :cond_36

    const/4 v5, 0x1

    :goto_2e
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->addTargetPhrase(Lcom/google/android/apps/translatedecoder/util/BitData;I[IIZ)I

    move-result v2

    .line 77
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 78
    :cond_36
    const/4 v5, 0x0

    goto :goto_2e

    .line 82
    :cond_38
    :goto_38
    rem-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_44

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/translatedecoder/util/BitData;->set(I)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 87
    :cond_44
    div-int/lit8 v0, v2, 0x8

    return v0
.end method

.method public convertToPhrases([II)Ljava/util/List;
    .registers 14
    .parameter "srcWords"
    .parameter "byteOffSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/pt/PhrasePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v6, res:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v7, targetWords:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    mul-int/lit8 v4, p2, 0x8

    .line 115
    .local v4, pos:I
    const/4 v2, 0x1

    .line 116
    .local v2, hasMorePhrasess:Z
    :goto_d
    if-eqz v2, :cond_5e

    .line 118
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 120
    const/4 v3, 0x1

    .line 121
    .local v3, hasMoreWords:Z
    :goto_13
    if-eqz v3, :cond_34

    .line 122
    iget-object v8, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    iget v9, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->wordIdLen:I

    invoke-static {v8, v4, v9}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->bitSetToInt(Lcom/google/android/apps/translatedecoder/util/BitData;II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget v8, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->wordIdLen:I

    add-int/2addr v4, v8

    .line 124
    iget-object v8, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .local v5, pos:I
    invoke-virtual {v8, v4}, Lcom/google/android/apps/translatedecoder/util/BitData;->get(I)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 125
    const/4 v3, 0x0

    move v4, v5

    .end local v5           #pos:I
    .restart local v4       #pos:I
    goto :goto_13

    .line 129
    :cond_34
    iget-object v8, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    iget-object v9, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    iget v10, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->valLen:I

    invoke-static {v9, v4, v10}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->bitSetToInt(Lcom/google/android/apps/translatedecoder/util/BitData;II)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->getValue(I)D

    move-result-wide v0

    .line 130
    .local v0, cost:D
    iget v8, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->valLen:I

    add-int/2addr v4, v8

    .line 131
    new-instance v8, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    invoke-static {v7}, Lcom/google/android/apps/translatedecoder/util/Utils;->listToArray(Ljava/util/List;)[I

    move-result-object v9

    invoke-direct {v8, p1, v9, v0, v1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;-><init>([I[ID)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v8, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #pos:I
    .restart local v5       #pos:I
    invoke-virtual {v8, v4}, Lcom/google/android/apps/translatedecoder/util/BitData;->get(I)Z

    move-result v8

    if-nez v8, :cond_5c

    .line 133
    const/4 v2, 0x0

    :cond_5c
    move v4, v5

    .line 135
    .end local v5           #pos:I
    .restart local v4       #pos:I
    goto :goto_d

    .line 136
    .end local v0           #cost:D
    .end local v3           #hasMoreWords:Z
    :cond_5e
    return-object v6

    .end local v4           #pos:I
    .restart local v3       #hasMoreWords:Z
    .restart local v5       #pos:I
    :cond_5f
    move v4, v5

    .end local v5           #pos:I
    .restart local v4       #pos:I
    goto :goto_13
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 140
    iget v0, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->wordIdLen:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 141
    iget v0, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->valLen:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->quantizer:Lcom/google/android/apps/translatedecoder/succinct/Quantizer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/succinct/Quantizer;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->data:Lcom/google/android/apps/translatedecoder/util/BitData;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/BitData;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 144
    return-void
.end method

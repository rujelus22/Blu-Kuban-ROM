.class public Lcom/google/android/apps/translatedecoder/util/BitsUtil;
.super Ljava/lang/Object;
.source "BitsUtil.java"


# static fields
.field public static final LM_MAX_MMAP_SIZE:I = 0x1dcd6500

.field public static final PT_MAX_MMAP_SIZE:I = 0x1dcd6500

.field public static final TOKENIZER_MAX_MMAP_SIZE:I = 0x5f5e100


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitSetToInt(Lcom/google/android/apps/translatedecoder/util/BitData;)I
    .registers 3
    .parameter "bitSet"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/translatedecoder/util/BitData;->length()I

    move-result v1

    if-gtz v1, :cond_8

    .line 77
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/translatedecoder/util/BitData;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->bitSetToInt(Lcom/google/android/apps/translatedecoder/util/BitData;II)I

    move-result v0

    goto :goto_7
.end method

.method public static bitSetToInt(Lcom/google/android/apps/translatedecoder/util/BitData;II)I
    .registers 9
    .parameter "bitSet"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/16 v5, 0x20

    .line 32
    if-gtz p2, :cond_c

    .line 33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "len is zero or negative!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_c
    if-le p2, v5, :cond_31

    .line 36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bitset is too big for an integer, len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max_size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_31
    const/4 v0, 0x0

    .line 40
    .local v0, bitInteger:I
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translatedecoder/util/BitData;->nextSetBit(I)I

    move-result v1

    .local v1, i:I
    :goto_36
    if-ltz v1, :cond_48

    add-int v2, p1, p2

    if-ge v1, v2, :cond_48

    .line 42
    const/4 v2, 0x1

    sub-int v3, v1, p1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 41
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translatedecoder/util/BitData;->nextSetBit(I)I

    move-result v1

    goto :goto_36

    .line 44
    :cond_48
    return v0
.end method

.method public static bitSetToLong(Lcom/google/android/apps/translatedecoder/util/BitData;II)J
    .registers 10
    .parameter "bitSet"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/16 v6, 0x40

    .line 48
    if-gtz p2, :cond_c

    .line 49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "len is zero or negative!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_c
    if-le p2, v6, :cond_31

    .line 52
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bitset is too big for a Long, len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " max_size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_31
    const-wide/16 v0, 0x0

    .line 56
    .local v0, bitLong:J
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translatedecoder/util/BitData;->nextSetBit(I)I

    move-result v2

    .local v2, i:I
    :goto_37
    if-ltz v2, :cond_4a

    add-int v3, p1, p2

    if-ge v2, v3, :cond_4a

    .line 58
    const-wide/16 v3, 0x1

    sub-int v5, v2, p1

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 57
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/apps/translatedecoder/util/BitData;->nextSetBit(I)I

    move-result v2

    goto :goto_37

    .line 60
    :cond_4a
    return-wide v0
.end method

.method public static intToBitSet(ILcom/google/android/apps/translatedecoder/util/BitData;)V
    .registers 4
    .parameter "n"
    .parameter "bits"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/util/BitData;->size()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->intToBitSet(ILcom/google/android/apps/translatedecoder/util/BitData;II)V

    .line 113
    return-void
.end method

.method public static intToBitSet(ILcom/google/android/apps/translatedecoder/util/BitData;II)V
    .registers 9
    .parameter "n"
    .parameter "bits"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 93
    if-gtz p3, :cond_3

    .line 109
    :cond_2
    return-void

    .line 96
    :cond_3
    const/4 v0, 0x0

    .line 97
    .local v0, index:I
    move v1, p0

    .line 98
    .local v1, value:I
    :cond_5
    if-eqz v1, :cond_2

    .line 99
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_10

    .line 100
    add-int v2, v0, p2

    invoke-virtual {p1, v2}, Lcom/google/android/apps/translatedecoder/util/BitData;->set(I)V

    .line 102
    :cond_10
    ushr-int/lit8 v1, v1, 0x1

    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    if-le v0, p3, :cond_5

    .line 105
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The integer is longer than specified length, n="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static numBitsRequired(I)I
    .registers 6
    .parameter "n"

    .prologue
    .line 119
    if-gtz p0, :cond_1b

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input n is not greater than 0; n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1b
    const/4 v0, 0x1

    .line 124
    .local v0, i:I
    :goto_1c
    const-wide/high16 v1, 0x4000

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    sub-double/2addr v1, v3

    int-to-double v3, p0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2c

    .line 129
    return v0

    .line 127
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public static toLongArray(Lcom/google/android/apps/translatedecoder/util/BitData;)Ljava/util/List;
    .registers 6
    .parameter "bits"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/translatedecoder/util/BitData;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x40

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, res:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/translatedecoder/util/BitData;->length()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 138
    invoke-virtual {p0}, Lcom/google/android/apps/translatedecoder/util/BitData;->length()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v2, v4, :cond_28

    .line 139
    invoke-virtual {p0}, Lcom/google/android/apps/translatedecoder/util/BitData;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p0, v0, v2}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->bitSetToLong(Lcom/google/android/apps/translatedecoder/util/BitData;II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_25
    add-int/lit8 v0, v0, 0x40

    goto :goto_8

    .line 141
    :cond_28
    invoke-static {p0, v0, v4}, Lcom/google/android/apps/translatedecoder/util/BitsUtil;->bitSetToLong(Lcom/google/android/apps/translatedecoder/util/BitData;II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 144
    :cond_34
    return-object v1
.end method

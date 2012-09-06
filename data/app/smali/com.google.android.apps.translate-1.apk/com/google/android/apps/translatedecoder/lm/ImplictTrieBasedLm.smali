.class public Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;
.super Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
.source "ImplictTrieBasedLm.java"


# static fields
.field public static final CLASS_ID:I = 0x1

.field private static final serialVersionUID:J = -0x4893a84320681a71L


# instance fields
.field private transient costCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private stupidBackoffCost:D

.field private final trie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;


# direct methods
.method public constructor <init>(IDDZLcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;)V
    .registers 17
    .parameter "lmOrder"
    .parameter "oovCost"
    .parameter "stupidBackoffCost"
    .parameter "noBackoff"
    .parameter "trie"

    .prologue
    .line 35
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;-><init>(IDDZLcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(IDDZLcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;I)V
    .registers 9
    .parameter "lmOrder"
    .parameter "oovCost"
    .parameter "stupidBackoffCost"
    .parameter "noBackoff"
    .parameter "trie"
    .parameter "maxNumCachedNgrams"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/lm/LanguageModel;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->lmOrder:I

    .line 41
    iput-wide p2, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->oovCost:D

    .line 42
    iput-wide p4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->stupidBackoffCost:D

    .line 43
    iput-boolean p6, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->noBackoff:Z

    .line 44
    iput-object p7, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->trie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    .line 45
    iput p8, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->maxNumCachedNgrams:I

    .line 46
    return-void
.end method

.method private noBackoffCost(Ljava/util/List;)D
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->trie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->lookup(Ljava/util/List;)Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    move-result-object v0

    .line 121
    .local v0, node:Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
    if-eqz v0, :cond_d

    .line 122
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getValue()D

    move-result-wide v1

    .line 124
    :goto_c
    return-wide v1

    :cond_d
    iget-wide v1, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->oovCost:D

    goto :goto_c
.end method

.method public static readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/lm/LanguageModel;
    .registers 9
    .parameter "buf"

    .prologue
    const/4 v6, 0x1

    .line 142
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 143
    .local v1, lmOrder:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v2

    .line 144
    .local v2, oovCost:D
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ne v0, v6, :cond_1d

    .line 147
    .local v6, noBackoff:Z
    :goto_f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    .line 148
    .local v4, stupidBackoffCost:D
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    move-result-object v7

    .line 149
    .local v7, trie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    new-instance v0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;-><init>(IDDZLcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;)V

    return-object v0

    .line 144
    .end local v4           #stupidBackoffCost:D
    .end local v6           #noBackoff:Z
    .end local v7           #trie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    :cond_1d
    const/4 v6, 0x0

    goto :goto_f
.end method


# virtual methods
.method public ngramCost(Ljava/util/List;)D
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->maxNumCachedNgrams:I

    if-lez v4, :cond_3f

    .line 51
    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->costCache:Ljava/util/Map;

    if-nez v4, :cond_f

    .line 52
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->costCache:Ljava/util/Map;

    .line 54
    :cond_f
    invoke-static {p1}, Lcom/google/android/apps/translatedecoder/util/Utils;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, wordStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->costCache:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 56
    .local v0, cacheCost:Ljava/lang/Double;
    if-eqz v0, :cond_22

    .line 57
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 70
    .end local v0           #cacheCost:Ljava/lang/Double;
    .end local v3           #wordStr:Ljava/lang/String;
    :goto_21
    return-wide v1

    .line 59
    .restart local v0       #cacheCost:Ljava/lang/Double;
    .restart local v3       #wordStr:Ljava/lang/String;
    :cond_22
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->ngramCostHelper(Ljava/util/List;)D

    move-result-wide v1

    .line 63
    .local v1, cost:D
    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->costCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget v5, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->maxNumCachedNgrams:I

    if-lt v4, v5, :cond_35

    .line 64
    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->costCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 66
    :cond_35
    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->costCache:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 70
    .end local v0           #cacheCost:Ljava/lang/Double;
    .end local v1           #cost:D
    .end local v3           #wordStr:Ljava/lang/String;
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->ngramCostHelper(Ljava/util/List;)D

    move-result-wide v1

    goto :goto_21
.end method

.method public ngramCostHelper(Ljava/util/List;)D
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->noBackoff:Z

    if-eqz v4, :cond_9

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->noBackoffCost(Ljava/util/List;)D

    move-result-wide v0

    .line 107
    :cond_8
    :goto_8
    return-wide v0

    .line 78
    :cond_9
    const/4 v3, 0x0

    .line 79
    .local v3, node:Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
    const-wide/16 v0, 0x0

    .line 81
    .local v0, cost:D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 82
    iget-object v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->trie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->lookup(Ljava/util/List;)Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    move-result-object v3

    .line 83
    if-eqz v3, :cond_29

    .line 84
    invoke-virtual {v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getValue()D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 85
    goto :goto_8

    .line 87
    :cond_29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_36

    .line 89
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->oovCost:D

    .line 81
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 91
    :cond_36
    iget-boolean v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->simulateProdlm:Z

    if-nez v4, :cond_3e

    .line 92
    iget-wide v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->stupidBackoffCost:D

    add-double/2addr v0, v4

    goto :goto_33

    .line 96
    :cond_3e
    iget v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->lmOrder:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_5e

    .line 97
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simulateProdlm does not work for order"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->lmOrder:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_5e
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->unkId:I

    if-eq v4, v5, :cond_33

    .line 101
    iget-wide v4, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->stupidBackoffCost:D

    add-double/2addr v0, v4

    goto :goto_33
.end method

.method public setStupidBackoffCost(D)V
    .registers 3
    .parameter "stupidBackoffCost"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->stupidBackoffCost:D

    .line 113
    return-void
.end method

.method public stupidBackoffCost()D
    .registers 3

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->stupidBackoffCost:D

    return-wide v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 5
    .parameter "buf"

    .prologue
    const/4 v0, 0x1

    .line 130
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 132
    iget v1, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->lmOrder:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 133
    iget-wide v1, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->oovCost:D

    invoke-virtual {p1, v1, v2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 134
    iget-boolean v1, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->noBackoff:Z

    if-eqz v1, :cond_20

    :goto_12
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 136
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->stupidBackoffCost:D

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/lm/ImplictTrieBasedLm;->trie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 138
    return-void

    .line 134
    :cond_20
    const/4 v0, 0x0

    goto :goto_12
.end method

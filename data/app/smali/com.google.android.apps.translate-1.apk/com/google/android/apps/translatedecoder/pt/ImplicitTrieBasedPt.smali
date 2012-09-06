.class public Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;
.super Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
.source "ImplicitTrieBasedPt.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CLASS_ID:I = 0x1

.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x3c7433ea49b1eba7L


# instance fields
.field private final srcTrie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

.field private final tgtPhrases:Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(IDLcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;)V
    .registers 6
    .parameter "maxPhraseLen"
    .parameter "oovCost"
    .parameter "srcTrie"
    .parameter "tgtPhrases"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;-><init>()V

    .line 47
    iput p1, p0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->maxPhraseLen:I

    .line 48
    iput-wide p2, p0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->oovCost:D

    .line 49
    iput-object p4, p0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->srcTrie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    .line 50
    iput-object p5, p0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->tgtPhrases:Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;

    .line 51
    return-void
.end method

.method public static readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/pt/PhraseTable;
    .registers 7
    .parameter "buf"

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 83
    .local v1, maxPhraseLen:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v2

    .line 86
    .local v2, oovCost:D
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    move-result-object v4

    .line 87
    .local v4, srcTrie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;

    move-result-object v5

    .line 88
    .local v5, tgtPhrases:Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;
    new-instance v0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;-><init>(IDLcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;)V

    return-object v0
.end method


# virtual methods
.method public getPhrases([I)Ljava/util/List;
    .registers 8
    .parameter "srcWords"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/pt/PhrasePair;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 55
    array-length v2, p1

    iget v3, p0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->maxPhraseLen:I

    if-le v2, v3, :cond_7

    .line 65
    :cond_6
    :goto_6
    return-object v1

    .line 58
    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->srcTrie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->lookup([I)Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    move-result-object v0

    .line 59
    .local v0, srcNode:Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_6

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->tgtPhrases:Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getValue()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->convertToPhrases([II)Ljava/util/List;

    move-result-object v1

    goto :goto_6
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    iget v0, p0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->maxPhraseLen:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 74
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->oovCost:D

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->srcTrie:Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/succinct/ImplicitTrie;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/pt/ImplicitTrieBasedPt;->tgtPhrases:Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/pt/TargetPhrasesContainer;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 78
    return-void
.end method

.class public Lcom/google/android/apps/translatedecoder/succinct/RegularTrieNodeList;
.super Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;
.source "RegularTrieNodeList.java"


# static fields
.field private static final serialVersionUID:J = 0x24e8c584734b8dbbL


# instance fields
.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/succinct/TrieNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/succinct/TrieNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, nodes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/succinct/TrieNode;>;"
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/succinct/RegularTrieNodeList;->nodes:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/apps/translatedecoder/succinct/TrieNode;)V
    .registers 8
    .parameter "node"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/succinct/RegularTrieNodeList;->nodes:Ljava/util/List;

    new-instance v1, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getWordId()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/succinct/RegularTrieNodeList;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    return-void
.end method

.method public fill(ILcom/google/android/apps/translatedecoder/succinct/TrieNode;)V
    .registers 6
    .parameter "id"
    .parameter "node"

    .prologue
    .line 31
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/succinct/RegularTrieNodeList;->nodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    .line 32
    .local v0, tem:Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getWordId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->setWordId(I)V

    .line 33
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getOffset()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->setOffset(I)V

    .line 34
    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->getValue()D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->setValue(D)V

    .line 35
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/succinct/RegularTrieNodeList;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "calling unimplement function"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

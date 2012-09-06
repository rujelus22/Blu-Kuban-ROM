.class public Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
.super Ljava/lang/Object;
.source "TrieNode.java"


# instance fields
.field private offset:I

.field private value:D

.field private wordId:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 19
    const-wide/high16 v0, -0x4010

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    .line 20
    return-void
.end method

.method public constructor <init>(IID)V
    .registers 5
    .parameter "wordId"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->wordId:I

    .line 24
    iput p2, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->offset:I

    .line 25
    iput-wide p3, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->value:D

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 58
    instance-of v2, p1, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    if-eqz v2, :cond_1d

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    .line 60
    .local v0, to:Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
    iget v2, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->wordId:I

    iget v3, v0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->wordId:I

    if-ne v2, v3, :cond_1d

    iget v2, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->offset:I

    iget v3, v0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->offset:I

    if-ne v2, v3, :cond_1d

    iget-wide v2, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->value:D

    iget-wide v4, v0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->value:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1d

    const/4 v1, 0x1

    .line 62
    .end local v0           #to:Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
    :cond_1d
    return v1
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->offset:I

    return v0
.end method

.method public getValue()D
    .registers 3

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->value:D

    return-wide v0
.end method

.method public getWordId()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->wordId:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 69
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setOffset(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 41
    iput p1, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->offset:I

    .line 42
    return-void
.end method

.method public setValue(D)V
    .registers 3
    .parameter "value"

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->value:D

    .line 50
    return-void
.end method

.method public setWordId(I)V
    .registers 2
    .parameter "wordId"

    .prologue
    .line 33
    iput p1, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->wordId:I

    .line 34
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wordId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->wordId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; offSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueForSort()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->wordId:I

    return v0
.end method

.class public Lcom/google/android/apps/translatedecoder/succinct/BinarySearch;
.super Ljava/lang/Object;
.source "BinarySearch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static search(Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;I)I
    .registers 3
    .parameter "nodes"
    .parameter "wordId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/translatedecoder/succinct/BinarySearch;->search(Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;IZ)I

    move-result v0

    return v0
.end method

.method public static search(Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;IIIZ)I
    .registers 14
    .parameter "nodes"
    .parameter "start"
    .parameter "end"
    .parameter "wordId"
    .parameter "returnInsPos"

    .prologue
    const/4 v8, -0x1

    .line 61
    move v5, p1

    .line 62
    .local v5, start1:I
    add-int/lit8 v0, p2, -0x1

    .line 63
    .local v0, end1:I
    const/4 v1, -0x1

    .line 64
    .local v1, middle:I
    const/4 v4, -0x1

    .line 65
    .local v4, res:I
    new-instance v3, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;

    const-wide/high16 v6, -0x4010

    invoke-direct {v3, v8, v8, v6, v7}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;-><init>(IID)V

    .line 66
    .local v3, node:Lcom/google/android/apps/translatedecoder/succinct/TrieNode;
    :cond_d
    :goto_d
    if-gt v5, v0, :cond_1d

    .line 67
    add-int v6, v5, v0

    div-int/lit8 v1, v6, 0x2

    .line 68
    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->fill(ILcom/google/android/apps/translatedecoder/succinct/TrieNode;)V

    .line 69
    invoke-virtual {v3}, Lcom/google/android/apps/translatedecoder/succinct/TrieNode;->valueForSort()I

    move-result v2

    .line 70
    .local v2, middleWordId:I
    if-ne p3, v2, :cond_1e

    .line 71
    move v4, v1

    .line 85
    .end local v2           #middleWordId:I
    :cond_1d
    return v4

    .line 73
    .restart local v2       #middleWordId:I
    :cond_1e
    if-le p3, v2, :cond_26

    .line 74
    add-int/lit8 v5, v1, 0x1

    .line 75
    if-eqz p4, :cond_d

    .line 76
    move v4, v5

    goto :goto_d

    .line 79
    :cond_26
    add-int/lit8 v0, v1, -0x1

    .line 80
    if-eqz p4, :cond_d

    .line 81
    move v4, v1

    goto :goto_d
.end method

.method public static search(Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;IZ)I
    .registers 5
    .parameter "nodes"
    .parameter "wordId"
    .parameter "returnInsPos"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;->size()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/apps/translatedecoder/succinct/BinarySearch;->search(Lcom/google/android/apps/translatedecoder/succinct/TrieNodeList;IIIZ)I

    move-result v0

    return v0
.end method

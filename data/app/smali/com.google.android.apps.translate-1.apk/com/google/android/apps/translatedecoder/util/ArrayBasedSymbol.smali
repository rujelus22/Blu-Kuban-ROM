.class public Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;
.super Lcom/google/android/apps/translatedecoder/util/SymbolTable;
.source "ArrayBasedSymbol.java"


# static fields
.field public static final CLASS_ID:I = 0x1

.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0xe1bc62d7ae4eab8L


# instance fields
.field private transient dynamicTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

.field private final sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translatedecoder/util/SortedStringArray;)V
    .registers 2
    .parameter "sortedArray"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    .line 35
    return-void
.end method

.method public static readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SymbolTable;
    .registers 3
    .parameter "buf"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    move-result-object v0

    .line 99
    .local v0, sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;
    new-instance v1, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;

    invoke-direct {v1, v0}, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;-><init>(Lcom/google/android/apps/translatedecoder/util/SortedStringArray;)V

    return-object v1
.end method


# virtual methods
.method public addWord(Ljava/lang/String;)I
    .registers 6
    .parameter "word"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->getPos(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, id:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 48
    .end local v0           #id:I
    :goto_9
    return v0

    .line 43
    .restart local v0       #id:I
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->dynamicTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    if-nez v1, :cond_39

    .line 45
    new-instance v1, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v2}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->maxPos()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->dynamicTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    .line 46
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First time add, the max id of static table is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v3}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->maxPos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 48
    :cond_39
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->dynamicTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->addWord(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method public allWords()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->getAllWords()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 7
    .parameter "word"

    .prologue
    const/4 v1, -0x1

    .line 54
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->getPos(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, id:I
    if-eq v0, v1, :cond_a

    .line 62
    .end local v0           #id:I
    :goto_9
    return v0

    .line 57
    .restart local v0       #id:I
    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->dynamicTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    if-eqz v2, :cond_15

    .line 58
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->dynamicTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->getId(Ljava/lang/String;)I

    move-result v0

    goto :goto_9

    .line 60
    :cond_15
    sget-object v2, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The word "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 61
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    move v0, v1

    .line 62
    goto :goto_9
.end method

.method public getWord(I)Ljava/lang/String;
    .registers 6
    .parameter "id"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, word:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 81
    .end local v0           #word:Ljava/lang/String;
    :goto_8
    return-object v0

    .line 76
    .restart local v0       #word:Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->dynamicTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    if-eqz v1, :cond_14

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->dynamicTbl:Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->getWord(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 79
    :cond_14
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 81
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasWord(Ljava/lang/String;)Z
    .registers 4
    .parameter "word"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->getPos(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public maximumId()I
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v0}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->maxPos()I

    move-result v0

    return v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/ArrayBasedSymbol;->sortedArray:Lcom/google/android/apps/translatedecoder/util/SortedStringArray;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translatedecoder/util/SortedStringArray;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 95
    return-void
.end method

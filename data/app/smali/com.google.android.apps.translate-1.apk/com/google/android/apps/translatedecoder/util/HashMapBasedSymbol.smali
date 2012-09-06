.class public Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;
.super Lcom/google/android/apps/translatedecoder/util/SymbolTable;
.source "HashMapBasedSymbol.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x146d8439488440beL


# instance fields
.field private curId:I

.field private final intToStrTbl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final strToIntTbl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;-><init>(I)V

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "curId"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/util/SymbolTable;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->strToIntTbl:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->intToStrTbl:Ljava/util/Map;

    .line 32
    iput p1, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->curId:I

    .line 33
    return-void
.end method


# virtual methods
.method public addWord(Ljava/lang/String;)I
    .registers 5
    .parameter "word"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->strToIntTbl:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 38
    .local v0, id:Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 44
    :goto_e
    return v1

    .line 41
    :cond_f
    iget v1, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->curId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->curId:I

    .line 42
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->strToIntTbl:Ljava/util/Map;

    iget v2, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->curId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->intToStrTbl:Ljava/util/Map;

    iget v2, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->curId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget v1, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->curId:I

    goto :goto_e
.end method

.method public allWords()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 75
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->strToIntTbl:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 76
    .local v3, res:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 77
    .local v0, i:I
    iget-object v5, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->strToIntTbl:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 78
    .local v4, word:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aput-object v4, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_13

    .line 80
    .end local v4           #word:Ljava/lang/String;
    :cond_25
    return-object v3
.end method

.method public getId(Ljava/lang/String;)I
    .registers 6
    .parameter "word"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->strToIntTbl:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 52
    .local v0, id:Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 57
    :goto_e
    return v1

    .line 55
    :cond_f
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The word "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 57
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public getWord(I)Ljava/lang/String;
    .registers 6
    .parameter "id"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->intToStrTbl:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, word:Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 69
    .end local v0           #word:Ljava/lang/String;
    :goto_e
    return-object v0

    .line 67
    .restart local v0       #word:Ljava/lang/String;
    :cond_f
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->logger:Ljava/util/logging/Logger;

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

    .line 68
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 69
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hasWord(Ljava/lang/String;)Z
    .registers 3
    .parameter "word"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->strToIntTbl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public maximumId()I
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "calling unimplement(ed) function"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 85
    sget-object v0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedSymbol;->logger:Ljava/util/logging/Logger;

    const-string v1, "calling unimplement(ed) function"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 87
    return-void
.end method

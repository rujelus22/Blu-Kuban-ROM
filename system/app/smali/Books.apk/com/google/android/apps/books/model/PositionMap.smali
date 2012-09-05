.class public Lcom/google/android/apps/books/model/PositionMap;
.super Ljava/lang/Object;
.source "PositionMap.java"


# instance fields
.field private final mOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, mOffsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, mPositions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/apps/books/model/PositionMap;->mOffsets:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/google/android/apps/books/model/PositionMap;->mPositions:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static empty()Lcom/google/android/apps/books/model/PositionMap;
    .registers 3

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, offsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 44
    .local v1, positions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/google/android/apps/books/model/PositionMap;

    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/books/model/PositionMap;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public static from(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/books/model/PositionMap;
    .registers 11
    .parameter "positionsJson"
    .parameter "offsetsJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 54
    .local v5, positionsArray:Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, offsetsArray:Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 56
    .local v6, positionsLength:I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 57
    .local v3, offsetsLength:I
    if-eq v6, v3, :cond_1c

    .line 58
    new-instance v7, Lorg/json/JSONException;

    const-string v8, "Array lengths did not match"

    invoke-direct {v7, v8}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 60
    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v1, offsets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v4, positions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    if-ge v0, v6, :cond_3e

    .line 63
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 66
    :cond_3e
    new-instance v7, Lcom/google/android/apps/books/model/PositionMap;

    invoke-direct {v7, v1, v4}, Lcom/google/android/apps/books/model/PositionMap;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v7
.end method


# virtual methods
.method public getCharacterOffsetAt(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/books/model/PositionMap;->mOffsets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCharacterOffsetAt(Lcom/google/android/apps/books/common/Position;)I
    .registers 6
    .parameter "position"

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/books/model/PositionMap;->getNumberOfPositions()I

    move-result v0

    .line 88
    .local v0, positionCount:I
    invoke-virtual {p1}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, positionString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, positionNumber:I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 90
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/model/PositionMap;->getReadingPositionAt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 91
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/model/PositionMap;->getCharacterOffsetAt(I)I

    move-result v3

    .line 94
    :goto_19
    return v3

    .line 89
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 94
    :cond_1d
    const/4 v3, -0x1

    goto :goto_19
.end method

.method public getNumberOfPositions()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/books/model/PositionMap;->mOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReadingPositionAt(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/books/model/PositionMap;->mPositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

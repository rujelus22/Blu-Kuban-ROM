.class public Lcom/google/android/music/StrictShuffler;
.super Ljava/lang/Object;
.source "StrictShuffler.java"


# instance fields
.field private mHistoryOfNumbers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHistorySize:I

.field private final mMaxHistorySize:I

.field private mPreviousNumbers:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/StrictShuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    .line 20
    invoke-static {}, Lcom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/StrictShuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/StrictShuffler;->mHistorySize:I

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/StrictShuffler;->mRandom:Ljava/util/Random;

    .line 34
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/android/music/StrictShuffler;->mMaxHistorySize:I

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "maxHistorySize"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/StrictShuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    .line 20
    invoke-static {}, Lcom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/StrictShuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/StrictShuffler;->mHistorySize:I

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/StrictShuffler;->mRandom:Ljava/util/Random;

    .line 38
    iput p1, p0, Lcom/google/android/music/StrictShuffler;->mMaxHistorySize:I

    .line 39
    return-void
.end method

.method private cleanUpHistory()V
    .registers 4

    .prologue
    .line 121
    iget-object v1, p0, Lcom/google/android/music/StrictShuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/music/StrictShuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/music/StrictShuffler;->mHistorySize:I

    if-lt v1, v2, :cond_2c

    .line 125
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/music/StrictShuffler;->mHistorySize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 126
    iget-object v1, p0, Lcom/google/android/music/StrictShuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/StrictShuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 129
    .end local v0           #i:I
    :cond_2c
    return-void
.end method

.method private getNextAvailableInt(I)I
    .registers 6
    .parameter "i"

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, possibleReturn:I
    iget-object v2, p0, Lcom/google/android/music/StrictShuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_26

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 114
    :cond_1c
    if-lt v1, p1, :cond_26

    .line 115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No valid return"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_26
    return v1
.end method


# virtual methods
.method public getHowManyInHistory()I
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/music/StrictShuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public injectHistoricalValue(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/music/StrictShuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/google/android/music/StrictShuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-direct {p0}, Lcom/google/android/music/StrictShuffler;->cleanUpHistory()V

    .line 55
    return-void
.end method

.method public isInHistory(I)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/music/StrictShuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .registers 8
    .parameter "i"

    .prologue
    .line 71
    iget v3, p0, Lcom/google/android/music/StrictShuffler;->mHistorySize:I

    if-ge p1, v3, :cond_29

    .line 72
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Given range ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") must be larger than the assigned history size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/music/StrictShuffler;->mHistorySize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_29
    invoke-direct {p0}, Lcom/google/android/music/StrictShuffler;->cleanUpHistory()V

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, iterations:I
    :cond_2d
    iget-object v3, p0, Lcom/google/android/music/StrictShuffler;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 81
    .local v1, possibleReturn:I
    iget v3, p0, Lcom/google/android/music/StrictShuffler;->mHistorySize:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3a

    move v2, v1

    .line 99
    .end local v1           #possibleReturn:I
    .local v2, possibleReturn:I
    :goto_39
    return v2

    .line 84
    .end local v2           #possibleReturn:I
    .restart local v1       #possibleReturn:I
    :cond_3a
    iget-object v3, p0, Lcom/google/android/music/StrictShuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 85
    iget-object v3, p0, Lcom/google/android/music/StrictShuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v3, p0, Lcom/google/android/music/StrictShuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 87
    .end local v1           #possibleReturn:I
    .restart local v2       #possibleReturn:I
    goto :goto_39

    .line 89
    .end local v2           #possibleReturn:I
    .restart local v1       #possibleReturn:I
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    .line 90
    const/16 v3, 0x14

    if-le v0, v3, :cond_2d

    .line 94
    const-string v3, "StrictShuffler"

    const-string v4, "Too many iterations to get a non-repeated random number.  Returning next available integer"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/music/StrictShuffler;->getNextAvailableInt(I)I

    move-result v1

    .line 97
    iget-object v3, p0, Lcom/google/android/music/StrictShuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v3, p0, Lcom/google/android/music/StrictShuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 99
    .end local v1           #possibleReturn:I
    .restart local v2       #possibleReturn:I
    goto :goto_39
.end method

.method public setHistorySize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/music/StrictShuffler;->mHistoryOfNumbers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 43
    iget-object v0, p0, Lcom/google/android/music/StrictShuffler;->mPreviousNumbers:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 44
    iget v0, p0, Lcom/google/android/music/StrictShuffler;->mMaxHistorySize:I

    if-le p1, v0, :cond_13

    .line 45
    iget v0, p0, Lcom/google/android/music/StrictShuffler;->mMaxHistorySize:I

    iput v0, p0, Lcom/google/android/music/StrictShuffler;->mHistorySize:I

    .line 49
    :goto_12
    return-void

    .line 47
    :cond_13
    iput p1, p0, Lcom/google/android/music/StrictShuffler;->mHistorySize:I

    goto :goto_12
.end method

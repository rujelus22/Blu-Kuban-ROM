.class Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;
.super Ljava/lang/Object;
.source "SttsAtom.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/mp4/SttsAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SttsIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private countInEntry:I

.field private currentDelta:I

.field private indexInEntry:I

.field private final sttsEntries:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, sttsEntries:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->sttsEntries:Ljava/util/Iterator;

    .line 61
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->sttsEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->indexInEntry:I

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->countInEntry:I

    if-ge v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public next()Ljava/lang/Integer;
    .registers 4

    .prologue
    .line 68
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->indexInEntry:I

    iget v2, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->countInEntry:I

    if-lt v1, v2, :cond_19

    .line 69
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->sttsEntries:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsEntry;

    .line 70
    .local v0, currentEntry:Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsEntry;
    iget v1, v0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsEntry;->delta:I

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->currentDelta:I

    .line 71
    iget v1, v0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsEntry;->count:I

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->countInEntry:I

    .line 72
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->indexInEntry:I

    .line 74
    .end local v0           #currentEntry:Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsEntry;
    :cond_19
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->indexInEntry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->indexInEntry:I

    .line 75
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->currentDelta:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/SttsAtom$SttsIterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

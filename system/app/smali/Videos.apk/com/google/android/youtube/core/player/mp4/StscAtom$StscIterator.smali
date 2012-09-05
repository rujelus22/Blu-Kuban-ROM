.class Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;
.super Ljava/lang/Object;
.source "StscAtom.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/mp4/StscAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StscIterator"
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
.field private currentChunk:I

.field private currentEntry:Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;

.field private currentSampleInChunk:I

.field private numSamplesInChunk:I

.field private final stscEntries:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;",
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
            "Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, stscEntries:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->stscEntries:Ljava/util/Iterator;

    .line 69
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentSampleInChunk:I

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->numSamplesInChunk:I

    if-lt v0, v1, :cond_38

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentEntry:Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;

    if-nez v0, :cond_14

    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->stscEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentEntry:Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;

    .line 80
    :cond_14
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentChunk:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentEntry:Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;

    iget v1, v1, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;->index:I

    if-ne v0, v1, :cond_2f

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentEntry:Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;

    iget v0, v0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;->count:I

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->numSamplesInChunk:I

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->stscEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentEntry:Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;

    .line 86
    :cond_2f
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentChunk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentChunk:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentSampleInChunk:I

    .line 89
    :cond_38
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentSampleInChunk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentSampleInChunk:I

    .line 90
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->currentChunk:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

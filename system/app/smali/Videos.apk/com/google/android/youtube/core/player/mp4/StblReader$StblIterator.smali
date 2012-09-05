.class Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;
.super Ljava/lang/Object;
.source "StblReader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/mp4/StblReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StblIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/youtube/core/player/mp4/Sample;",
        ">;"
    }
.end annotation


# instance fields
.field private final chunkNumbers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkOffsets:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentChunkOffset:I

.field private currentIndex:I

.field private dts:I

.field private nextSeekableSample:I

.field private previousChunkIndex:I

.field private final sampleSizes:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final seekableSamples:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timeDeltas:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final totalSamples:I

.field private totalSizeInChunk:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;I)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "numSamples"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, timeDeltas:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .local p2, sampleSizes:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .local p3, chunkNumbers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .local p4, chunkOffsets:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .local p5, seekableSamples:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->timeDeltas:Ljava/util/Iterator;

    .line 95
    iput-object p2, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->sampleSizes:Ljava/util/Iterator;

    .line 96
    iput-object p3, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->chunkNumbers:Ljava/util/Iterator;

    .line 97
    iput-object p4, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->chunkOffsets:Ljava/util/Iterator;

    .line 98
    iput-object p5, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->seekableSamples:Ljava/util/Iterator;

    .line 99
    iput p6, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->totalSamples:I

    .line 101
    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->dts:I

    .line 102
    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->previousChunkIndex:I

    .line 103
    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->currentChunkOffset:I

    .line 104
    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->totalSizeInChunk:I

    .line 105
    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->nextSeekableSample:I

    .line 106
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->sampleSizes:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/android/youtube/core/player/mp4/Sample;
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 113
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->nextSeekableSample:I

    if-ne v1, v7, :cond_20

    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->seekableSamples:Ljava/util/Iterator;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->seekableSamples:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 114
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->seekableSamples:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->nextSeekableSample:I

    .line 116
    :cond_20
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->sampleSizes:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 117
    .local v5, sampleSize:I
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->chunkNumbers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 118
    .local v6, chunkNumber:I
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->previousChunkIndex:I

    if-eq v6, v1, :cond_4e

    .line 119
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->chunkOffsets:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->currentChunkOffset:I

    .line 120
    iput v6, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->previousChunkIndex:I

    .line 121
    iput v10, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->totalSizeInChunk:I

    .line 123
    :cond_4e
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->currentChunkOffset:I

    iget v2, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->totalSizeInChunk:I

    add-int v4, v1, v2

    .line 124
    .local v4, offset:I
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->totalSizeInChunk:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->totalSizeInChunk:I

    .line 125
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->seekableSamples:Ljava/util/Iterator;

    if-eqz v1, :cond_65

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->nextSeekableSample:I

    iget v2, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_66

    :cond_65
    const/4 v10, 0x1

    .line 126
    .local v10, seekable:Z
    :cond_66
    if-eqz v10, :cond_6a

    .line 127
    iput v7, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->nextSeekableSample:I

    .line 129
    :cond_6a
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->timeDeltas:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 130
    .local v3, duration:I
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/Sample;

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->dts:I

    iget v2, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->dts:I

    iget v7, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->currentChunkOffset:I

    iget v8, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->currentIndex:I

    iget v9, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->totalSamples:I

    iget v11, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->currentIndex:I

    sub-int/2addr v9, v11

    add-int/lit8 v9, v9, -0x1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/player/mp4/Sample;-><init>(IIIIIIIIIZ)V

    .line 132
    .local v0, sample:Lcom/google/android/youtube/core/player/mp4/Sample;
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->currentIndex:I

    .line 133
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->dts:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->dts:I

    .line 134
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;->next()Lcom/google/android/youtube/core/player/mp4/Sample;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

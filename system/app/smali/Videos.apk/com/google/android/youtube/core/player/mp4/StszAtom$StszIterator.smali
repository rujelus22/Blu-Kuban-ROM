.class Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;
.super Ljava/lang/Object;
.source "StszAtom.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/mp4/StszAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StszIterator"
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
.field private currentEntry:I

.field private final hasOneSample:Z

.field private final numEntries:I

.field private final stszEntries:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;IZ)V
    .registers 4
    .parameter
    .parameter "numEntries"
    .parameter "hasOneSample"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, stszEntries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->stszEntries:Ljava/util/Iterator;

    .line 49
    iput p2, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->numEntries:I

    .line 50
    iput-boolean p3, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->hasOneSample:Z

    .line 51
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->stszEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->hasOneSample:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->currentEntry:I

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->numEntries:I

    if-ge v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public next()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, sampleSize:I
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->stszEntries:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->currentEntry:I

    .line 61
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->stszEntries:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    :cond_18
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->currentEntry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->currentEntry:I

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

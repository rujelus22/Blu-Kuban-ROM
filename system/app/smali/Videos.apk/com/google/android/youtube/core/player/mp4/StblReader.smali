.class public Lcom/google/android/youtube/core/player/mp4/StblReader;
.super Ljava/lang/Object;
.source "StblReader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/youtube/core/player/mp4/Sample;",
        ">;"
    }
.end annotation


# instance fields
.field private final chunkNumbers:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkOffsets:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final numSamples:I

.field private final sampleSizes:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final seekableSamples:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timeDeltas:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "numSamples"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, timeDeltas:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    .local p2, sampleSizes:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    .local p3, chunkNumbers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    .local p4, chunkOffsets:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    .local p5, seekableSamples:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->timeDeltas:Ljava/lang/Iterable;

    .line 52
    iput-object p2, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->sampleSizes:Ljava/lang/Iterable;

    .line 53
    iput-object p3, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->chunkNumbers:Ljava/lang/Iterable;

    .line 54
    iput-object p4, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->chunkOffsets:Ljava/lang/Iterable;

    .line 55
    iput-object p5, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->seekableSamples:Ljava/lang/Iterable;

    .line 56
    iput p6, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->numSamples:I

    .line 57
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/youtube/core/player/mp4/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->timeDeltas:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->sampleSizes:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->chunkNumbers:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->chunkOffsets:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->seekableSamples:Ljava/lang/Iterable;

    if-nez v5, :cond_25

    const/4 v5, 0x0

    :goto_1f
    iget v6, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->numSamples:I

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/player/mp4/StblReader$StblIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Iterator;I)V

    return-object v0

    :cond_25
    iget-object v5, p0, Lcom/google/android/youtube/core/player/mp4/StblReader;->seekableSamples:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    goto :goto_1f
.end method

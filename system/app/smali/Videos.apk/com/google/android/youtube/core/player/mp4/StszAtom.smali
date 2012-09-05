.class public Lcom/google/android/youtube/core/player/mp4/StszAtom;
.super Lcom/google/android/youtube/core/player/mp4/Atom;
.source "StszAtom.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/player/mp4/Atom;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private entryCount:I

.field private final sampleSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V
    .registers 4
    .parameter "size"
    .parameter "tag"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/mp4/Atom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->sampleSizes:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->entryCount:I

    .line 24
    return-void
.end method


# virtual methods
.method public getSampleCount()I
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->sampleSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->entryCount:I

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->sampleSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_b
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 78
    new-instance v1, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->sampleSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget v3, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->entryCount:I

    iget-object v4, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->sampleSizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v0, :cond_17

    :goto_13
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/youtube/core/player/mp4/StszAtom$StszIterator;-><init>(Ljava/util/Iterator;IZ)V

    return-object v1

    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public readFrom(Ljava/io/DataInputStream;)V
    .registers 6
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 30
    .local v1, sampleSize:I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->entryCount:I

    .line 31
    if-eqz v1, :cond_19

    .line 32
    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->sampleSizes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_18
    return-void

    .line 35
    :cond_19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget v2, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->entryCount:I

    if-ge v0, v2, :cond_18

    .line 36
    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/StszAtom;->sampleSizes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

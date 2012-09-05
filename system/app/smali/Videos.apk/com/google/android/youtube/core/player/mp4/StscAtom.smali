.class public Lcom/google/android/youtube/core/player/mp4/StscAtom;
.super Lcom/google/android/youtube/core/player/mp4/Atom;
.source "StscAtom.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;,
        Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;
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
.field private final sampleToChunkEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;",
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
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/mp4/Atom;-><init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom;->sampleToChunkEntries:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
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
    .line 100
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom;->sampleToChunkEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public readFrom(Ljava/io/DataInputStream;)V
    .registers 9
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 30
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 31
    .local v0, entryCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_23

    .line 32
    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/StscAtom;->sampleToChunkEntries:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/youtube/core/player/mp4/StscAtom$StscEntry;-><init>(III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 34
    :cond_23
    return-void
.end method

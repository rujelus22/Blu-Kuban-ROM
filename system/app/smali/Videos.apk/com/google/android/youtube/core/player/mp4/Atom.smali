.class public Lcom/google/android/youtube/core/player/mp4/Atom;
.super Ljava/lang/Object;
.source "Atom.java"


# instance fields
.field private final size:I

.field private final tag:Lcom/google/android/youtube/core/player/mp4/Tag;


# direct methods
.method public constructor <init>(ILcom/google/android/youtube/core/player/mp4/Tag;)V
    .registers 3
    .parameter "size"
    .parameter "tag"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/android/youtube/core/player/mp4/Atom;->size:I

    .line 33
    iput-object p2, p0, Lcom/google/android/youtube/core/player/mp4/Atom;->tag:Lcom/google/android/youtube/core/player/mp4/Tag;

    .line 34
    return-void
.end method


# virtual methods
.method public getContentSize()I
    .registers 3

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/Atom;->size:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/Atom;->getHeaderSize()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHeaderSize()I
    .registers 2

    .prologue
    .line 45
    const/16 v0, 0x8

    return v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/Atom;->size:I

    return v0
.end method

.method public getTag()Lcom/google/android/youtube/core/player/mp4/Tag;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/Atom;->tag:Lcom/google/android/youtube/core/player/mp4/Tag;

    return-object v0
.end method

.method public isContainer()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Ljava/io/DataInputStream;)V
    .registers 3
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/Atom;->getContentSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 70
    return-void
.end method

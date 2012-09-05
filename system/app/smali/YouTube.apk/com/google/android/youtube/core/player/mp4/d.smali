.class public final Lcom/google/android/youtube/core/player/mp4/d;
.super Lcom/google/android/youtube/core/player/mp4/a;
.source "SourceFile"


# instance fields
.field private a:B

.field private b:I


# direct methods
.method public constructor <init>(ILcom/google/android/youtube/core/player/mp4/s;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/mp4/a;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/google/android/youtube/core/player/mp4/d;->a:B

    .line 40
    iget-byte v0, p0, Lcom/google/android/youtube/core/player/mp4/d;->a:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 41
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 42
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/d;->b:I

    .line 43
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/d;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 49
    :goto_22
    return-void

    .line 45
    :cond_23
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/d;->b:I

    .line 47
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/mp4/d;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_22
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/d;->b:I

    return v0
.end method

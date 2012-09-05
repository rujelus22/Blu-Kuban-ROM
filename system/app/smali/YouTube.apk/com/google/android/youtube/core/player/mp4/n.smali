.class public final Lcom/google/android/youtube/core/player/mp4/n;
.super Lcom/google/android/youtube/core/player/mp4/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:I


# direct methods
.method public constructor <init>(ILcom/google/android/youtube/core/player/mp4/s;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/mp4/a;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/n;->a:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/player/mp4/n;->b:I

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataInputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 28
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 30
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/mp4/n;->b:I

    .line 31
    if-eqz v0, :cond_19

    .line 32
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/n;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_18
    return-void

    .line 35
    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/n;->b:I

    if-ge v0, v1, :cond_18

    .line 36
    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/n;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method public final e()I
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/google/android/youtube/core/player/mp4/n;->b:I

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_b
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 78
    new-instance v1, Lcom/google/android/youtube/core/player/mp4/o;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget v3, p0, Lcom/google/android/youtube/core/player/mp4/n;->b:I

    iget-object v4, p0, Lcom/google/android/youtube/core/player/mp4/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v0, :cond_17

    :goto_13
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/youtube/core/player/mp4/o;-><init>(Ljava/util/Iterator;IZ)V

    return-object v1

    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

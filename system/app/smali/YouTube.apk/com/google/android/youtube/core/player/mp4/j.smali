.class public final Lcom/google/android/youtube/core/player/mp4/j;
.super Lcom/google/android/youtube/core/player/mp4/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILcom/google/android/youtube/core/player/mp4/s;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/mp4/a;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/j;->a:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataInputStream;)V
    .registers 9
    .parameter

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 30
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 31
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_23

    .line 32
    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/j;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/youtube/core/player/mp4/k;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/youtube/core/player/mp4/k;-><init>(III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 34
    :cond_23
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 100
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/l;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.class public final Lcom/google/android/youtube/core/player/mp4/p;
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

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/p;->a:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataInputStream;)V
    .registers 8
    .parameter

    .prologue
    .line 30
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 31
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 32
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_1f

    .line 33
    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/p;->a:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/youtube/core/player/mp4/q;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/player/mp4/q;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 35
    :cond_1f
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 85
    new-instance v0, Lcom/google/android/youtube/core/player/mp4/r;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/mp4/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/player/mp4/r;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

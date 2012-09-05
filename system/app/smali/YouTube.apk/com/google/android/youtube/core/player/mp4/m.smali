.class public final Lcom/google/android/youtube/core/player/mp4/m;
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
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/mp4/a;-><init>(ILcom/google/android/youtube/core/player/mp4/s;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/mp4/m;->a:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataInputStream;)V
    .registers 6
    .parameter

    .prologue
    .line 26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 27
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 28
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_1a

    .line 29
    iget-object v2, p0, Lcom/google/android/youtube/core/player/mp4/m;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 31
    :cond_1a
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/player/mp4/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

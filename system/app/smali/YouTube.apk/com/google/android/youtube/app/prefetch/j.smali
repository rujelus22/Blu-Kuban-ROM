.class public final Lcom/google/android/youtube/app/prefetch/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/an;


# instance fields
.field private final a:Lcom/google/android/youtube/core/player/an;

.field private final b:Lcom/google/android/youtube/app/prefetch/d;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/prefetch/d;Lcom/google/android/youtube/core/player/an;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "target cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/an;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/j;->a:Lcom/google/android/youtube/core/player/an;

    .line 24
    const-string v0, "prefetchStore cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/d;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/j;->b:Lcom/google/android/youtube/app/prefetch/d;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;Z)Lcom/google/android/youtube/core/model/Stream$Quality;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/j;->a:Lcom/google/android/youtube/core/player/an;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/player/an;->a(Ljava/util/Set;Z)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/core/model/Video;Ljava/util/Set;)Lcom/google/android/youtube/core/model/t;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/j;->b:Lcom/google/android/youtube/app/prefetch/d;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/prefetch/d;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/t;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_b

    .line 33
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/j;->a:Lcom/google/android/youtube/core/player/an;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/player/an;->a(Lcom/google/android/youtube/core/model/Video;Ljava/util/Set;)Lcom/google/android/youtube/core/model/t;

    move-result-object v0

    goto :goto_a
.end method

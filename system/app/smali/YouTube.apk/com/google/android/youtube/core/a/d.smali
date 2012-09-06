.class public abstract Lcom/google/android/youtube/core/a/d;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# instance fields
.field final h:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/a/d;->h:Ljava/util/Map;

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/core/a/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30
    invoke-super {p0}, Lcom/google/android/youtube/core/a/a;->a()V

    .line 31
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 37
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/android/youtube/core/a/d;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/core/a/d;->h:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_10
    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/a/d;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/a/d;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/d;->notifyDataSetChanged()V

    .line 58
    :cond_10
    return-void
.end method

.method public final b(Landroid/net/Uri;)Z
    .registers 3
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/a/d;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c(Landroid/net/Uri;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/a/d;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/core/a/d;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcom/google/android/youtube/core/a/d;->notifyDataSetChanged()V

    .line 65
    :cond_10
    return-void
.end method

.method public final d(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter

    .prologue
    .line 68
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/a/d;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_3
.end method

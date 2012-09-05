.class final Lcom/google/android/youtube/app/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/c/b;

.field private final b:Lcom/google/android/youtube/core/async/g;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/c/b;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/app/c/c;->a:Lcom/google/android/youtube/app/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/g;

    iput-object v0, p0, Lcom/google/android/youtube/app/c/c;->b:Lcom/google/android/youtube/core/async/g;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/c/c;->c:Ljava/util/List;

    .line 73
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    move-object v2, p1

    .line 65
    check-cast v2, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget gets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " videos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget-object v1, p0, Lcom/google/android/youtube/app/c/c;->a:Lcom/google/android/youtube/app/c/b;

    invoke-static {v1}, Lcom/google/android/youtube/app/c/b;->a(Lcom/google/android/youtube/app/c/b;)Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    :goto_42
    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/youtube/app/c/c;->a:Lcom/google/android/youtube/app/c/b;

    invoke-static {v1}, Lcom/google/android/youtube/app/c/b;->b(Lcom/google/android/youtube/app/c/b;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/youtube/app/c/c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/c/c;->a:Lcom/google/android/youtube/app/c/b;

    invoke-static {v1}, Lcom/google/android/youtube/app/c/b;->c(Lcom/google/android/youtube/app/c/b;)I

    move-result v1

    if-ne v0, v1, :cond_2c

    :cond_65
    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/app/c/c;->a:Lcom/google/android/youtube/app/c/b;

    invoke-static {v1}, Lcom/google/android/youtube/app/c/b;->d(Lcom/google/android/youtube/app/c/b;)I

    move-result v1

    if-ge v0, v1, :cond_8a

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->a:Lcom/google/android/youtube/app/c/b;

    invoke-static {v0}, Lcom/google/android/youtube/app/c/b;->e(Lcom/google/android/youtube/app/c/b;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    :cond_86
    :goto_86
    return-void

    :cond_87
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    goto :goto_42

    :cond_8a
    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->b:Lcom/google/android/youtube/core/async/g;

    new-instance v1, Ljava/lang/Exception;

    const-string v3, "Unable to load any teasers"

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_86

    :cond_9f
    new-instance v0, Lcom/google/android/youtube/app/c/d;

    iget-object v1, p0, Lcom/google/android/youtube/app/c/c;->a:Lcom/google/android/youtube/app/c/b;

    iget-object v3, p0, Lcom/google/android/youtube/app/c/c;->b:Lcom/google/android/youtube/core/async/g;

    iget-object v4, p0, Lcom/google/android/youtube/app/c/c;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/youtube/app/c/c;->c:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/youtube/app/c/c;->a:Lcom/google/android/youtube/app/c/b;

    invoke-static {v6}, Lcom/google/android/youtube/app/c/b;->b(Lcom/google/android/youtube/app/c/b;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/app/c/d;-><init>(Lcom/google/android/youtube/app/c/b;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/g;ILjava/util/List;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/c/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    iget-object v3, p0, Lcom/google/android/youtube/app/c/c;->a:Lcom/google/android/youtube/app/c/b;

    invoke-static {v3}, Lcom/google/android/youtube/app/c/b;->a(Lcom/google/android/youtube/app/c/b;)Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-object v3, p0, Lcom/google/android/youtube/app/c/c;->a:Lcom/google/android/youtube/app/c/b;

    invoke-static {v3}, Lcom/google/android/youtube/app/c/b;->f(Lcom/google/android/youtube/app/c/b;)Lcom/google/android/youtube/core/client/af;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    invoke-interface {v3, v1, v0}, Lcom/google/android/youtube/core/client/af;->d(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_bc

    :cond_dc
    iget-object v3, p0, Lcom/google/android/youtube/app/c/c;->a:Lcom/google/android/youtube/app/c/b;

    invoke-static {v3}, Lcom/google/android/youtube/app/c/b;->f(Lcom/google/android/youtube/app/c/b;)Lcom/google/android/youtube/core/client/af;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    invoke-interface {v3, v1, v0}, Lcom/google/android/youtube/core/client/af;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_bc
.end method

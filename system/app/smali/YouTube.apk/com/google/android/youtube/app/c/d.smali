.class final Lcom/google/android/youtube/app/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/c/b;

.field private final b:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final c:Lcom/google/android/youtube/core/async/g;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/c/b;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/g;ILjava/util/List;Ljava/util/Map;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/youtube/app/c/d;->a:Lcom/google/android/youtube/app/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/google/android/youtube/app/c/d;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 133
    iput-object p3, p0, Lcom/google/android/youtube/app/c/d;->c:Lcom/google/android/youtube/core/async/g;

    .line 134
    iput-object p5, p0, Lcom/google/android/youtube/app/c/d;->f:Ljava/util/List;

    .line 135
    iput-object p6, p0, Lcom/google/android/youtube/app/c/d;->g:Ljava/util/Map;

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/c/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 137
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/c/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 138
    return-void
.end method

.method private a()V
    .registers 7

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/app/c/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_65

    .line 150
    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 151
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/youtube/app/c/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/app/c/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 153
    iget-object v1, p0, Lcom/google/android/youtube/app/c/d;->a:Lcom/google/android/youtube/app/c/b;

    invoke-static {v1}, Lcom/google/android/youtube/app/c/b;->a(Lcom/google/android/youtube/app/c/b;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    .line 154
    :goto_32
    iget-object v2, p0, Lcom/google/android/youtube/app/c/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 155
    iget-object v2, p0, Lcom/google/android/youtube/app/c/d;->g:Ljava/util/Map;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/a/y;

    .line 156
    if-eqz v1, :cond_1c

    if-eqz v2, :cond_1c

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 157
    new-instance v5, Lcom/google/android/youtube/app/c/a;

    iget v2, v2, Lcom/google/android/youtube/app/a/y;->a:I

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/youtube/app/c/a;-><init>(Lcom/google/android/youtube/core/model/Video;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 153
    :cond_5b
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    goto :goto_32

    .line 160
    :cond_5e
    iget-object v0, p0, Lcom/google/android/youtube/app/c/d;->c:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/app/c/d;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, v3}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    :cond_65
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 119
    const-string v0, "widget thumbnail error"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/youtube/app/c/d;->a()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 119
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    iget-object v0, p0, Lcom/google/android/youtube/app/c/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/youtube/app/c/d;->a()V

    return-void
.end method

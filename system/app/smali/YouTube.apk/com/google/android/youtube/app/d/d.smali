.class final Lcom/google/android/youtube/app/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/d/b;

.field private final b:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final c:Lcom/google/android/youtube/core/async/l;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/d/b;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/l;ILjava/util/List;Ljava/util/Map;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/youtube/app/d/d;->a:Lcom/google/android/youtube/app/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/google/android/youtube/app/d/d;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 133
    iput-object p3, p0, Lcom/google/android/youtube/app/d/d;->c:Lcom/google/android/youtube/core/async/l;

    .line 134
    iput-object p5, p0, Lcom/google/android/youtube/app/d/d;->f:Ljava/util/List;

    .line 135
    iput-object p6, p0, Lcom/google/android/youtube/app/d/d;->g:Ljava/util/Map;

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/d/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 137
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/d/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 138
    return-void
.end method

.method private a()V
    .registers 7

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/app/d/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_65

    .line 161
    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/youtube/app/d/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/app/d/d;->f:Ljava/util/List;

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

    .line 164
    iget-object v1, p0, Lcom/google/android/youtube/app/d/d;->a:Lcom/google/android/youtube/app/d/b;

    invoke-static {v1}, Lcom/google/android/youtube/app/d/b;->a(Lcom/google/android/youtube/app/d/b;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    .line 165
    :goto_32
    iget-object v2, p0, Lcom/google/android/youtube/app/d/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 166
    iget-object v2, p0, Lcom/google/android/youtube/app/d/d;->g:Ljava/util/Map;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/app/adapter/bu;

    .line 167
    if-eqz v1, :cond_1c

    if-eqz v2, :cond_1c

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 168
    new-instance v5, Lcom/google/android/youtube/app/d/a;

    iget v2, v2, Lcom/google/android/youtube/app/adapter/bu;->a:I

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/youtube/app/d/a;-><init>(Lcom/google/android/youtube/core/model/Video;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 164
    :cond_5b
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    goto :goto_32

    .line 171
    :cond_5e
    iget-object v0, p0, Lcom/google/android/youtube/app/d/d;->c:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/app/d/d;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, v3}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
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

    invoke-direct {p0}, Lcom/google/android/youtube/app/d/d;->a()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 119
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3f40

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {p2, v2, v0, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/d/d;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/youtube/app/d/d;->a()V

    return-void
.end method

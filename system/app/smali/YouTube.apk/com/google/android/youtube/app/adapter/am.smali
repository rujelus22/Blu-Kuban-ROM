.class final Lcom/google/android/youtube/app/adapter/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/al;

.field private final b:Lcom/google/android/youtube/core/model/LiveEvent;

.field private final c:Lcom/google/android/youtube/core/b/ae;

.field private final d:Lcom/google/android/youtube/core/b/ag;

.field private final e:Lcom/google/android/youtube/core/async/l;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/al;Lcom/google/android/youtube/core/model/LiveEvent;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/async/l;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/am;->a:Lcom/google/android/youtube/app/adapter/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/am;->b:Lcom/google/android/youtube/core/model/LiveEvent;

    .line 186
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/am;->c:Lcom/google/android/youtube/core/b/ae;

    .line 187
    iput-object p4, p0, Lcom/google/android/youtube/app/adapter/am;->d:Lcom/google/android/youtube/core/b/ag;

    .line 188
    iput-object p5, p0, Lcom/google/android/youtube/app/adapter/am;->e:Lcom/google/android/youtube/core/async/l;

    .line 189
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/am;->c:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/am;->b:Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->ownerUri:Landroid/net/Uri;

    new-instance v2, Lcom/google/android/youtube/app/adapter/ap;

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/am;->a:Lcom/google/android/youtube/app/adapter/al;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/am;->b:Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v5, p0, Lcom/google/android/youtube/app/adapter/am;->d:Lcom/google/android/youtube/core/b/ag;

    iget-object v6, p0, Lcom/google/android/youtube/app/adapter/am;->e:Lcom/google/android/youtube/core/async/l;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/youtube/app/adapter/ap;-><init>(Lcom/google/android/youtube/app/adapter/al;Lcom/google/android/youtube/core/model/LiveEvent;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 173
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/am;->a:Lcom/google/android/youtube/app/adapter/al;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/al;->c(Lcom/google/android/youtube/app/adapter/al;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/am;->b:Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/am;->e:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

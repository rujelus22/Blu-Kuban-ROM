.class final Lcom/google/android/youtube/app/adapter/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/al;

.field private final b:Lcom/google/android/youtube/core/model/LiveEvent;

.field private final c:Lcom/google/android/youtube/core/b/ag;

.field private final d:Lcom/google/android/youtube/core/async/l;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/al;Lcom/google/android/youtube/core/model/LiveEvent;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/async/l;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/ap;->a:Lcom/google/android/youtube/app/adapter/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/ap;->b:Lcom/google/android/youtube/core/model/LiveEvent;

    .line 215
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/ap;->c:Lcom/google/android/youtube/core/b/ag;

    .line 216
    iput-object p4, p0, Lcom/google/android/youtube/app/adapter/ap;->d:Lcom/google/android/youtube/core/async/l;

    .line 217
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 204
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 204
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ap;->a:Lcom/google/android/youtube/app/adapter/al;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/al;->c(Lcom/google/android/youtube/app/adapter/al;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/ap;->b:Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ap;->c:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/ap;->d:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method

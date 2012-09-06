.class final Lcom/google/android/youtube/app/ui/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cj;

.field private final b:Lcom/google/android/youtube/core/b/ag;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/cj;Lcom/google/android/youtube/core/b/ag;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cq;->a:Lcom/google/android/youtube/app/ui/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cq;->b:Lcom/google/android/youtube/core/b/ag;

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/cj;Lcom/google/android/youtube/core/b/ag;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/ui/cq;-><init>(Lcom/google/android/youtube/app/ui/cj;Lcom/google/android/youtube/core/b/ag;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 215
    const-string v0, "Error downloading video info"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 215
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cq;->b:Lcom/google/android/youtube/core/b/ag;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->defaultThumbnailUri:Landroid/net/Uri;

    new-instance v2, Lcom/google/android/youtube/app/ui/cr;

    invoke-direct {v2, p0, p2}, Lcom/google/android/youtube/app/ui/cr;-><init>(Lcom/google/android/youtube/app/ui/cq;Lcom/google/android/youtube/core/model/Video;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    return-void
.end method

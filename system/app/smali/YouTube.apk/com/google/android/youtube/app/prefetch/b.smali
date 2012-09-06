.class final Lcom/google/android/youtube/app/prefetch/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

.field private final b:Lcom/google/android/youtube/core/model/Video;

.field private final c:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/prefetch/PrefetchService;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/prefetch/Prefetch$Source;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/google/android/youtube/app/prefetch/b;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object p2, p0, Lcom/google/android/youtube/app/prefetch/b;->b:Lcom/google/android/youtube/core/model/Video;

    .line 508
    iput-object p3, p0, Lcom/google/android/youtube/app/prefetch/b;->c:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    .line 509
    iput p4, p0, Lcom/google/android/youtube/app/prefetch/b;->d:I

    .line 510
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 500
    check-cast p1, Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to retrieve stream length for video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/b;->b:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/b;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Lcom/google/android/youtube/app/prefetch/PrefetchService;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    move-object v4, p1

    .line 500
    check-cast v4, Landroid/net/Uri;

    check-cast p2, Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/b;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/b;->b:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/b;->c:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    iget v3, p0, Lcom/google/android/youtube/app/prefetch/b;->d:I

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Lcom/google/android/youtube/app/prefetch/PrefetchService;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/prefetch/Prefetch$Source;ILandroid/net/Uri;J)V

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/b;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Lcom/google/android/youtube/app/prefetch/PrefetchService;)V

    return-void
.end method

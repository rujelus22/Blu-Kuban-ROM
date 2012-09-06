.class final Lcom/google/android/youtube/app/prefetch/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

.field private final b:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/prefetch/PrefetchService;Lcom/google/android/youtube/app/prefetch/Prefetch$Source;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/android/youtube/app/prefetch/c;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    const-string v0, "source can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/c;->b:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    .line 456
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to retrieve videos from source: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/c;->b:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/c;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Lcom/google/android/youtube/app/prefetch/PrefetchService;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 450
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/c;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/c;->b:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-static {v0, p2, v1}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Lcom/google/android/youtube/app/prefetch/PrefetchService;Ljava/lang/Iterable;Lcom/google/android/youtube/app/prefetch/Prefetch$Source;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/c;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Lcom/google/android/youtube/app/prefetch/PrefetchService;)V

    return-void
.end method

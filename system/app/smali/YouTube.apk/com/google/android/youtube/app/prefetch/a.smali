.class final Lcom/google/android/youtube/app/prefetch/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

.field private final b:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

.field private final c:Lcom/google/android/youtube/app/ui/av;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/prefetch/PrefetchService;Lcom/google/android/youtube/app/prefetch/Prefetch$Source;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/google/android/youtube/app/prefetch/a;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    const-string v0, "source can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/a;->b:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    .line 477
    new-instance v0, Lcom/google/android/youtube/app/ui/av;

    invoke-direct {v0}, Lcom/google/android/youtube/app/ui/av;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/a;->c:Lcom/google/android/youtube/app/ui/av;

    .line 478
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to retrieve events from source: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/a;->b:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/a;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Lcom/google/android/youtube/app/prefetch/PrefetchService;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 470
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event;

    iget-object v3, p0, Lcom/google/android/youtube/app/prefetch/a;->c:Lcom/google/android/youtube/app/ui/av;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/app/ui/av;->a(Lcom/google/android/youtube/core/model/Event;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_25
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/a;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/a;->b:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Lcom/google/android/youtube/app/prefetch/PrefetchService;Ljava/lang/Iterable;Lcom/google/android/youtube/app/prefetch/Prefetch$Source;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/a;->a:Lcom/google/android/youtube/app/prefetch/PrefetchService;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Lcom/google/android/youtube/app/prefetch/PrefetchService;)V

    return-void
.end method

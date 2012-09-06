.class public final Lcom/google/android/youtube/app/prefetch/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/Analytics;

.field private final b:Lcom/google/android/youtube/core/transfer/l;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/k;->a:Lcom/google/android/youtube/core/Analytics;

    .line 30
    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/k;->b:Lcom/google/android/youtube/core/transfer/l;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/transfer/l;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "analytics can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/k;->a:Lcom/google/android/youtube/core/Analytics;

    .line 23
    const-string v0, "downloadService can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/l;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/k;->b:Lcom/google/android/youtube/core/transfer/l;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;Ljava/util/Set;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/Prefetch;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing prefetch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/k;->b:Lcom/google/android/youtube/core/transfer/l;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/transfer/l;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 43
    :cond_31
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_35
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/Prefetch;

    .line 44
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding prefetch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    new-instance v2, Lcom/google/android/youtube/core/transfer/d;

    invoke-direct {v2}, Lcom/google/android/youtube/core/transfer/d;-><init>()V

    const-string v3, "size"

    iget-wide v4, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->c:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;J)V

    const-string v3, "source"

    iget-object v4, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->d:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-virtual {v4}, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "index"

    iget v4, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->e:I

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/google/android/youtube/app/prefetch/k;->b:Lcom/google/android/youtube/core/transfer/l;

    iget-object v4, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v2}, Lcom/google/android/youtube/core/transfer/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/d;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/k;->a:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "PrefetchAdded"

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    goto :goto_35

    .line 49
    :cond_89
    return-void
.end method

.class final Lcom/google/android/youtube/core/async/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/a/e;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/a/e;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/async/a/e;->a(Lcom/google/android/youtube/core/async/a/e;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 125
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/a/e;->a(Lcom/google/android/youtube/core/async/a/e;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/a/e;->a(Lcom/google/android/youtube/core/async/a/e;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    if-nez v0, :cond_44

    :cond_23
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/async/a/e;->b(Lcom/google/android/youtube/core/async/a/e;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    :goto_29
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/a/e;->c(Lcom/google/android/youtube/core/async/a/e;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/async/a/e;->a(Lcom/google/android/youtube/core/async/a/e;Z)Z

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/a/e;->d(Lcom/google/android/youtube/core/async/a/e;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/async/a/e;->a(Lcom/google/android/youtube/core/async/a/e;I)V

    :cond_42
    monitor-exit v1

    return-void

    :cond_44
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/a/f;->a:Lcom/google/android/youtube/core/async/a/e;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/a/e;->b(Lcom/google/android/youtube/core/async/a/e;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/async/a/e;->b(Lcom/google/android/youtube/core/async/a/e;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;
    :try_end_55
    .catchall {:try_start_7 .. :try_end_55} :catchall_56

    goto :goto_29

    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0
.end method

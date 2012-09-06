.class final Lcom/google/android/youtube/app/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/i;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/g;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/g;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/g;->a(Lcom/google/android/youtube/app/g;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_7
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/g;->a(Lcom/google/android/youtube/app/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/bc;

    .line 75
    invoke-interface {v0}, Lcom/google/android/youtube/core/async/bc;->e_()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    goto :goto_11

    .line 78
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0

    .line 77
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/g;->a(Lcom/google/android/youtube/app/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_21

    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/g;->a(Lcom/google/android/youtube/app/g;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_7
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/g;->a(Lcom/google/android/youtube/app/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/bc;

    .line 67
    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/bc;->a(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    goto :goto_11

    .line 70
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0

    .line 69
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/g;->a(Lcom/google/android/youtube/app/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_21

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/g;->a(Lcom/google/android/youtube/app/g;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 82
    :try_start_7
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/g;->a(Lcom/google/android/youtube/app/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/bc;

    .line 83
    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/bc;->a(Ljava/lang/Exception;)V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    goto :goto_11

    .line 86
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0

    .line 85
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/google/android/youtube/app/h;->a:Lcom/google/android/youtube/app/g;

    invoke-static {v0}, Lcom/google/android/youtube/app/g;->a(Lcom/google/android/youtube/app/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_21

    return-void
.end method

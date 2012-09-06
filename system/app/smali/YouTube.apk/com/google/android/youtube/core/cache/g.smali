.class public final Lcom/google/android/youtube/core/cache/g;
.super Lcom/google/android/youtube/core/cache/b;
.source "SourceFile"


# instance fields
.field final b:Ljava/util/Map;

.field private final c:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x3f40

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/b;-><init>(I)V

    .line 37
    int-to-float v0, p1

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/youtube/core/cache/g;->b:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/g;->c:Ljava/lang/ref/ReferenceQueue;

    .line 40
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/cache/b;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result-object v1

    .line 45
    if-eqz v1, :cond_9

    .line 58
    :goto_7
    monitor-exit p0

    return-object v1

    .line 48
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/h;

    .line 49
    if-eqz v0, :cond_26

    .line 50
    invoke-virtual {v0}, Lcom/google/android/youtube/core/cache/h;->get()Ljava/lang/Object;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1c

    .line 53
    invoke-super {p0, p1, v0}, Lcom/google/android/youtube/core/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    :cond_1c
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_23

    :goto_21
    move-object v1, v0

    .line 58
    goto :goto_7

    .line 44
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_26
    move-object v0, v1

    goto :goto_21
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/core/utils/o;)V
    .registers 4
    .parameter

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/cache/b;->a(Lcom/google/android/youtube/core/utils/o;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/youtube/core/utils/o;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    goto :goto_e

    .line 95
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 101
    :cond_25
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    :goto_a
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/g;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/h;

    if-eqz v0, :cond_21

    iget-object v2, p0, Lcom/google/android/youtube/core/cache/g;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/youtube/core/cache/h;->a(Lcom/google/android/youtube/core/cache/h;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_a

    .line 63
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sub-int v0, v1, v0

    if-lez v0, :cond_54

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " soft entries purged. SoftMap size is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/g;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_54
    .catchall {:try_start_21 .. :try_end_54} :catchall_1e

    .line 65
    :cond_54
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/cache/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_13

    .line 88
    iget-object v1, p0, Lcom/google/android/youtube/core/cache/g;->b:Ljava/util/Map;

    new-instance v2, Lcom/google/android/youtube/core/cache/h;

    iget-object v3, p0, Lcom/google/android/youtube/core/cache/g;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v0, v3}, Lcom/google/android/youtube/core/cache/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 90
    :cond_13
    monitor-exit p0

    return-object v0

    .line 86
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/youtube/core/cache/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/g;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

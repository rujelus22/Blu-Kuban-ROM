.class final Lcom/google/android/youtube/app/remote/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/bd;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/bd;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/bl;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/bd;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/bl;-><init>(Lcom/google/android/youtube/app/remote/bd;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 275
    const-string v0, "Error loading available screens"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 275
    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bl;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->c(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_4f

    :cond_13
    :goto_13
    if-nez v2, :cond_a1

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/bl;->a:Lcom/google/android/youtube/app/remote/bd;

    monitor-enter v1

    :try_start_18
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/bl;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/bd;->c(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bb;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/bl;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/bd;->c(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/bl;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/bd;->d(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/bl;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v3, v0}, Lcom/google/android/youtube/app/remote/bd;->a(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/bb;)V
    :try_end_4b
    .catchall {:try_start_18 .. :try_end_4b} :catchall_4c

    goto :goto_22

    :catchall_4c
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4f
    move v1, v2

    :goto_50
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6a

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bb;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/app/remote/bb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_50

    :cond_6a
    const/4 v2, 0x1

    goto :goto_13

    :cond_6c
    :try_start_6c
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_70
    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/bb;

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/bl;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/bd;->c(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/bl;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/bd;->c(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/bl;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/bd;->d(Lcom/google/android/youtube/app/remote/bd;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/bl;->a:Lcom/google/android/youtube/app/remote/bd;

    invoke-static {v3, v0}, Lcom/google/android/youtube/app/remote/bd;->b(Lcom/google/android/youtube/app/remote/bd;Lcom/google/android/youtube/app/remote/bb;)V

    goto :goto_70

    :cond_a0
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_6c .. :try_end_a1} :catchall_4c

    :cond_a1
    return-void
.end method

.class public Lcom/google/android/apps/unveil/env/AbstractProvider;
.super Ljava/lang/Object;
.source "AbstractProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;
    }
.end annotation


# instance fields
.field private final listenerReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/AbstractProvider;->listenerReferences:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public final declared-synchronized addListener(Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 32
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/AbstractProvider;->listenerReferences:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 33
    monitor-exit p0

    return-void

    .line 32
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized notifyListenersOfChange()V
    .registers 5

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/AbstractProvider;->listenerReferences:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 37
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;>;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 39
    .local v2, listenerReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;

    .line 40
    .local v1, listener:Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;
    if-nez v1, :cond_22

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 36
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;>;>;"
    .end local v1           #listener:Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;
    .end local v2           #listenerReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;>;"
    :catchall_1f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 43
    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;>;>;"
    .restart local v1       #listener:Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;
    .restart local v2       #listenerReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;>;"
    :cond_22
    :try_start_22
    invoke-interface {v1, p0}, Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;->onItemsChanged(Lcom/google/android/apps/unveil/env/AbstractProvider;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    goto :goto_7

    .line 46
    .end local v1           #listener:Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;
    .end local v2           #listenerReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/apps/unveil/env/AbstractProvider$ItemsChangedListener;>;"
    :cond_26
    monitor-exit p0

    return-void
.end method

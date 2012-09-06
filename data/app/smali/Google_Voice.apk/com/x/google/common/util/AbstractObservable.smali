.class public abstract Lcom/x/google/common/util/AbstractObservable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/util/Observable;


# instance fields
.field protected final observers:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/x/google/common/util/Observer;)V
    .registers 5

    iget-object v1, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/x/google/common/util/AbstractObservable;->indexOf(Lcom/x/google/common/util/Observer;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_f
    monitor-exit v1

    return-void

    :cond_11
    iget-object v2, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_f

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public addWeakObserver(Lcom/x/google/common/util/Observer;)V
    .registers 5

    iget-object v1, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/x/google/common/util/AbstractObservable;->indexOf(Lcom/x/google/common/util/Observer;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_14
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getNumObservedBy(Ljava/lang/Class;)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_3
    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/ref/WeakReference;

    if-ne v3, v4, :cond_1f

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_1f
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    add-int/lit8 v2, v2, 0x1

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_2b
    return v2
.end method

.method public declared-synchronized getNumObservers(Ljava/lang/Class;)I
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    move v2, v0

    move v1, v0

    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2f

    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/ref/WeakReference;

    if-ne v3, v4, :cond_20

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_20
    if-eqz v0, :cond_34

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_31

    move-result v0

    if-eqz v0, :cond_34

    add-int/lit8 v0, v1, 0x1

    :goto_2a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_4

    :cond_2f
    monitor-exit p0

    return v1

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_34
    move v0, v1

    goto :goto_2a
.end method

.method public getObservers()[Lcom/x/google/common/util/Observer;
    .registers 8

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    monitor-enter v4

    :try_start_4
    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lcom/x/google/common/util/Observer;

    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_15
    if-ltz v3, :cond_49

    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/ref/WeakReference;

    if-ne v5, v6, :cond_41

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    add-int v5, v3, v1

    check-cast v0, Lcom/x/google/common/util/Observer;

    aput-object v0, v2, v5

    move v0, v1

    :goto_34
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v1, v0

    goto :goto_15

    :cond_39
    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_34

    :cond_41
    add-int v5, v3, v1

    check-cast v0, Lcom/x/google/common/util/Observer;

    aput-object v0, v2, v5

    move v0, v1

    goto :goto_34

    :cond_49
    if-lez v1, :cond_59

    array-length v0, v2

    sub-int/2addr v0, v1

    new-array v0, v0, [Lcom/x/google/common/util/Observer;

    const/4 v3, 0x0

    array-length v5, v0

    invoke-static {v2, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_54
    monitor-exit v4

    return-object v0

    :catchall_56
    move-exception v0

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    move-object v0, v2

    goto :goto_54
.end method

.method protected indexOf(Lcom/x/google/common/util/Observer;)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/ref/WeakReference;

    if-ne v2, v3, :cond_1e

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_1e
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :goto_24
    return v1

    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_29
    const/4 v1, -0x1

    goto :goto_24
.end method

.method public isObservedBy(Lcom/x/google/common/util/Observer;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/x/google/common/util/AbstractObservable;->indexOf(Lcom/x/google/common/util/Observer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isWeakObserver(Lcom/x/google/common/util/Observer;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/x/google/common/util/AbstractObservable;->indexOf(Lcom/x/google/common/util/Observer;)I

    move-result v0

    iget-object v1, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/ref/WeakReference;

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public notifyObservers()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/x/google/common/util/AbstractObservable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lcom/x/google/common/util/AbstractObservable;->getObservers()[Lcom/x/google/common/util/Observer;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    aget-object v2, v1, v0

    invoke-interface {v2, p0, p1}, Lcom/x/google/common/util/Observer;->update(Lcom/x/google/common/util/Observable;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    return-void
.end method

.method public removeAllObservers()V
    .registers 3

    iget-object v1, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeObserver(Lcom/x/google/common/util/Observer;)Z
    .registers 7

    iget-object v2, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_c
    if-ltz v1, :cond_34

    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/ref/WeakReference;

    if-ne v3, v4, :cond_22

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_22
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/x/google/common/util/AbstractObservable;->observers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 v0, 0x1

    monitor-exit v2

    :goto_2f
    return v0

    :cond_30
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_c

    :cond_34
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_2f

    :catchall_37
    move-exception v0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v0
.end method

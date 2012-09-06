.class public Lcom/jme3/app/state/AppStateManager;
.super Ljava/lang/Object;
.source "AppStateManager.java"


# instance fields
.field private final app:Lcom/jme3/app/Application;

.field private final initializing:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList",
            "<",
            "Lcom/jme3/app/state/AppState;",
            ">;"
        }
    .end annotation
.end field

.field private final states:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList",
            "<",
            "Lcom/jme3/app/state/AppState;",
            ">;"
        }
    .end annotation
.end field

.field private final terminating:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList",
            "<",
            "Lcom/jme3/app/state/AppState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jme3/app/Application;)V
    .registers 4
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/app/state/AppState;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    .line 78
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/app/state/AppState;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    .line 84
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/app/state/AppState;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/app/state/AppStateManager;->terminating:Lcom/jme3/util/SafeArrayList;

    .line 95
    iput-object p1, p0, Lcom/jme3/app/state/AppStateManager;->app:Lcom/jme3/app/Application;

    .line 96
    return-void
.end method


# virtual methods
.method public attach(Lcom/jme3/app/state/AppState;)Z
    .registers 4
    .parameter "state"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v1

    .line 126
    :try_start_3
    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 127
    invoke-interface {p1, p0}, Lcom/jme3/app/state/AppState;->stateAttached(Lcom/jme3/app/state/AppStateManager;)V

    .line 128
    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v0, 0x1

    monitor-exit v1

    .line 131
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1d

    .line 133
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public cleanup()V
    .registers 6

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getStates()[Lcom/jme3/app/state/AppState;

    move-result-object v1

    .line 290
    .local v1, array:[Lcom/jme3/app/state/AppState;
    move-object v0, v1

    .local v0, arr$:[Lcom/jme3/app/state/AppState;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_11

    aget-object v4, v0, v2

    .line 291
    .local v4, state:Lcom/jme3/app/state/AppState;
    invoke-interface {v4}, Lcom/jme3/app/state/AppState;->cleanup()V

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 293
    .end local v4           #state:Lcom/jme3/app/state/AppState;
    :cond_11
    return-void
.end method

.method public detach(Lcom/jme3/app/state/AppState;)Z
    .registers 5
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    .line 144
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v1

    .line 145
    :try_start_4
    iget-object v2, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 146
    invoke-interface {p1, p0}, Lcom/jme3/app/state/AppState;->stateDetached(Lcom/jme3/app/state/AppStateManager;)V

    .line 147
    iget-object v2, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lcom/jme3/app/state/AppStateManager;->terminating:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    monitor-exit v1

    .line 155
    :goto_1a
    return v0

    .line 150
    :cond_1b
    iget-object v2, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, p1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 151
    invoke-interface {p1, p0}, Lcom/jme3/app/state/AppState;->stateDetached(Lcom/jme3/app/state/AppStateManager;)V

    .line 152
    iget-object v2, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v1

    goto :goto_1a

    .line 157
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v0

    .line 155
    :cond_30
    const/4 v0, 0x0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2d

    goto :goto_1a
.end method

.method protected getInitializing()[Lcom/jme3/app/state/AppState;
    .registers 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v1

    .line 100
    :try_start_3
    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/app/state/AppState;

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getState(Ljava/lang/Class;)Lcom/jme3/app/state/AppState;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, stateClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v6

    .line 182
    :try_start_3
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getStates()[Lcom/jme3/app/state/AppState;

    move-result-object v1

    .line 183
    .local v1, array:[Lcom/jme3/app/state/AppState;
    move-object v0, v1

    .local v0, arr$:[Lcom/jme3/app/state/AppState;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v3, :cond_1d

    aget-object v4, v0, v2

    .line 184
    .local v4, state:Lcom/jme3/app/state/AppState;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 185
    monitor-exit v6

    .line 200
    .end local v4           #state:Lcom/jme3/app/state/AppState;
    :goto_19
    return-object v4

    .line 183
    .restart local v4       #state:Lcom/jme3/app/state/AppState;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 193
    .end local v4           #state:Lcom/jme3/app/state/AppState;
    :cond_1d
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getInitializing()[Lcom/jme3/app/state/AppState;

    move-result-object v1

    .line 194
    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v3, :cond_3a

    aget-object v4, v0, v2

    .line 195
    .restart local v4       #state:Lcom/jme3/app/state/AppState;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 196
    monitor-exit v6

    goto :goto_19

    .line 199
    .end local v0           #arr$:[Lcom/jme3/app/state/AppState;
    .end local v1           #array:[Lcom/jme3/app/state/AppState;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #state:Lcom/jme3/app/state/AppState;
    :catchall_34
    move-exception v5

    monitor-exit v6
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v5

    .line 194
    .restart local v0       #arr$:[Lcom/jme3/app/state/AppState;
    .restart local v1       #array:[Lcom/jme3/app/state/AppState;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #state:Lcom/jme3/app/state/AppState;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 199
    .end local v4           #state:Lcom/jme3/app/state/AppState;
    :cond_3a
    :try_start_3a
    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_34

    .line 200
    const/4 v4, 0x0

    goto :goto_19
.end method

.method protected getStates()[Lcom/jme3/app/state/AppState;
    .registers 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v1

    .line 112
    :try_start_3
    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/app/state/AppState;

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected getTerminating()[Lcom/jme3/app/state/AppState;
    .registers 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v1

    .line 106
    :try_start_3
    iget-object v0, p0, Lcom/jme3/app/state/AppStateManager;->terminating:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/app/state/AppState;

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected initializePending()V
    .registers 9

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getInitializing()[Lcom/jme3/app/state/AppState;

    move-result-object v1

    .line 205
    .local v1, array:[Lcom/jme3/app/state/AppState;
    array-length v6, v1

    if-nez v6, :cond_8

    .line 221
    :cond_7
    return-void

    .line 208
    :cond_8
    iget-object v7, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v7

    .line 214
    :try_start_b
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 215
    .local v5, transfer:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/app/state/AppState;>;"
    iget-object v6, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v6, v5}, Lcom/jme3/util/SafeArrayList;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object v6, p0, Lcom/jme3/app/state/AppStateManager;->initializing:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v6, v5}, Lcom/jme3/util/SafeArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 217
    monitor-exit v7
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_29

    .line 218
    move-object v0, v1

    .local v0, arr$:[Lcom/jme3/app/state/AppState;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1d
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 219
    .local v4, state:Lcom/jme3/app/state/AppState;
    iget-object v6, p0, Lcom/jme3/app/state/AppStateManager;->app:Lcom/jme3/app/Application;

    invoke-interface {v4, p0, v6}, Lcom/jme3/app/state/AppState;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 217
    .end local v0           #arr$:[Lcom/jme3/app/state/AppState;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #state:Lcom/jme3/app/state/AppState;
    .end local v5           #transfer:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/app/state/AppState;>;"
    :catchall_29
    move-exception v6

    :try_start_2a
    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v6
.end method

.method public postRender()V
    .registers 7

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getStates()[Lcom/jme3/app/state/AppState;

    move-result-object v1

    .line 278
    .local v1, array:[Lcom/jme3/app/state/AppState;
    move-object v0, v1

    .local v0, arr$:[Lcom/jme3/app/state/AppState;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_17

    aget-object v4, v0, v2

    .line 279
    .local v4, state:Lcom/jme3/app/state/AppState;
    invoke-interface {v4}, Lcom/jme3/app/state/AppState;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 280
    invoke-interface {v4}, Lcom/jme3/app/state/AppState;->postRender()V

    .line 278
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 283
    .end local v4           #state:Lcom/jme3/app/state/AppState;
    :cond_17
    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .registers 8
    .parameter "rm"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getStates()[Lcom/jme3/app/state/AppState;

    move-result-object v1

    .line 266
    .local v1, array:[Lcom/jme3/app/state/AppState;
    move-object v0, v1

    .local v0, arr$:[Lcom/jme3/app/state/AppState;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_17

    aget-object v4, v0, v2

    .line 267
    .local v4, state:Lcom/jme3/app/state/AppState;
    invoke-interface {v4}, Lcom/jme3/app/state/AppState;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 268
    invoke-interface {v4, p1}, Lcom/jme3/app/state/AppState;->render(Lcom/jme3/renderer/RenderManager;)V

    .line 266
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 271
    .end local v4           #state:Lcom/jme3/app/state/AppState;
    :cond_17
    return-void
.end method

.method protected terminatePending()V
    .registers 9

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getTerminating()[Lcom/jme3/app/state/AppState;

    move-result-object v1

    .line 225
    .local v1, array:[Lcom/jme3/app/state/AppState;
    array-length v5, v1

    if-nez v5, :cond_8

    .line 237
    :goto_7
    return-void

    .line 228
    :cond_8
    move-object v0, v1

    .local v0, arr$:[Lcom/jme3/app/state/AppState;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_b
    if-ge v2, v3, :cond_15

    aget-object v4, v0, v2

    .line 229
    .local v4, state:Lcom/jme3/app/state/AppState;
    invoke-interface {v4}, Lcom/jme3/app/state/AppState;->cleanup()V

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 231
    .end local v4           #state:Lcom/jme3/app/state/AppState;
    :cond_15
    iget-object v6, p0, Lcom/jme3/app/state/AppStateManager;->states:Lcom/jme3/util/SafeArrayList;

    monitor-enter v6

    .line 235
    :try_start_18
    iget-object v5, p0, Lcom/jme3/app/state/AppStateManager;->terminating:Lcom/jme3/util/SafeArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/jme3/util/SafeArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 236
    monitor-exit v6

    goto :goto_7

    :catchall_23
    move-exception v5

    monitor-exit v6
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v5
.end method

.method public update(F)V
    .registers 8
    .parameter "tpf"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->terminatePending()V

    .line 249
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->initializePending()V

    .line 252
    invoke-virtual {p0}, Lcom/jme3/app/state/AppStateManager;->getStates()[Lcom/jme3/app/state/AppState;

    move-result-object v1

    .line 253
    .local v1, array:[Lcom/jme3/app/state/AppState;
    move-object v0, v1

    .local v0, arr$:[Lcom/jme3/app/state/AppState;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_d
    if-ge v2, v3, :cond_1d

    aget-object v4, v0, v2

    .line 254
    .local v4, state:Lcom/jme3/app/state/AppState;
    invoke-interface {v4}, Lcom/jme3/app/state/AppState;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 255
    invoke-interface {v4, p1}, Lcom/jme3/app/state/AppState;->update(F)V

    .line 253
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 258
    .end local v4           #state:Lcom/jme3/app/state/AppState;
    :cond_1d
    return-void
.end method

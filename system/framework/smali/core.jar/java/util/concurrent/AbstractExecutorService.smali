.class public abstract Ljava/util/concurrent/AbstractExecutorService;
.super Ljava/lang/Object;
.source "AbstractExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Ljava/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ljava/util/concurrent/AbstractExecutorService;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .registers 25
    .parameter
    .parameter "timed"
    .parameter "nanos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;ZJ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 113
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_8

    .line 114
    new-instance v18, Ljava/lang/NullPointerException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/NullPointerException;-><init>()V

    throw v18

    .line 115
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v16

    .line 116
    .local v16, ntasks:I
    if-nez v16, :cond_14

    .line 117
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 118
    :cond_14
    new-instance v9, Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v9, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    new-instance v4, Ljava/util/concurrent/ExecutorCompletionService;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 131
    .local v4, ecs:Ljava/util/concurrent/ExecutorCompletionService;,"Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    const/4 v5, 0x0

    .line 132
    .local v5, ee:Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_7f

    :try_start_25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 133
    .local v12, lastTime:J
    :goto_29
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 136
    .local v11, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/Callable;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_8c

    .line 137
    add-int/lit8 v16, v16, -0x1

    .line 138
    const/4 v3, 0x1

    .local v3, active:I
    move-object v6, v5

    .line 141
    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .local v6, ee:Ljava/util/concurrent/ExecutionException;
    :goto_42
    :try_start_42
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    move-result-object v8

    .line 142
    .local v8, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    if-nez v8, :cond_5f

    .line 143
    if-lez v16, :cond_82

    .line 144
    add-int/lit8 v16, v16, -0x1

    .line 145
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/Callable;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_42 .. :try_end_5d} :catchall_b9

    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 161
    :cond_5f
    :goto_5f
    if-eqz v8, :cond_dd

    .line 162
    add-int/lit8 v3, v3, -0x1

    .line 164
    :try_start_63
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_b9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_63 .. :try_end_66} :catch_cb
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_66} :catch_d0

    move-result-object v18

    .line 178
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_6b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_da

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v8, Ljava/util/concurrent/Future;

    .line 179
    .restart local v8       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6b

    .line 132
    .end local v3           #active:I
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v8           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v12           #lastTime:J
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    :cond_7f
    const-wide/16 v12, 0x0

    goto :goto_29

    .line 148
    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v3       #active:I
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v8       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local v11       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v12       #lastTime:J
    :cond_82
    if-nez v3, :cond_a5

    .line 173
    if-nez v6, :cond_db

    .line 174
    :try_start_86
    new-instance v5, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v5}, Ljava/util/concurrent/ExecutionException;-><init>()V
    :try_end_8b
    .catchall {:try_start_86 .. :try_end_8b} :catchall_b9

    .line 175
    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    :goto_8b
    :try_start_8b
    throw v5
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8c

    .line 178
    .end local v3           #active:I
    .end local v8           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v12           #lastTime:J
    :catchall_8c
    move-exception v18

    :goto_8d
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_91
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    .line 179
    .restart local v8       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_91

    .line 150
    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v10           #i$:Ljava/util/Iterator;
    .restart local v3       #active:I
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v11       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v12       #lastTime:J
    :cond_a5
    if-eqz p2, :cond_c6

    .line 151
    :try_start_a7
    sget-object v18, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p3

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v8

    .line 152
    if-nez v8, :cond_bc

    .line 153
    new-instance v18, Ljava/util/concurrent/TimeoutException;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v18

    .line 178
    .end local v8           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catchall_b9
    move-exception v18

    move-object v5, v6

    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_8d

    .line 154
    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v8       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_bc
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 155
    .local v14, now:J
    sub-long v18, v14, v12

    sub-long p3, p3, v18

    .line 156
    move-wide v12, v14

    .line 157
    goto :goto_5f

    .line 159
    .end local v14           #now:J
    :cond_c6
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v8

    goto :goto_5f

    .line 165
    :catch_cb
    move-exception v7

    .line 166
    .local v7, eex:Ljava/util/concurrent/ExecutionException;
    move-object v5, v7

    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .end local v7           #eex:Ljava/util/concurrent/ExecutionException;
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    :goto_cd
    move-object v6, v5

    .line 171
    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    goto/16 :goto_42

    .line 167
    :catch_d0
    move-exception v17

    .line 168
    .local v17, rex:Ljava/lang/RuntimeException;
    new-instance v5, Ljava/util/concurrent/ExecutionException;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_d8
    .catchall {:try_start_a7 .. :try_end_d8} :catchall_b9

    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_cd

    .line 179
    .end local v3           #active:I
    .end local v8           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v11           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v12           #lastTime:J
    .end local v17           #rex:Ljava/lang/RuntimeException;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_d9
    throw v18

    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v3       #active:I
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v8       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local v11       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v12       #lastTime:J
    :cond_da
    return-object v18

    .end local v10           #i$:Ljava/util/Iterator;
    :cond_db
    move-object v5, v6

    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_8b

    .end local v5           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v6       #ee:Ljava/util/concurrent/ExecutionException;
    :cond_dd
    move-object v5, v6

    .end local v6           #ee:Ljava/util/concurrent/ExecutionException;
    .restart local v5       #ee:Ljava/util/concurrent/ExecutionException;
    goto :goto_cd
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v8, 0x1

    .line 201
    if-nez p1, :cond_9

    .line 202
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 203
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v3, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    .line 206
    .local v0, done:Z
    :try_start_13
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Callable;

    .line 207
    .local v5, t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0, v5}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v2

    .line 208
    .local v2, f:Ljava/util/concurrent/RunnableFuture;,"Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {p0, v2}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_2e

    goto :goto_17

    .line 223
    .end local v2           #f:Ljava/util/concurrent/RunnableFuture;,"Ljava/util/concurrent/RunnableFuture<TT;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    :catchall_2e
    move-exception v6

    if-nez v0, :cond_78

    .line 224
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 225
    .local v1, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_35

    .line 211
    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_45
    :try_start_45
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_49
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 212
    .restart local v1       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_2e

    move-result v6

    if-nez v6, :cond_49

    .line 214
    :try_start_5b
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_2e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5b .. :try_end_5e} :catch_79

    goto :goto_49

    .line 215
    :catch_5f
    move-exception v6

    goto :goto_49

    .line 220
    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_61
    const/4 v0, 0x1

    .line 223
    if-nez v0, :cond_7b

    .line 224
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 225
    .restart local v1       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_68

    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_78
    throw v6

    .line 216
    .restart local v1       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :catch_79
    move-exception v6

    goto :goto_49

    .line 225
    .end local v1           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_7b
    return-object v3
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 23
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 232
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-eqz p1, :cond_4

    if-nez p4, :cond_a

    .line 233
    :cond_4
    new-instance v16, Ljava/lang/NullPointerException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/NullPointerException;-><init>()V

    throw v16

    .line 234
    :cond_a
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 235
    .local v10, nanos:J
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v5, futures:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v3, 0x0

    .line 238
    .local v3, done:Z
    :try_start_1e
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Callable;

    .line 239
    .local v14, t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_3a

    goto :goto_22

    .line 274
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v14           #t:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    :catchall_3a
    move-exception v16

    if-nez v3, :cond_118

    .line 275
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_118

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 276
    .local v4, f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_41

    .line 241
    .end local v4           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :cond_55
    :try_start_55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 245
    .local v8, lastTime:J
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 246
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    :cond_5d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9b

    .line 247
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Runnable;

    check-cast v16, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_75
    .catchall {:try_start_55 .. :try_end_75} :catchall_3a

    move-result-wide v12

    .line 249
    .local v12, now:J
    sub-long v16, v12, v8

    sub-long v10, v10, v16

    .line 250
    move-wide v8, v12

    .line 251
    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-gtz v16, :cond_5d

    .line 274
    if-nez v3, :cond_119

    .line 275
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_87
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_119

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 276
    .restart local v4       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_87

    .line 255
    .end local v4           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v12           #now:J
    :cond_9b
    :try_start_9b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9f
    :goto_9f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_fd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 256
    .restart local v4       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_ae
    .catchall {:try_start_9b .. :try_end_ae} :catchall_3a

    move-result v16

    if-nez v16, :cond_9f

    .line 257
    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-gtz v16, :cond_d1

    .line 274
    if-nez v3, :cond_119

    .line 275
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_bd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_119

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v4, Ljava/util/concurrent/Future;

    .line 276
    .restart local v4       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_bd

    .line 260
    :cond_d1
    :try_start_d1
    sget-object v16, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    invoke-interface {v4, v10, v11, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_d8
    .catchall {:try_start_d1 .. :try_end_d8} :catchall_3a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d1 .. :try_end_d8} :catch_11c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d1 .. :try_end_d8} :catch_11a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d1 .. :try_end_d8} :catch_e2

    .line 266
    :goto_d8
    :try_start_d8
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_3a

    move-result-wide v12

    .line 267
    .restart local v12       #now:J
    sub-long v16, v12, v8

    sub-long v10, v10, v16

    .line 268
    move-wide v8, v12

    goto :goto_9f

    .line 263
    .end local v12           #now:J
    :catch_e2
    move-exception v15

    .line 274
    .local v15, toe:Ljava/util/concurrent/TimeoutException;
    if-nez v3, :cond_119

    .line 275
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_119

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    check-cast v4, Ljava/util/concurrent/Future;

    .line 276
    .restart local v4       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_e9

    .line 271
    .end local v4           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v15           #toe:Ljava/util/concurrent/TimeoutException;
    :cond_fd
    const/4 v3, 0x1

    .line 274
    if-nez v3, :cond_119

    .line 275
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_104
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_119

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    .line 276
    .restart local v4       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_104

    .end local v4           #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v8           #lastTime:J
    :cond_118
    throw v16

    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/concurrent/Future<TT;>;>;"
    .restart local v8       #lastTime:J
    :cond_119
    return-object v5

    .line 262
    .restart local v4       #f:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    :catch_11a
    move-exception v16

    goto :goto_d8

    .line 261
    :catch_11c
    move-exception v16

    goto :goto_d8
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 186
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_3
    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v1

    .line 189
    :goto_7
    return-object v1

    .line 187
    :catch_8
    move-exception v0

    .line 188
    .local v0, cannotHappen:Ljava/util/concurrent/TimeoutException;
    sget-boolean v1, Ljava/util/concurrent/AbstractExecutorService;->$assertionsDisabled:Z

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 189
    :cond_13
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 196
    .local p1, tasks:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .parameter "runnable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, value:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 4
    .parameter "task"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 79
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 80
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 81
    .local v0, ftask:Ljava/util/concurrent/RunnableFuture;,"Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 5
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, result:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 91
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 92
    .local v0, ftask:Ljava/util/concurrent/RunnableFuture;,"Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, task:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 102
    :cond_8
    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 103
    .local v0, ftask:Ljava/util/concurrent/RunnableFuture;,"Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-object v0
.end method

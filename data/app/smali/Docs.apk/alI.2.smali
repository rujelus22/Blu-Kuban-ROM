.class abstract LalI;
.super Ljava/lang/Object;
.source "AbstractListeningExecutorService.java"

# interfaces
.implements LalW;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .registers 22
    .parameter
    .parameter
    .parameter
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

    .prologue
    .line 65
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    .line 66
    if-lez v3, :cond_6d

    const/4 v1, 0x1

    :goto_7
    invoke-static {v1}, LafQ;->a(Z)V

    .line 67
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    new-instance v13, Ljava/util/concurrent/ExecutorCompletionService;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 79
    const/4 v2, 0x0

    .line 80
    if-eqz p2, :cond_6f

    :try_start_19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 81
    :goto_1d
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 84
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-virtual {v13, v1}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v9, v3, -0x1

    .line 86
    const/4 v4, 0x1

    move-wide/from16 v10, p3

    .line 89
    :goto_33
    invoke-virtual {v13}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    move-result-object v3

    .line 90
    if-nez v3, :cond_cf

    .line 91
    if-lez v9, :cond_72

    .line 92
    add-int/lit8 v7, v9, -0x1

    .line 93
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-virtual {v13, v1}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_19 .. :try_end_4a} :catchall_7d

    .line 94
    add-int/lit8 v1, v4, 0x1

    move-wide v15, v5

    move-wide v4, v15

    move v6, v7

    move-wide v7, v10

    .line 109
    :goto_50
    if-eqz v3, :cond_c4

    .line 110
    add-int/lit8 v1, v1, -0x1

    .line 112
    :try_start_54
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_7d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_54 .. :try_end_57} :catch_cc
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_57} :catch_be

    move-result-object v2

    .line 126
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ce

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 127
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_5c

    .line 66
    :cond_6d
    const/4 v1, 0x0

    goto :goto_7

    .line 80
    :cond_6f
    const-wide/16 v5, 0x0

    goto :goto_1d

    .line 95
    :cond_72
    if-nez v4, :cond_94

    .line 121
    if-nez v2, :cond_7c

    .line 122
    :try_start_76
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 124
    :cond_7c
    throw v2
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_7d

    .line 126
    :catchall_7d
    move-exception v1

    move-object v2, v1

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_83
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 127
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_83

    .line 97
    :cond_94
    if-eqz p2, :cond_b3

    .line 98
    :try_start_96
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v10, v11, v1}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 99
    if-nez v1, :cond_a4

    .line 100
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 102
    :cond_a4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 103
    sub-long v5, v7, v5

    sub-long v5, v10, v5

    move-object v3, v1

    move v1, v4

    move-wide v15, v7

    move-wide v7, v5

    move v6, v9

    move-wide v4, v15

    .line 105
    goto :goto_50

    .line 106
    :cond_b3
    invoke-virtual {v13}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v1

    move-object v3, v1

    move-wide v7, v10

    move v1, v4

    move-wide v15, v5

    move-wide v4, v15

    move v6, v9

    goto :goto_50

    .line 115
    :catch_be
    move-exception v3

    .line 116
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_c4
    .catchall {:try_start_96 .. :try_end_c4} :catchall_7d

    :cond_c4
    :goto_c4
    move v9, v6

    move-wide v10, v7

    move-wide v15, v4

    move-wide v5, v15

    move v4, v1

    .line 119
    goto/16 :goto_33

    .line 127
    :cond_cb
    throw v2

    .line 113
    :catch_cc
    move-exception v2

    goto :goto_c4

    .line 127
    :cond_ce
    return-object v2

    :cond_cf
    move v1, v4

    move-wide v7, v10

    move-wide v15, v5

    move-wide v4, v15

    move v6, v9

    goto/16 :goto_50
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)LalU;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "LalU",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {p1, v0}, LalV;->a(Ljava/lang/Runnable;Ljava/lang/Object;)LalV;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, LalI;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-object v0
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/Object;)LalU;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "LalU",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1, p2}, LalV;->a(Ljava/lang/Runnable;Ljava/lang/Object;)LalV;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, LalI;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-object v0
.end method

.method public a(Ljava/util/concurrent/Callable;)LalU;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "LalU",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p1}, LalV;->a(Ljava/util/concurrent/Callable;)LalV;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, LalI;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
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
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 149
    if-nez p1, :cond_8

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 152
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    :try_start_11
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 156
    invoke-static {v0}, LalV;->a(Ljava/util/concurrent/Callable;)LalV;

    move-result-object v0

    .line 157
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0, v0}, LalI;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2c

    goto :goto_15

    .line 172
    :catchall_2c
    move-exception v0

    move-object v1, v0

    .line 173
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 174
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_32

    .line 160
    :cond_43
    :try_start_43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 161
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_56
    .catchall {:try_start_43 .. :try_end_56} :catchall_2c

    move-result v3

    if-nez v3, :cond_47

    .line 163
    :try_start_59
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_2c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_59 .. :try_end_5c} :catch_5d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_59 .. :try_end_5c} :catch_60

    goto :goto_47

    .line 164
    :catch_5d
    move-exception v0

    goto :goto_47

    .line 174
    :cond_5f
    throw v1

    .line 165
    :catch_60
    move-exception v0

    goto :goto_47

    .line 174
    :cond_62
    return-object v2
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 16
    .parameter
    .parameter
    .parameter
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

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    .line 183
    if-eqz p1, :cond_7

    if-nez p4, :cond_d

    .line 184
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 186
    :cond_d
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 187
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    :try_start_1a
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 191
    invoke-static {v0}, LalV;->a(Ljava/util/concurrent/Callable;)LalV;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_32

    goto :goto_1e

    .line 229
    :catchall_32
    move-exception v0

    move-object v1, v0

    .line 230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 231
    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_38

    .line 194
    :cond_48
    :try_start_48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 198
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 199
    :goto_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 200
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, LalI;->execute(Ljava/lang/Runnable;)V

    .line 201
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_64
    .catchall {:try_start_48 .. :try_end_64} :catchall_32

    move-result-wide v0

    .line 202
    sub-long v2, v0, v2

    sub-long/2addr v4, v2

    .line 204
    cmp-long v2, v4, v9

    if-gtz v2, :cond_82

    .line 230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 231
    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_70

    :cond_80
    move-object v0, v6

    :goto_81
    return-object v0

    :cond_82
    move-wide v2, v0

    .line 207
    goto :goto_50

    .line 209
    :cond_84
    :try_start_84
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_88
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 210
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_97
    .catchall {:try_start_84 .. :try_end_97} :catchall_32

    move-result v1

    if-nez v1, :cond_e2

    .line 211
    cmp-long v1, v4, v9

    if-gtz v1, :cond_b4

    .line 230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 231
    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_a2

    :cond_b2
    move-object v0, v6

    goto :goto_81

    .line 215
    :cond_b4
    :try_start_b4
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_b9
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_32
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b4 .. :try_end_b9} :catch_e0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b4 .. :try_end_b9} :catch_de
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b4 .. :try_end_b9} :catch_c4

    .line 221
    :goto_b9
    :try_start_b9
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_32

    move-result-wide v0

    .line 222
    sub-long v2, v0, v2

    sub-long v2, v4, v2

    :goto_c1
    move-wide v4, v2

    move-wide v2, v0

    .line 224
    goto :goto_88

    .line 218
    :catch_c4
    move-exception v0

    .line 230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 231
    invoke-interface {v0, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_c9

    :cond_d9
    move-object v0, v6

    goto :goto_81

    :cond_db
    move-object v0, v6

    goto :goto_81

    :cond_dd
    throw v1

    .line 217
    :catch_de
    move-exception v0

    goto :goto_b9

    .line 216
    :catch_e0
    move-exception v0

    goto :goto_b9

    :cond_e2
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_c1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 5
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

    .prologue
    .line 135
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_3
    invoke-direct {p0, p1, v0, v1, v2}, LalI;->a(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    .line 136
    :catch_8
    move-exception v0

    .line 137
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter
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

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, LalI;->a(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1}, LalI;->a(Ljava/lang/Runnable;)LalU;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, LalI;->a(Ljava/lang/Runnable;Ljava/lang/Object;)LalU;

    move-result-object v0

    return-object v0
.end method

.method public synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1}, LalI;->a(Ljava/util/concurrent/Callable;)LalU;

    move-result-object v0

    return-object v0
.end method

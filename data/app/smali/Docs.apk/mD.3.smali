.class LmD;
.super Ljava/lang/Object;
.source "DiscussionSessionApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:Ljava/util/TreeSet;

.field final synthetic a:LmA;

.field final synthetic a:Lmu;

.field final synthetic a:Lmv;


# direct methods
.method constructor <init>(LmA;Lmu;Ljava/util/TreeSet;Lmv;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, LmD;->a:LmA;

    iput-object p2, p0, LmD;->a:Lmu;

    iput-object p3, p0, LmD;->a:Ljava/util/TreeSet;

    iput-object p4, p0, LmD;->a:Lmv;

    iput p5, p0, LmD;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 335
    .line 337
    :try_start_2
    iget-object v0, p0, LmD;->a:Lmu;

    invoke-interface {v0}, Lmu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafc;

    .line 338
    invoke-virtual {v0}, Lafc;->b()Ljava/lang/String;

    move-result-object v3

    .line 340
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lafc;->a()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 341
    invoke-virtual {v0}, Lafc;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaeW;

    .line 342
    iget-object v5, p0, LmD;->a:Ljava/util/TreeSet;

    new-instance v6, LmN;

    invoke-direct {v6, v0}, LmN;-><init>(LaeW;)V

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch LmM; {:try_start_2 .. :try_end_34} :catch_35

    goto :goto_1e

    .line 361
    :catch_35
    move-exception v0

    .line 362
    iget-object v1, p0, LmD;->a:LmA;

    invoke-static {v1}, LmA;->b(LmA;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 363
    :try_start_3d
    iget-object v2, p0, LmD;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)LmL;

    move-result-object v2

    sget-object v3, LmL;->c:LmL;

    if-ne v2, v3, :cond_ad

    .line 365
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)V

    .line 380
    :goto_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_113

    .line 408
    :cond_4d
    :goto_4d
    return-void

    .line 345
    :cond_4e
    :try_start_4e
    const-string v0, "DiscussionSessionApi"

    const-string v4, "Discussion stream %s does not exist; treating as empty"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, LmD;->a:LmA;

    invoke-static {v7}, LmA;->b(LmA;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_65
    if-eqz v3, :cond_1cb

    .line 350
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->b(LmA;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6e
    .catch LmM; {:try_start_4e .. :try_end_6e} :catch_35

    .line 351
    :try_start_6e
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->b(LmA;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, LmL;->c:LmL;

    if-ne v0, v4, :cond_9c

    .line 353
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)V

    .line 358
    :goto_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_aa

    move v0, v1

    .line 385
    :goto_7f
    if-eqz v0, :cond_4d

    .line 386
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->b(LmA;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 387
    :try_start_88
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LmL;

    move-result-object v0

    sget-object v2, LmL;->c:LmL;

    if-ne v0, v2, :cond_136

    .line 389
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)V

    .line 406
    :goto_97
    monitor-exit v1

    goto :goto_4d

    :catchall_99
    move-exception v0

    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_88 .. :try_end_9b} :catchall_99

    throw v0

    .line 355
    :cond_9c
    :try_start_9c
    iget-object v0, p0, LmD;->a:LmA;

    iget-object v4, p0, LmD;->a:Lmv;

    iget-object v5, p0, LmD;->a:Ljava/util/TreeSet;

    iget v6, p0, LmD;->a:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v0, v3, v4, v5, v6}, LmA;->a(LmA;Ljava/lang/String;Lmv;Ljava/util/TreeSet;I)V

    goto :goto_7d

    .line 358
    :catchall_aa
    move-exception v0

    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_9c .. :try_end_ac} :catchall_aa

    :try_start_ac
    throw v0
    :try_end_ad
    .catch LmM; {:try_start_ac .. :try_end_ad} :catch_35

    .line 366
    :cond_ad
    :try_start_ad
    iget-object v2, p0, LmD;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)LmL;

    move-result-object v2

    sget-object v3, LmL;->b:LmL;

    if-ne v2, v3, :cond_116

    .line 368
    iget-object v2, p0, LmD;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)LdE;

    move-result-object v2

    iget-object v3, p0, LmD;->a:Lmv;

    const-string v4, "discussionListAllDurationError"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, LmD;->a:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Pages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, LmD;->a:LmA;

    invoke-static {v6}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, LmD;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)LdE;

    move-result-object v2

    const-string v3, "discussion"

    const-string v4, "discussionListError"

    iget-object v5, p0, LmD;->a:LmA;

    invoke-static {v5}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, LmD;->a:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 373
    iget-object v2, p0, LmD;->a:Lmv;

    invoke-virtual {v2, v0}, Lmv;->a(Ljava/lang/Throwable;)V

    .line 374
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->b(LmA;)V

    .line 376
    iget-object v0, p0, LmD;->a:LmA;

    sget-object v2, LmL;->a:LmL;

    invoke-static {v0, v2}, LmA;->a(LmA;LmL;)LmL;

    goto/16 :goto_4c

    .line 380
    :catchall_113
    move-exception v0

    monitor-exit v1
    :try_end_115
    .catchall {:try_start_ad .. :try_end_115} :catchall_113

    throw v0

    .line 378
    :cond_116
    :try_start_116
    const-string v0, "DiscussionSessionApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state after finishing refresh (failure): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LmD;->a:LmA;

    invoke-static {v3}, LmA;->a(LmA;)LmL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_134
    .catchall {:try_start_116 .. :try_end_134} :catchall_113

    goto/16 :goto_4c

    .line 390
    :cond_136
    :try_start_136
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LmL;

    move-result-object v0

    sget-object v2, LmL;->b:LmL;

    if-ne v0, v2, :cond_1ab

    .line 391
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->c(LmA;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_147
    .catchall {:try_start_136 .. :try_end_147} :catchall_99

    .line 392
    :try_start_147
    iget-object v0, p0, LmD;->a:LmA;

    iget-object v3, p0, LmD;->a:Ljava/util/TreeSet;

    invoke-static {v0, v3}, LmA;->a(LmA;Ljava/util/TreeSet;)Ljava/util/TreeSet;

    .line 393
    monitor-exit v2
    :try_end_14f
    .catchall {:try_start_147 .. :try_end_14f} :catchall_1a8

    .line 394
    :try_start_14f
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LdE;

    move-result-object v0

    iget-object v2, p0, LmD;->a:Lmv;

    const-string v3, "discussionListAllDurationOk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, LmD;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LmD;->a:LmA;

    invoke-static {v5}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LdE;

    move-result-object v0

    const-string v2, "discussion"

    const-string v3, "discussionListOk"

    iget-object v4, p0, LmD;->a:LmA;

    invoke-static {v4}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, LmD;->a:I

    invoke-virtual {v0, v2, v3, v4, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 399
    iget-object v0, p0, LmD;->a:Lmv;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmv;->a(Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, LmD;->a:LmA;

    invoke-static {v0}, LmA;->b(LmA;)V

    .line 402
    iget-object v0, p0, LmD;->a:LmA;

    sget-object v2, LmL;->a:LmL;

    invoke-static {v0, v2}, LmA;->a(LmA;LmL;)LmL;
    :try_end_1a6
    .catchall {:try_start_14f .. :try_end_1a6} :catchall_99

    goto/16 :goto_97

    .line 393
    :catchall_1a8
    move-exception v0

    :try_start_1a9
    monitor-exit v2
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_1a8

    :try_start_1aa
    throw v0

    .line 404
    :cond_1ab
    const-string v0, "DiscussionSessionApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state after finishing refresh (success): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LmD;->a:LmA;

    invoke-static {v3}, LmA;->a(LmA;)LmL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c9
    .catchall {:try_start_1aa .. :try_end_1c9} :catchall_99

    goto/16 :goto_97

    :cond_1cb
    move v0, v2

    goto/16 :goto_7f
.end method

.class LmF;
.super Ljava/lang/Object;
.source "DiscussionSessionApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LmA;

.field final synthetic a:Lmv;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(LmA;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmv;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, LmF;->a:LmA;

    iput-object p2, p0, LmF;->a:Ljava/lang/String;

    iput-object p3, p0, LmF;->b:Ljava/lang/String;

    iput-object p4, p0, LmF;->c:Ljava/lang/String;

    iput-object p5, p0, LmF;->a:Lmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 458
    new-instance v0, LaeW;

    invoke-direct {v0}, LaeW;-><init>()V

    .line 459
    new-instance v1, Lafd;

    invoke-direct {v1}, Lafd;-><init>()V

    iget-object v2, p0, LmF;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lafd;->b(Ljava/lang/String;)Lafd;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Lafd;->a(Ljava/lang/String;)Lafd;

    move-result-object v1

    .line 461
    new-instance v2, LaeZ;

    invoke-direct {v2}, LaeZ;-><init>()V

    invoke-virtual {v2, v1}, LaeZ;->a(Lafd;)LaeZ;

    move-result-object v1

    const-string v2, "discussion"

    invoke-virtual {v1, v2}, LaeZ;->b(Ljava/lang/String;)LaeZ;

    move-result-object v1

    .line 464
    iget-object v2, p0, LmF;->b:Ljava/lang/String;

    if-eqz v2, :cond_43

    .line 465
    iget-object v2, p0, LmF;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, LaeZ;->a(Ljava/lang/String;)LaeZ;

    .line 466
    new-instance v2, Lafd;

    invoke-direct {v2}, Lafd;-><init>()V

    iget-object v3, p0, LmF;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lafd;->b(Ljava/lang/String;)Lafd;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Lafd;->a(Ljava/lang/String;)Lafd;

    move-result-object v2

    .line 468
    invoke-virtual {v1, v2}, LaeZ;->c(Lafd;)LaeZ;

    .line 470
    :cond_43
    invoke-virtual {v0, v1}, LaeW;->a(LaeZ;)LaeW;

    .line 471
    const-string v1, "discussions#discussion"

    invoke-virtual {v0, v1}, LaeW;->a(Ljava/lang/String;)LaeW;

    .line 472
    const-string v1, "discuss"

    invoke-virtual {v0, v1}, LaeW;->b(Ljava/lang/String;)LaeW;

    .line 473
    new-instance v1, Lafb;

    invoke-direct {v1}, Lafb;-><init>()V

    iget-object v2, p0, LmF;->a:LmA;

    invoke-static {v2}, LmA;->b(LmA;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lafb;->a(Ljava/lang/String;)Lafb;

    move-result-object v1

    invoke-virtual {v0, v1}, LaeW;->a(Lafb;)LaeW;

    .line 475
    :try_start_62
    iget-object v1, p0, LmF;->a:LmA;

    invoke-static {v1}, LmA;->a(LmA;)LaeJ;

    move-result-object v1

    invoke-virtual {v1}, LaeJ;->a()LaeL;

    move-result-object v1

    iget-object v2, p0, LmF;->a:LmA;

    invoke-static {v2}, LmA;->b(LmA;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, LaeL;->a(Ljava/lang/String;LaeW;)LaeM;

    move-result-object v0

    invoke-virtual {v0}, LaeM;->a()LaeW;

    move-result-object v0

    .line 476
    new-instance v1, LmN;

    invoke-direct {v1, v0}, LmN;-><init>(LaeW;)V

    .line 479
    iget-object v0, p0, LmF;->a:LmA;

    invoke-static {v0}, LmA;->c(LmA;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_86} :catch_cb

    .line 480
    :try_start_86
    iget-object v0, p0, LmF;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 481
    monitor-exit v2
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_c8

    .line 482
    :try_start_90
    iget-object v0, p0, LmF;->a:LmA;

    invoke-static {v0}, LmA;->b(LmA;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_97} :catch_cb

    .line 483
    :try_start_97
    iget-object v0, p0, LmF;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LmL;

    move-result-object v0

    sget-object v3, LmL;->b:LmL;

    if-ne v0, v3, :cond_a8

    .line 485
    iget-object v0, p0, LmF;->a:LmA;

    sget-object v3, LmL;->c:LmL;

    invoke-static {v0, v3}, LmA;->a(LmA;LmL;)LmL;

    .line 487
    :cond_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_97 .. :try_end_a9} :catchall_e5

    .line 488
    :try_start_a9
    iget-object v0, p0, LmF;->a:LmA;

    invoke-static {v0}, LmA;->b(LmA;)V

    .line 489
    iget-object v0, p0, LmF;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LdE;

    move-result-object v0

    const-string v2, "discussion"

    const-string v3, "discussionCreationOk"

    iget-object v4, p0, LmF;->a:LmA;

    invoke-static {v4}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v3, v4, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 491
    iget-object v0, p0, LmF;->a:Lmv;

    invoke-virtual {v0, v1}, Lmv;->a(Ljava/lang/Object;)V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_c7} :catch_cb

    .line 497
    :goto_c7
    return-void

    .line 481
    :catchall_c8
    move-exception v0

    :try_start_c9
    monitor-exit v2
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    :try_start_ca
    throw v0
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cb} :catch_cb

    .line 492
    :catch_cb
    move-exception v0

    .line 493
    iget-object v1, p0, LmF;->a:LmA;

    invoke-static {v1}, LmA;->a(LmA;)LdE;

    move-result-object v1

    const-string v2, "discussion"

    const-string v3, "discussionCreationError"

    iget-object v4, p0, LmF;->a:LmA;

    invoke-static {v4}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 495
    iget-object v1, p0, LmF;->a:Lmv;

    invoke-virtual {v1, v0}, Lmv;->a(Ljava/lang/Throwable;)V

    goto :goto_c7

    .line 487
    :catchall_e5
    move-exception v0

    :try_start_e6
    monitor-exit v2
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    :try_start_e7
    throw v0
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_e8} :catch_cb
.end method

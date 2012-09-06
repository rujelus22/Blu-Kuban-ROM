.class LmG;
.super Ljava/lang/Object;
.source "DiscussionSessionApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LmA;

.field final synthetic a:LmN;

.field final synthetic a:Lmv;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(LmA;Ljava/lang/String;Ljava/lang/String;LmN;Lmv;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, LmG;->a:LmA;

    iput-object p2, p0, LmG;->a:Ljava/lang/String;

    iput-object p3, p0, LmG;->b:Ljava/lang/String;

    iput-object p4, p0, LmG;->a:LmN;

    iput-object p5, p0, LmG;->a:Lmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 513
    new-instance v0, Lafe;

    invoke-direct {v0}, Lafe;-><init>()V

    .line 514
    new-instance v1, Lafd;

    invoke-direct {v1}, Lafd;-><init>()V

    iget-object v2, p0, LmG;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lafd;->b(Ljava/lang/String;)Lafd;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Lafd;->a(Ljava/lang/String;)Lafd;

    move-result-object v1

    .line 516
    new-instance v2, Laff;

    invoke-direct {v2}, Laff;-><init>()V

    invoke-virtual {v2, v1}, Laff;->b(Lafd;)Laff;

    move-result-object v1

    const-string v2, "post"

    invoke-virtual {v1, v2}, Laff;->a(Ljava/lang/String;)Laff;

    move-result-object v1

    .line 518
    invoke-virtual {v0, v1}, Lafe;->a(Laff;)Lafe;

    .line 519
    const-string v1, "discussions#post"

    invoke-virtual {v0, v1}, Lafe;->a(Ljava/lang/String;)Lafe;

    .line 520
    const-string v1, "post"

    invoke-virtual {v0, v1}, Lafe;->b(Ljava/lang/String;)Lafe;

    .line 521
    new-instance v1, Lafg;

    invoke-direct {v1}, Lafg;-><init>()V

    iget-object v2, p0, LmG;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lafg;->a(Ljava/lang/String;)Lafg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafe;->a(Lafg;)Lafe;

    .line 522
    iget-object v1, p0, LmG;->a:LmN;

    invoke-static {v1}, LmO;->a(Lna;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 524
    const-string v1, "reopen"

    invoke-virtual {v0, v1}, Lafe;->c(Ljava/lang/String;)Lafe;

    .line 528
    :cond_4e
    :try_start_4e
    iget-object v1, p0, LmG;->a:LmA;

    invoke-static {v1}, LmA;->a(LmA;)LaeJ;

    move-result-object v1

    invoke-virtual {v1}, LaeJ;->a()LaeP;

    move-result-object v1

    iget-object v2, p0, LmG;->a:LmA;

    invoke-static {v2}, LmA;->b(LmA;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LmG;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, LaeP;->a(Ljava/lang/String;Ljava/lang/String;Lafe;)LaeQ;

    move-result-object v0

    invoke-virtual {v0}, LaeQ;->a()Lafe;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_67} :catch_c8

    move-result-object v0

    .line 536
    iget-object v1, p0, LmG;->a:LmN;

    invoke-static {v1, v0}, LmN;->a(LmN;Lafe;)Landroid/util/Pair;

    move-result-object v0

    .line 537
    iget-object v1, p0, LmG;->a:LmA;

    invoke-static {v1}, LmA;->c(LmA;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 538
    :try_start_75
    iget-object v2, p0, LmG;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)Ljava/util/TreeSet;

    move-result-object v2

    iget-object v3, p0, LmG;->a:LmN;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 539
    iget-object v2, p0, LmG;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)Ljava/util/TreeSet;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_8e
    iget-object v2, p0, LmG;->a:LmA;

    invoke-static {v2}, LmA;->b(LmA;)V

    .line 542
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_75 .. :try_end_94} :catchall_e2

    .line 543
    iget-object v1, p0, LmG;->a:LmA;

    invoke-static {v1}, LmA;->b(LmA;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 544
    :try_start_9b
    iget-object v2, p0, LmG;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)LmL;

    move-result-object v2

    sget-object v3, LmL;->b:LmL;

    if-ne v2, v3, :cond_ac

    .line 546
    iget-object v2, p0, LmG;->a:LmA;

    sget-object v3, LmL;->c:LmL;

    invoke-static {v2, v3}, LmA;->a(LmA;LmL;)LmL;

    .line 548
    :cond_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_9b .. :try_end_ad} :catchall_e5

    .line 549
    iget-object v1, p0, LmG;->a:LmA;

    invoke-static {v1}, LmA;->a(LmA;)LdE;

    move-result-object v1

    const-string v2, "discussion"

    const-string v3, "discussionReplyOk"

    iget-object v4, p0, LmG;->a:LmA;

    invoke-static {v4}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 551
    iget-object v1, p0, LmG;->a:Lmv;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lmv;->a(Ljava/lang/Object;)V

    .line 552
    :goto_c7
    return-void

    .line 529
    :catch_c8
    move-exception v0

    .line 530
    iget-object v1, p0, LmG;->a:LmA;

    invoke-static {v1}, LmA;->a(LmA;)LdE;

    move-result-object v1

    const-string v2, "discussion"

    const-string v3, "discussionReplyError"

    iget-object v4, p0, LmG;->a:LmA;

    invoke-static {v4}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 532
    iget-object v1, p0, LmG;->a:Lmv;

    invoke-virtual {v1, v0}, Lmv;->a(Ljava/lang/Throwable;)V

    goto :goto_c7

    .line 542
    :catchall_e2
    move-exception v0

    :try_start_e3
    monitor-exit v1
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v0

    .line 548
    :catchall_e5
    move-exception v0

    :try_start_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v0
.end method

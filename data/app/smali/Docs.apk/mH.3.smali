.class LmH;
.super Ljava/lang/Object;
.source "DiscussionSessionApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LmA;

.field final synthetic a:LmN;

.field final synthetic a:Lmv;

.field final synthetic a:Lna;


# direct methods
.method constructor <init>(LmA;Ljava/lang/String;Lna;LmN;Lmv;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, LmH;->a:LmA;

    iput-object p2, p0, LmH;->a:Ljava/lang/String;

    iput-object p3, p0, LmH;->a:Lna;

    iput-object p4, p0, LmH;->a:LmN;

    iput-object p5, p0, LmH;->a:Lmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 569
    new-instance v0, Lafd;

    invoke-direct {v0}, Lafd;-><init>()V

    iget-object v1, p0, LmH;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lafd;->b(Ljava/lang/String;)Lafd;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Lafd;->a(Ljava/lang/String;)Lafd;

    move-result-object v0

    .line 573
    :try_start_12
    new-instance v1, Lafe;

    invoke-direct {v1}, Lafe;-><init>()V

    .line 574
    new-instance v2, Laff;

    invoke-direct {v2}, Laff;-><init>()V

    invoke-virtual {v2, v0}, Laff;->a(Lafd;)Laff;

    move-result-object v0

    const-string v2, "post"

    invoke-virtual {v0, v2}, Laff;->a(Ljava/lang/String;)Laff;

    move-result-object v0

    .line 576
    invoke-virtual {v1, v0}, Lafe;->a(Laff;)Lafe;

    .line 577
    iget-object v0, p0, LmH;->a:Lna;

    invoke-interface {v0}, Lna;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lafe;->d(Ljava/lang/String;)Lafe;

    .line 578
    const-string v0, "discussions#post"

    invoke-virtual {v1, v0}, Lafe;->a(Ljava/lang/String;)Lafe;

    .line 579
    const-string v0, "post"

    invoke-virtual {v1, v0}, Lafe;->b(Ljava/lang/String;)Lafe;

    .line 580
    iget-object v0, p0, LmH;->a:Lna;

    invoke-interface {v0}, Lna;->b()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 583
    const-string v0, "reopen"

    invoke-virtual {v1, v0}, Lafe;->c(Ljava/lang/String;)Lafe;

    .line 585
    :cond_49
    new-instance v0, Lafg;

    invoke-direct {v0}, Lafg;-><init>()V

    iget-object v2, p0, LmH;->a:LmN;

    invoke-virtual {v2}, LmN;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafg;->a(Ljava/lang/String;)Lafg;

    move-result-object v0

    invoke-virtual {v1, v0}, Lafe;->a(Lafg;)Lafe;

    .line 586
    iget-object v0, p0, LmH;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LaeJ;

    move-result-object v0

    invoke-virtual {v0}, LaeJ;->a()LaeP;

    move-result-object v0

    iget-object v2, p0, LmH;->a:LmA;

    invoke-static {v2}, LmA;->b(LmA;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LmH;->a:LmN;

    invoke-virtual {v3}, LmN;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LmH;->a:Lna;

    invoke-interface {v4}, Lna;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, LaeP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lafe;)LaeS;

    move-result-object v0

    invoke-virtual {v0}, LaeS;->a()Lafe;

    move-result-object v0

    .line 589
    iget-object v1, p0, LmH;->a:LmN;

    invoke-static {v1, v0}, LmN;->a(LmN;Lafe;)Landroid/util/Pair;

    move-result-object v1

    .line 591
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lna;

    .line 592
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, LmN;
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_8d} :catch_e3

    .line 600
    iget-object v2, p0, LmH;->a:LmA;

    invoke-static {v2}, LmA;->c(LmA;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 601
    :try_start_94
    iget-object v3, p0, LmH;->a:LmA;

    invoke-static {v3}, LmA;->a(LmA;)Ljava/util/TreeSet;

    move-result-object v3

    iget-object v4, p0, LmH;->a:LmN;

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 602
    iget-object v3, p0, LmH;->a:LmA;

    invoke-static {v3}, LmA;->a(LmA;)Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_ab
    iget-object v1, p0, LmH;->a:LmA;

    invoke-static {v1}, LmA;->b(LmA;)V

    .line 605
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_94 .. :try_end_b1} :catchall_fd

    .line 606
    iget-object v1, p0, LmH;->a:LmA;

    invoke-static {v1}, LmA;->b(LmA;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 607
    :try_start_b8
    iget-object v2, p0, LmH;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)LmL;

    move-result-object v2

    sget-object v3, LmL;->b:LmL;

    if-ne v2, v3, :cond_c9

    .line 609
    iget-object v2, p0, LmH;->a:LmA;

    sget-object v3, LmL;->c:LmL;

    invoke-static {v2, v3}, LmA;->a(LmA;LmL;)LmL;

    .line 611
    :cond_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_b8 .. :try_end_ca} :catchall_100

    .line 612
    iget-object v1, p0, LmH;->a:LmA;

    invoke-static {v1}, LmA;->a(LmA;)LdE;

    move-result-object v1

    const-string v2, "discussion"

    const-string v3, "discussionEditOk"

    iget-object v4, p0, LmH;->a:LmA;

    invoke-static {v4}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 614
    iget-object v1, p0, LmH;->a:Lmv;

    invoke-virtual {v1, v0}, Lmv;->a(Ljava/lang/Object;)V

    .line 615
    :goto_e2
    return-void

    .line 593
    :catch_e3
    move-exception v0

    .line 594
    iget-object v1, p0, LmH;->a:LmA;

    invoke-static {v1}, LmA;->a(LmA;)LdE;

    move-result-object v1

    const-string v2, "discussion"

    const-string v3, "discussionEditError"

    iget-object v4, p0, LmH;->a:LmA;

    invoke-static {v4}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 596
    iget-object v1, p0, LmH;->a:Lmv;

    invoke-virtual {v1, v0}, Lmv;->a(Ljava/lang/Throwable;)V

    goto :goto_e2

    .line 605
    :catchall_fd
    move-exception v0

    :try_start_fe
    monitor-exit v2
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v0

    .line 611
    :catchall_100
    move-exception v0

    :try_start_101
    monitor-exit v1
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    throw v0
.end method

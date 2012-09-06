.class LmI;
.super Ljava/lang/Object;
.source "DiscussionSessionApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LmA;

.field final synthetic a:LmN;

.field final synthetic a:Lmv;

.field final synthetic a:Lna;


# direct methods
.method constructor <init>(LmA;LmN;Lna;Lmv;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, LmI;->a:LmA;

    iput-object p2, p0, LmI;->a:LmN;

    iput-object p3, p0, LmI;->a:Lna;

    iput-object p4, p0, LmI;->a:Lmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 630
    :try_start_1
    iget-object v0, p0, LmI;->a:LmN;

    iget-object v1, p0, LmI;->a:Lna;

    if-eq v0, v1, :cond_93

    .line 632
    iget-object v0, p0, LmI;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LaeJ;

    move-result-object v0

    invoke-virtual {v0}, LaeJ;->a()LaeP;

    move-result-object v0

    iget-object v1, p0, LmI;->a:LmA;

    invoke-static {v1}, LmA;->b(LmA;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LmI;->a:LmN;

    invoke-virtual {v2}, LmN;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LmI;->a:Lna;

    invoke-interface {v3}, Lna;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LaeP;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LaeR;

    move-result-object v0

    invoke-virtual {v0}, LaeR;->a()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2a} :catch_b2

    .line 644
    :goto_2a
    iget-object v0, p0, LmI;->a:LmA;

    invoke-static {v0}, LmA;->c(LmA;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 645
    :try_start_31
    iget-object v0, p0, LmI;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)Ljava/util/TreeSet;

    move-result-object v0

    iget-object v2, p0, LmI;->a:LmN;

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 646
    iget-object v0, p0, LmI;->a:LmN;

    iget-object v2, p0, LmI;->a:Lna;

    if-eq v0, v2, :cond_5a

    .line 648
    iget-object v0, p0, LmI;->a:LmN;

    iget-object v2, p0, LmI;->a:Lna;

    invoke-interface {v2}, Lna;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LmN;->a(LmN;Ljava/lang/String;)LmN;

    move-result-object v0

    .line 650
    iget-object v2, p0, LmI;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_5a
    iget-object v0, p0, LmI;->a:LmA;

    invoke-static {v0}, LmA;->b(LmA;)V

    .line 654
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_31 .. :try_end_60} :catchall_cc

    .line 655
    iget-object v0, p0, LmI;->a:LmA;

    invoke-static {v0}, LmA;->b(LmA;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 656
    :try_start_67
    iget-object v0, p0, LmI;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LmL;

    move-result-object v0

    sget-object v2, LmL;->b:LmL;

    if-ne v0, v2, :cond_78

    .line 658
    iget-object v0, p0, LmI;->a:LmA;

    sget-object v2, LmL;->c:LmL;

    invoke-static {v0, v2}, LmA;->a(LmA;LmL;)LmL;

    .line 660
    :cond_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_67 .. :try_end_79} :catchall_cf

    .line 661
    iget-object v0, p0, LmI;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LdE;

    move-result-object v0

    const-string v1, "discussion"

    const-string v2, "discussionDeleteOk"

    iget-object v3, p0, LmI;->a:LmA;

    invoke-static {v3}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 663
    iget-object v0, p0, LmI;->a:Lmv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmv;->a(Ljava/lang/Object;)V

    .line 664
    :goto_92
    return-void

    .line 635
    :cond_93
    :try_start_93
    iget-object v0, p0, LmI;->a:LmA;

    invoke-static {v0}, LmA;->a(LmA;)LaeJ;

    move-result-object v0

    invoke-virtual {v0}, LaeJ;->a()LaeL;

    move-result-object v0

    iget-object v1, p0, LmI;->a:LmA;

    invoke-static {v1}, LmA;->b(LmA;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LmI;->a:LmN;

    invoke-virtual {v2}, LmN;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaeL;->a(Ljava/lang/String;Ljava/lang/String;)LaeO;

    move-result-object v0

    invoke-virtual {v0}, LaeO;->a()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_b0} :catch_b2

    goto/16 :goto_2a

    .line 637
    :catch_b2
    move-exception v0

    .line 638
    iget-object v1, p0, LmI;->a:LmA;

    invoke-static {v1}, LmA;->a(LmA;)LdE;

    move-result-object v1

    const-string v2, "discussion"

    const-string v3, "discussionDeleteError"

    iget-object v4, p0, LmI;->a:LmA;

    invoke-static {v4}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 640
    iget-object v1, p0, LmI;->a:Lmv;

    invoke-virtual {v1, v0}, Lmv;->a(Ljava/lang/Throwable;)V

    goto :goto_92

    .line 654
    :catchall_cc
    move-exception v0

    :try_start_cd
    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw v0

    .line 660
    :catchall_cf
    move-exception v0

    :try_start_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v0
.end method

.class LmJ;
.super Ljava/lang/Object;
.source "DiscussionSessionApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LmA;

.field final synthetic a:LmN;

.field final synthetic a:Lmv;


# direct methods
.method constructor <init>(LmA;Ljava/lang/String;Lmv;LmN;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, LmJ;->a:LmA;

    iput-object p2, p0, LmJ;->a:Ljava/lang/String;

    iput-object p3, p0, LmJ;->a:Lmv;

    iput-object p4, p0, LmJ;->a:LmN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 679
    new-instance v0, Lafe;

    invoke-direct {v0}, Lafe;-><init>()V

    .line 680
    new-instance v1, Laff;

    invoke-direct {v1}, Laff;-><init>()V

    const-string v2, "post"

    invoke-virtual {v1, v2}, Laff;->a(Ljava/lang/String;)Laff;

    move-result-object v1

    .line 682
    invoke-virtual {v0, v1}, Lafe;->a(Laff;)Lafe;

    .line 683
    const-string v1, "resolve"

    invoke-virtual {v0, v1}, Lafe;->c(Ljava/lang/String;)Lafe;

    .line 684
    const-string v1, "discussions#post"

    invoke-virtual {v0, v1}, Lafe;->a(Ljava/lang/String;)Lafe;

    .line 685
    const-string v1, "post"

    invoke-virtual {v0, v1}, Lafe;->b(Ljava/lang/String;)Lafe;

    .line 686
    new-instance v1, Lafg;

    invoke-direct {v1}, Lafg;-><init>()V

    iget-object v2, p0, LmJ;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lafg;->a(Ljava/lang/String;)Lafg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafe;->a(Lafg;)Lafe;

    .line 690
    :try_start_31
    iget-object v1, p0, LmJ;->a:LmA;

    invoke-static {v1}, LmA;->a(LmA;)LaeJ;

    move-result-object v1

    invoke-virtual {v1}, LaeJ;->a()LaeP;

    move-result-object v1

    iget-object v2, p0, LmJ;->a:LmA;

    invoke-static {v2}, LmA;->b(LmA;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LmJ;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, LaeP;->a(Ljava/lang/String;Ljava/lang/String;Lafe;)LaeQ;

    move-result-object v0

    invoke-virtual {v0}, LaeQ;->a()Lafe;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4a} :catch_ab

    move-result-object v0

    .line 698
    iget-object v1, p0, LmJ;->a:LmN;

    invoke-static {v1, v0}, LmN;->a(LmN;Lafe;)Landroid/util/Pair;

    move-result-object v0

    .line 699
    iget-object v1, p0, LmJ;->a:LmA;

    invoke-static {v1}, LmA;->c(LmA;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 700
    :try_start_58
    iget-object v2, p0, LmJ;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)Ljava/util/TreeSet;

    move-result-object v2

    iget-object v3, p0, LmJ;->a:LmN;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 701
    iget-object v2, p0, LmJ;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)Ljava/util/TreeSet;

    move-result-object v2

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_71
    iget-object v2, p0, LmJ;->a:LmA;

    invoke-static {v2}, LmA;->b(LmA;)V

    .line 704
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_58 .. :try_end_77} :catchall_c5

    .line 705
    iget-object v1, p0, LmJ;->a:LmA;

    invoke-static {v1}, LmA;->b(LmA;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 706
    :try_start_7e
    iget-object v2, p0, LmJ;->a:LmA;

    invoke-static {v2}, LmA;->a(LmA;)LmL;

    move-result-object v2

    sget-object v3, LmL;->b:LmL;

    if-ne v2, v3, :cond_8f

    .line 708
    iget-object v2, p0, LmJ;->a:LmA;

    sget-object v3, LmL;->c:LmL;

    invoke-static {v2, v3}, LmA;->a(LmA;LmL;)LmL;

    .line 710
    :cond_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_7e .. :try_end_90} :catchall_c8

    .line 711
    iget-object v1, p0, LmJ;->a:LmA;

    invoke-static {v1}, LmA;->a(LmA;)LdE;

    move-result-object v1

    const-string v2, "discussion"

    const-string v3, "discussionResolveOk"

    iget-object v4, p0, LmJ;->a:LmA;

    invoke-static {v4}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 713
    iget-object v1, p0, LmJ;->a:Lmv;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lmv;->a(Ljava/lang/Object;)V

    .line 714
    :goto_aa
    return-void

    .line 691
    :catch_ab
    move-exception v0

    .line 692
    iget-object v1, p0, LmJ;->a:LmA;

    invoke-static {v1}, LmA;->a(LmA;)LdE;

    move-result-object v1

    const-string v2, "discussion"

    const-string v3, "discussionResolveError"

    iget-object v4, p0, LmJ;->a:LmA;

    invoke-static {v4}, LmA;->c(LmA;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 694
    iget-object v1, p0, LmJ;->a:Lmv;

    invoke-virtual {v1, v0}, Lmv;->a(Ljava/lang/Throwable;)V

    goto :goto_aa

    .line 704
    :catchall_c5
    move-exception v0

    :try_start_c6
    monitor-exit v1
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v0

    .line 710
    :catchall_c8
    move-exception v0

    :try_start_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v0
.end method

.class final Lbv/j;
.super LY/b;


# instance fields
.field final synthetic a:LR/b;

.field final synthetic e:[Lbw/m;

.field final synthetic f:I

.field final synthetic g:Lbv/g;


# direct methods
.method constructor <init>(Lbv/g;LY/c;LR/b;[Lbw/m;I)V
    .registers 6

    iput-object p1, p0, Lbv/j;->g:Lbv/g;

    iput-object p3, p0, Lbv/j;->a:LR/b;

    iput-object p4, p0, Lbv/j;->e:[Lbw/m;

    iput p5, p0, Lbv/j;->f:I

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    invoke-static {}, Lbv/g;->j()Lcom/google/gmm/debug/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Macro response received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbv/j;->a:LR/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lbv/j;->a:LR/b;

    invoke-interface {v0}, LR/b;->f()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {}, Lbv/g;->j()Lcom/google/gmm/debug/c;

    move-result-object v0

    const-string v1, "Macro response received - running"

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lbv/j;->g:Lbv/g;

    invoke-static {v0}, Lbv/g;->a(Lbv/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :goto_35
    :try_start_35
    iget-object v2, p0, Lbv/j;->e:[Lbw/m;

    array-length v2, v2

    if-ge v0, v2, :cond_4a

    iget-object v2, p0, Lbv/j;->e:[Lbw/m;

    aget-object v2, v2, v0

    iget-object v3, p0, Lbv/j;->a:LR/b;

    invoke-interface {v3}, LR/b;->k()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lbw/m;->d(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_4a
    iget-object v0, p0, Lbv/j;->g:Lbv/g;

    invoke-static {v0}, Lbv/g;->b(Lbv/g;)V

    monitor-exit v1

    :cond_50
    :goto_50
    return-void

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_35 .. :try_end_53} :catchall_51

    throw v0

    :cond_54
    iget-object v0, p0, Lbv/j;->a:LR/b;

    invoke-interface {v0}, LR/b;->g()Z

    move-result v0

    if-eqz v0, :cond_50

    :try_start_5c
    iget-object v0, p0, Lbv/j;->a:LR/b;

    invoke-interface {v0}, LR/b;->d()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-static {}, Lbv/g;->j()Lcom/google/gmm/debug/c;

    move-result-object v0

    const-string v1, "Macro response received - exception"

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lbv/j;->g:Lbv/g;

    iget-object v1, p0, Lbv/j;->e:[Lbw/m;

    iget-object v2, p0, Lbv/j;->a:LR/b;

    invoke-interface {v2}, LR/b;->c()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbv/g;->a(Lbv/g;[Lbw/m;Ljava/lang/Exception;)V

    :goto_7a
    iget-object v0, p0, Lbv/j;->g:Lbv/g;

    iget-object v1, p0, Lbv/j;->e:[Lbw/m;

    invoke-static {v0, v1}, Lbv/g;->a(Lbv/g;[Ljava/lang/Object;)V

    iget-object v0, p0, Lbv/j;->g:Lbv/g;

    iget v1, p0, Lbv/j;->f:I

    invoke-static {v0, v1}, Lbv/g;->a(Lbv/g;I)I
    :try_end_88
    .catchall {:try_start_5c .. :try_end_88} :catchall_a6

    iget-object v0, p0, Lbv/j;->g:Lbv/g;

    invoke-static {v0}, Lbv/g;->b(Lbv/g;)V

    iget-object v0, p0, Lbv/j;->a:LR/b;

    invoke-interface {v0}, LR/b;->b()V

    goto :goto_50

    :cond_93
    :try_start_93
    invoke-static {}, Lbv/g;->j()Lcom/google/gmm/debug/c;

    move-result-object v0

    const-string v1, "Macro response received - complete"

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lbv/j;->g:Lbv/g;

    iget-object v1, p0, Lbv/j;->a:LR/b;

    iget-object v2, p0, Lbv/j;->e:[Lbw/m;

    invoke-static {v0, v1, v2}, Lbv/g;->a(Lbv/g;LR/b;[Lbw/m;)V
    :try_end_a5
    .catchall {:try_start_93 .. :try_end_a5} :catchall_a6

    goto :goto_7a

    :catchall_a6
    move-exception v0

    iget-object v1, p0, Lbv/j;->g:Lbv/g;

    invoke-static {v1}, Lbv/g;->b(Lbv/g;)V

    iget-object v1, p0, Lbv/j;->a:LR/b;

    invoke-interface {v1}, LR/b;->b()V

    throw v0
.end method

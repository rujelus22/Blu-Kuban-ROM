.class LaJ/G;
.super LaJ/d;


# instance fields
.field final synthetic b:LaJ/D;

.field private c:Ljava/util/Vector;

.field private d:Ljava/util/Vector;

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(LaJ/D;B)V
    .registers 4

    iput-object p1, p0, LaJ/G;->b:LaJ/D;

    invoke-static {p1}, LaJ/D;->b(LaJ/D;)I

    move-result v0

    invoke-direct {p0, v0, p2}, LaJ/d;-><init>(IB)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaJ/G;->c:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaJ/G;->d:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, LaJ/G;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/G;->e:Z

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, LaJ/G;->c:Ljava/util/Vector;

    invoke-static {v1, p1, v0}, Lar/a;->a(Ljava/util/List;ILjava/util/List;)V

    iput-object v0, p0, LaJ/G;->c:Ljava/util/Vector;

    iget-object v0, p0, LaJ/G;->b:LaJ/D;

    invoke-virtual {v0}, LaJ/D;->b()V

    return-void
.end method

.method protected a(II)V
    .registers 4

    iget-object v0, p0, LaJ/G;->b:LaJ/D;

    invoke-virtual {v0, p1, p2}, LaJ/D;->a(II)V

    return-void
.end method

.method declared-synchronized a(LaJ/I;I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaJ/G;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Adding tiles to closed request!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, LaJ/G;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, LaJ/G;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v0

    :goto_22
    if-lez v1, :cond_42

    iget-object v0, p0, LaJ/G;->d:Ljava/util/Vector;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p2, v0, :cond_55

    iget-object v0, p0, LaJ/G;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, LaJ/G;->d:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_42
    if-nez v1, :cond_19

    iget-object v0, p0, LaJ/G;->c:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, LaJ/G;->d:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
    :try_end_54
    .catchall {:try_start_1b .. :try_end_54} :catchall_d

    goto :goto_19

    :cond_55
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_22
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    iget-object v0, p0, LaJ/G;->b:LaJ/D;

    invoke-static {v0}, LaJ/D;->c(LaJ/D;)I

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, LaJ/G;->e:Z

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_31

    const/4 v0, 0x0

    iput-object v0, p0, LaJ/G;->d:Ljava/util/Vector;

    iget-object v0, p0, LaJ/G;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [LaJ/P;

    const/4 v0, 0x0

    move v1, v0

    :goto_17
    iget-object v0, p0, LaJ/G;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_34

    iget-object v0, p0, LaJ/G;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    invoke-virtual {v0}, LaJ/I;->c()LaJ/P;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    invoke-virtual {p0, v2, p1}, LaJ/G;->a([LaJ/P;Ljava/io/DataOutput;)V

    return-void
.end method

.method protected a(ILaJ/P;[B)Z
    .registers 9

    iget-object v0, p0, LaJ/G;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/I;

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, LaJ/I;->c()LaJ/P;

    move-result-object v1

    invoke-virtual {v1, p2}, LaJ/P;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0, p3}, LaJ/I;->a([B)V

    invoke-virtual {v0}, LaJ/I;->g()J

    move-result-wide v1

    int-to-long v3, p1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, LaJ/I;->a(J)V

    iget-object v0, p0, LaJ/G;->b:LaJ/D;

    invoke-static {v0}, LaJ/D;->e(LaJ/D;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq/e;

    invoke-interface {v0}, Laq/e;->n()V

    goto :goto_2c

    :cond_3c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    iget-object v0, p0, LaJ/G;->b:LaJ/D;

    invoke-static {v0}, LaJ/D;->d(LaJ/D;)I

    invoke-super {p0, p1}, LaJ/d;->a(Ljava/io/DataInput;)Z

    iget-object v0, p0, LaJ/G;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public z_()Z
    .registers 2

    iget-boolean v0, p0, LaJ/G;->f:Z

    return v0
.end method

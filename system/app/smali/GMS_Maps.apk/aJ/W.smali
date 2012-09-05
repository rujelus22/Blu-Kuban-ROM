.class LaJ/W;
.super LaJ/d;


# instance fields
.field final synthetic b:LaJ/V;

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(LaJ/V;)V
    .registers 4

    iput-object p1, p0, LaJ/W;->b:LaJ/V;

    const/16 v0, 0x1a

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LaJ/d;-><init>(IB)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaJ/W;->c:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 2

    return-void
.end method

.method protected a(II)V
    .registers 3

    return-void
.end method

.method public a(LaJ/X;)V
    .registers 3

    iget-object v0, p0, LaJ/W;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5

    iget-object v0, p0, LaJ/W;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [LaJ/P;

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, LaJ/W;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    iget-object v0, p0, LaJ/W;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/X;

    invoke-virtual {v0}, LaJ/X;->a()LaJ/P;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_24
    invoke-virtual {p0, v2, p1}, LaJ/W;->a([LaJ/P;Ljava/io/DataOutput;)V

    return-void
.end method

.method protected a(ILaJ/P;[B)Z
    .registers 8

    iget-object v0, p0, LaJ/W;->b:LaJ/V;

    invoke-static {v0}, LaJ/V;->a(LaJ/V;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/X;

    if-nez v0, :cond_44

    new-instance v0, LaJ/X;

    invoke-direct {v0, p2}, LaJ/X;-><init>(LaJ/P;)V

    :cond_13
    :goto_13
    array-length v1, p3

    if-nez v1, :cond_50

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    invoke-static {}, LaJ/V;->e()[LaJ/U;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LaJ/X;->a(J[LaJ/U;)V

    :goto_29
    monitor-enter p0

    :try_start_2a
    iget-object v1, p0, LaJ/W;->b:LaJ/V;

    invoke-static {v1}, LaJ/V;->b(LaJ/V;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LaJ/W;->b:LaJ/V;

    invoke-static {v0}, LaJ/V;->a(LaJ/V;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_54

    iget-object v0, p0, LaJ/W;->b:LaJ/V;

    invoke-static {v0}, LaJ/V;->c(LaJ/V;)V

    const/4 v0, 0x0

    return v0

    :cond_44
    invoke-virtual {v0}, LaJ/X;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v0, LaJ/X;

    invoke-direct {v0, p2}, LaJ/X;-><init>(LaJ/P;)V

    goto :goto_13

    :cond_50
    invoke-virtual {v0, p3}, LaJ/X;->a([B)V

    goto :goto_29

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

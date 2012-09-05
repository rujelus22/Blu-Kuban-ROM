.class public Lcom/google/googlenav/ae;
.super Lat/a;


# instance fields
.field private final a:Lcom/google/googlenav/ah;

.field private final b:Lcom/google/googlenav/af;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;Lcom/google/googlenav/af;)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ah;

    iput-object p2, p0, Lcom/google/googlenav/ae;->b:Lcom/google/googlenav/af;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x75

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8

    const/4 v5, 0x1

    new-instance v1, Lam/b;

    sget-object v0, LbD/hE;->a:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v2

    invoke-virtual {v1, v5, v2, v3}, Lam/b;->b(IJ)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v2

    invoke-virtual {v2}, LaJ/B;->g()Lam/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILam/b;)V

    :cond_31
    iget-object v0, p0, Lcom/google/googlenav/ae;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->at()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aw;

    invoke-virtual {v0}, Lcom/google/googlenav/aw;->d()Z

    move-result v3

    if-nez v3, :cond_3f

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/google/googlenav/aw;->e()Lam/b;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lam/b;->a(ILam/b;)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/aw;->a(Z)V

    goto :goto_3f

    :cond_5d
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, LbD/hE;->b:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/b;->k(I)Z

    move-result v3

    if-nez v3, :cond_14

    iput-boolean v0, p0, Lcom/google/googlenav/ae;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ae;->d:I

    :goto_13
    return v1

    :cond_14
    invoke-virtual {v2, v1}, Lam/b;->d(I)I

    move-result v2

    iput v2, p0, Lcom/google/googlenav/ae;->d:I

    iget v2, p0, Lcom/google/googlenav/ae;->d:I

    if-nez v2, :cond_1f

    move v0, v1

    :cond_1f
    iput-boolean v0, p0, Lcom/google/googlenav/ae;->c:Z

    goto :goto_13
.end method

.method public b()V
    .registers 8

    iget-boolean v0, p0, Lcom/google/googlenav/ae;->c:Z

    if-eqz v0, :cond_36

    const-string v0, "s"

    :goto_6
    const/16 v1, 0x65

    const-string v2, "p"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ae;->b:Lcom/google/googlenav/af;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/googlenav/ae;->b:Lcom/google/googlenav/af;

    iget-boolean v1, p0, Lcom/google/googlenav/ae;->c:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/af;->a(Z)V

    :cond_35
    return-void

    :cond_36
    const-string v0, "e"

    goto :goto_6
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ae;->b:Lcom/google/googlenav/af;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ae;->b:Lcom/google/googlenav/af;

    invoke-interface {v0}, Lcom/google/googlenav/af;->a()V

    :cond_9
    return-void
.end method

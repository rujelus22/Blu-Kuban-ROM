.class public Lcom/google/googlenav/bA;
.super Lat/a;


# instance fields
.field a:Ljava/util/List;

.field private final b:Lcom/google/googlenav/ah;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/bB;

.field private final e:Z

.field private f:Lcom/google/googlenav/bC;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;Ljava/lang/String;ZLcom/google/googlenav/bB;)V
    .registers 6

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bA;->b:Lcom/google/googlenav/ah;

    iput-object p2, p0, Lcom/google/googlenav/bA;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/bA;->d:Lcom/google/googlenav/bB;

    iput-boolean p3, p0, Lcom/google/googlenav/bA;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/bA;->g:Z

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->as()Lcom/google/googlenav/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/av;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LK/bR;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bA;->a:Ljava/util/List;

    return-void
.end method

.method private k()Ljava/lang/String;
    .registers 3

    const-string v0, "hotpot-mobile-Android-widget"

    iget-object v1, p0, Lcom/google/googlenav/bA;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "w"

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "hotpot-mobile-Android-GMM"

    iget-object v1, p0, Lcom/google/googlenav/bA;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "a"

    goto :goto_c

    :cond_1a
    const-string v0, ""

    goto :goto_c
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x5d

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x6

    new-instance v1, Lam/b;

    sget-object v0, LbD/eB;->a:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lcom/google/googlenav/bA;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v2

    invoke-virtual {v1, v6, v2, v3}, Lam/b;->b(IJ)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/googlenav/bA;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/googlenav/bA;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/bA;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/googlenav/bA;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    invoke-virtual {v0}, LaJ/B;->g()Lam/b;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lam/b;->b(ILam/b;)V

    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/bA;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/bA;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    iget-boolean v0, p0, Lcom/google/googlenav/bA;->e:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/google/googlenav/bA;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_53
    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aw;

    invoke-virtual {v0}, Lcom/google/googlenav/aw;->d()Z

    move-result v4

    if-nez v4, :cond_53

    const v4, 0x7a120

    invoke-virtual {v0, v4}, Lcom/google/googlenav/aw;->a(I)Lam/b;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lam/b;->a(ILam/b;)V

    invoke-virtual {v0, v6}, Lcom/google/googlenav/aw;->a(Z)V

    goto :goto_53

    :cond_73
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILam/b;)V

    const/4 v0, 0x7

    const-string v3, "hotpot-mobile-Android-GMM"

    invoke-virtual {v1, v0, v3}, Lam/b;->b(ILjava/lang/String;)V

    const/16 v0, 0x5d

    invoke-static {v0, v1, v6}, Lcom/google/googlenav/ag;->a(ILam/b;Z)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    :goto_88
    invoke-virtual {v2, v5}, Lam/b;->l(I)I

    move-result v1

    if-ge v0, v1, :cond_9c

    invoke-virtual {v2, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v6, v3}, Lam/b;->b(I[B)V

    invoke-virtual {v2, v5, v0}, Lam/b;->g(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    :cond_9c
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, LbD/eB;->c:Lam/e;

    invoke-static {v2, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/b;->k(I)Z

    move-result v3

    if-nez v3, :cond_1c

    iput-boolean v0, p0, Lcom/google/googlenav/bA;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/bA;->h:I

    new-instance v0, Lcom/google/googlenav/bC;

    invoke-direct {v0}, Lcom/google/googlenav/bC;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/bA;->f:Lcom/google/googlenav/bC;

    :goto_1b
    return v1

    :cond_1c
    invoke-virtual {v2, v1}, Lam/b;->d(I)I

    move-result v3

    iput v3, p0, Lcom/google/googlenav/bA;->h:I

    iget v3, p0, Lcom/google/googlenav/bA;->h:I

    if-nez v3, :cond_27

    move v0, v1

    :cond_27
    iput-boolean v0, p0, Lcom/google/googlenav/bA;->g:Z

    iget-boolean v0, p0, Lcom/google/googlenav/bA;->g:Z

    if-nez v0, :cond_37

    new-instance v0, Lcom/google/googlenav/bC;

    iget v2, p0, Lcom/google/googlenav/bA;->h:I

    invoke-direct {v0, v2}, Lcom/google/googlenav/bC;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/bA;->f:Lcom/google/googlenav/bC;

    goto :goto_1b

    :cond_37
    invoke-virtual {v2, v4}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/googlenav/bA;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v2, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lam/b;->b(ILjava/lang/String;)V

    :cond_4b
    new-instance v0, Lcom/google/googlenav/bC;

    invoke-direct {v0, v2}, Lcom/google/googlenav/bC;-><init>(Lam/b;)V

    iput-object v0, p0, Lcom/google/googlenav/bA;->f:Lcom/google/googlenav/bC;

    goto :goto_1b
.end method

.method public b()V
    .registers 8

    iget-boolean v0, p0, Lcom/google/googlenav/bA;->g:Z

    if-eqz v0, :cond_3d

    const-string v0, "s"

    :goto_6
    const/16 v1, 0x55

    const-string v2, "r"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/googlenav/bA;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/bA;->d:Lcom/google/googlenav/bB;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/googlenav/bA;->d:Lcom/google/googlenav/bB;

    iget-object v1, p0, Lcom/google/googlenav/bA;->f:Lcom/google/googlenav/bC;

    invoke-interface {v0, v1}, Lcom/google/googlenav/bB;->a(Lcom/google/googlenav/bC;)V

    :cond_3c
    return-void

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/google/googlenav/bA;->h:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/googlenav/bA;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_6b
    const-string v0, ""

    goto :goto_62
.end method

.method public c_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j_()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bA;->d:Lcom/google/googlenav/bB;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/bA;->d:Lcom/google/googlenav/bB;

    invoke-interface {v0}, Lcom/google/googlenav/bB;->a()V

    :cond_9
    return-void
.end method

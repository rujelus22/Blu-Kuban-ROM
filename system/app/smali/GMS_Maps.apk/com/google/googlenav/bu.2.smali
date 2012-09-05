.class public Lcom/google/googlenav/bu;
.super Ljava/lang/Object;

# interfaces
.implements LaM/l;
.implements Lcom/google/googlenav/E;


# instance fields
.field private final a:LaM/f;

.field private final b:LaY/k;

.field private c:I

.field private d:B

.field private final e:Ljava/util/List;

.field private f:Lcom/google/googlenav/ah;

.field private g:Z


# direct methods
.method public constructor <init>(LaM/f;LaY/k;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bu;->e:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/bu;->g:Z

    iput-object p1, p0, Lcom/google/googlenav/bu;->a:LaM/f;

    iput-object p2, p0, Lcom/google/googlenav/bu;->b:LaY/k;

    invoke-interface {p1}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0, p0}, LaM/i;->a(LaM/l;)V

    return-void
.end method

.method private a(LaM/m;)Lcom/google/googlenav/ah;
    .registers 3

    new-instance v0, Lcom/google/googlenav/bt;

    invoke-direct {v0, p1}, Lcom/google/googlenav/bt;-><init>(LaM/m;)V

    return-object v0
.end method

.method private b(LaM/m;)Lcom/google/googlenav/ah;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/bu;->a:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-virtual {p1}, LaM/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, LaM/i;->b(Ljava/lang/String;)LaM/n;

    move-result-object v0

    if-eqz v0, :cond_24

    :try_start_10
    invoke-virtual {v0}, LaM/n;->b()Lam/b;

    move-result-object v1

    new-instance v0, Lcom/google/googlenav/bt;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, Lam/g;->a(Lam/b;)Lam/b;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/bt;-><init>(LaM/m;Lam/b;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_23

    :goto_22
    return-object v0

    :catch_23
    move-exception v0

    :cond_24
    invoke-direct {p0, p1}, Lcom/google/googlenav/bu;->a(LaM/m;)Lcom/google/googlenav/ah;

    move-result-object v0

    goto :goto_22
.end method

.method private c(Ljava/lang/String;)Lcom/google/googlenav/ah;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bu;->a:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0, p1}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0, v0}, Lcom/google/googlenav/bu;->b(LaM/m;)Lcom/google/googlenav/ah;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private d(Ljava/lang/String;)I
    .registers 5

    const/4 v2, -0x1

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v1, v2

    :cond_8
    :goto_8
    return v1

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v0, p0, Lcom/google/googlenav/bu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    iget-object v0, p0, Lcom/google/googlenav/bu;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_29
    move v1, v2

    goto :goto_8
.end method

.method private g()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/bu;->a:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0}, LaM/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/m;

    invoke-virtual {v0}, LaM/m;->h()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/googlenav/bu;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/googlenav/bu;->a(LaM/m;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2a
    return-void
.end method

.method private h()V
    .registers 3

    iget-byte v0, p0, Lcom/google/googlenav/bu;->d:B

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/bu;->f:Lcom/google/googlenav/ah;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/bu;->f:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/bu;->d(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_23

    iget-object v1, p0, Lcom/google/googlenav/bu;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/bu;->f:Lcom/google/googlenav/ah;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bu;->a(I)V

    :goto_22
    return-void

    :cond_23
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bu;->a(I)V

    goto :goto_22
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/bu;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bu;->a:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0, p0}, LaM/i;->b(LaM/l;)V

    return-void
.end method

.method public a(B)V
    .registers 2

    iput-byte p1, p0, Lcom/google/googlenav/bu;->d:B

    return-void
.end method

.method public a(I)V
    .registers 5

    iput p1, p0, Lcom/google/googlenav/bu;->c:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/googlenav/bu;->d:B

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/googlenav/bu;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/google/googlenav/bu;->f:Lcom/google/googlenav/ah;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/google/googlenav/bu;->f:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_25
    invoke-virtual {v0}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/bu;->c(Ljava/lang/String;)Lcom/google/googlenav/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bu;->f:Lcom/google/googlenav/ah;

    :cond_2f
    iget-byte v0, p0, Lcom/google/googlenav/bu;->d:B

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/bu;->f:Lcom/google/googlenav/ah;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/google/googlenav/bu;->d:B

    goto :goto_8
.end method

.method public b(I)Lcom/google/googlenav/D;
    .registers 3

    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/bu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/bu;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/D;

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/bu;->g:Z

    return-void
.end method

.method public b()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/googlenav/bu;->g:Z

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/google/googlenav/bu;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/google/googlenav/bu;->g()V

    iput-boolean v0, p0, Lcom/google/googlenav/bu;->g:Z

    invoke-direct {p0}, Lcom/google/googlenav/bu;->h()V

    iget-object v0, p0, Lcom/google/googlenav/bu;->b:LaY/k;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/bu;->b:LaY/k;

    invoke-interface {v1, v0}, LaY/k;->b(LaY/i;)V

    :cond_1d
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/bu;->c:I

    return v0
.end method

.method public c(I)I
    .registers 2

    return p1
.end method

.method public d()B
    .registers 2

    iget-byte v0, p0, Lcom/google/googlenav/bu;->d:B

    return v0
.end method

.method public e()Lcom/google/googlenav/D;
    .registers 2

    iget-byte v0, p0, Lcom/google/googlenav/bu;->d:B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/bu;->f:Lcom/google/googlenav/ah;

    goto :goto_5
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

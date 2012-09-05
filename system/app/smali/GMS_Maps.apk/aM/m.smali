.class public LaM/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:LaJ/B;

.field private e:Ljava/util/List;

.field private f:J

.field private g:I

.field private h:I

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private l:J


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LaM/m;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LaM/m;->f:J

    iput v2, p0, LaM/m;->g:I

    iput v2, p0, LaM/m;->h:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, LaM/m;->l:J

    return-void
.end method

.method public constructor <init>(Lam/b;)V
    .registers 5

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LaM/m;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LaM/m;->f:J

    iput v2, p0, LaM/m;->g:I

    iput v2, p0, LaM/m;->h:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, LaM/m;->l:J

    invoke-virtual {p1}, Lam/b;->c()Lam/e;

    move-result-object v0

    sget-object v1, LbD/fC;->a:Lam/e;

    if-ne v0, v1, :cond_23

    invoke-direct {p0, p1}, LaM/m;->a(Lam/b;)V

    :goto_22
    return-void

    :cond_23
    invoke-direct {p0, p1}, LaM/m;->b(Lam/b;)V

    goto :goto_22
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/b;Z)V
    .registers 9

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LaM/m;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LaM/m;->f:J

    iput v2, p0, LaM/m;->g:I

    iput v2, p0, LaM/m;->h:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, LaM/m;->l:J

    iput-object p1, p0, LaM/m;->a:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LaM/m;->i:Ljava/lang/Boolean;

    iput-object p2, p0, LaM/m;->b:Ljava/lang/String;

    iput-object p3, p0, LaM/m;->c:Ljava/lang/String;

    invoke-static {p4}, LaJ/C;->c(Lam/b;)LaJ/B;

    move-result-object v0

    iput-object v0, p0, LaM/m;->d:LaJ/B;

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    iput-object v0, p0, LaM/m;->e:Ljava/util/List;

    return-void
.end method

.method private static a(Lam/b;I)Ljava/lang/Boolean;
    .registers 3

    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lam/b;->b(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private a(Lam/b;)V
    .registers 4

    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaM/m;->a:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p1, v0}, LaM/m;->a(Lam/b;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LaM/m;->i:Ljava/lang/Boolean;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaM/m;->b:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaM/m;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, LaJ/C;->c(Lam/b;)LaJ/B;

    move-result-object v0

    iput-object v0, p0, LaM/m;->d:LaJ/B;

    :cond_2d
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lam/g;->d(Lam/b;I)[Lam/b;

    move-result-object v0

    invoke-static {v0}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lt/y;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LaM/m;->e:Ljava/util/List;

    return-void
.end method

.method private static a(Lam/b;ILjava/lang/Boolean;)V
    .registers 4

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lam/b;->b(IZ)V

    :cond_9
    return-void
.end method

.method private b(Lam/b;)V
    .registers 6

    const/4 v1, 0x3

    const/4 v3, -0x1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaM/m;->a:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaM/m;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, LaJ/C;->c(Lam/b;)LaJ/B;

    move-result-object v0

    iput-object v0, p0, LaM/m;->d:LaJ/B;

    :cond_20
    const/4 v0, 0x4

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lam/g;->a(Lam/b;IJ)J

    move-result-wide v0

    iput-wide v0, p0, LaM/m;->f:J

    const/4 v0, 0x5

    invoke-static {p1, v0, v3}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, LaM/m;->g:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, LaM/m;->a(Lam/b;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LaM/m;->i:Ljava/lang/Boolean;

    const/4 v0, 0x7

    invoke-static {p1, v0}, LaM/m;->a(Lam/b;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LaM/m;->j:Ljava/lang/Boolean;

    const/16 v0, 0x8

    invoke-static {p1, v0, v3}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput v0, p0, LaM/m;->h:I

    const/16 v0, 0x9

    invoke-static {p1, v0}, LaM/m;->a(Lam/b;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LaM/m;->k:Ljava/lang/Boolean;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lam/g;->d(Lam/b;I)[Lam/b;

    move-result-object v0

    invoke-static {v0}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lt/y;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LaM/m;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaM/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, LaM/m;->g:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, LaM/m;->f:J

    return-void
.end method

.method public a(LaJ/B;)V
    .registers 2

    iput-object p1, p0, LaM/m;->d:LaJ/B;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LaM/m;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, LaM/m;->e:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LaM/m;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaM/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, LaM/m;->l:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LaM/m;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaM/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()LaJ/B;
    .registers 2

    iget-object v0, p0, LaM/m;->d:LaJ/B;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, LaM/m;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()J
    .registers 3

    iget-wide v0, p0, LaM/m;->f:J

    return-wide v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, LaM/m;->g:I

    return v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, LaM/m;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, LaM/m;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public i()Lam/b;
    .registers 5

    new-instance v1, Lam/b;

    sget-object v0, LbD/fC;->a:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x1

    iget-object v2, p0, LaM/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v2, p0, LaM/m;->i:Ljava/lang/Boolean;

    invoke-static {v1, v0, v2}, LaM/m;->a(Lam/b;ILjava/lang/Boolean;)V

    iget-object v0, p0, LaM/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_1d

    const/4 v0, 0x3

    iget-object v2, p0, LaM/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_1d
    iget-object v0, p0, LaM/m;->c:Ljava/lang/String;

    if-eqz v0, :cond_27

    const/4 v0, 0x4

    iget-object v2, p0, LaM/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_27
    iget-object v0, p0, LaM/m;->d:LaJ/B;

    if-eqz v0, :cond_35

    const/4 v0, 0x5

    iget-object v2, p0, LaM/m;->d:LaJ/B;

    invoke-static {v2}, LaJ/C;->d(LaJ/B;)Lam/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILam/b;)V

    :cond_35
    iget-object v0, p0, LaM/m;->e:Ljava/util/List;

    if-eqz v0, :cond_5c

    iget-object v0, p0, LaM/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5c

    iget-object v0, p0, LaM/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    const/4 v3, 0x7

    invoke-virtual {v0}, Lt/y;->c()Lam/b;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_47

    :cond_5c
    return-object v1
.end method

.method public j()Lam/b;
    .registers 8

    const/4 v6, -0x1

    new-instance v1, Lam/b;

    sget-object v0, LbD/dP;->a:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x1

    iget-object v2, p0, LaM/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v0, p0, LaM/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v2, p0, LaM/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, LaM/m;->d:LaJ/B;

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    iget-object v2, p0, LaM/m;->d:LaJ/B;

    invoke-static {v2}, LaJ/C;->d(LaJ/B;)Lam/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILam/b;)V

    :cond_26
    iget-wide v2, p0, LaM/m;->f:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_34

    const/4 v0, 0x4

    iget-wide v2, p0, LaM/m;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lam/b;->b(IJ)V

    :cond_34
    iget v0, p0, LaM/m;->g:I

    if-eq v0, v6, :cond_3e

    const/4 v0, 0x5

    iget v2, p0, LaM/m;->g:I

    invoke-virtual {v1, v0, v2}, Lam/b;->h(II)V

    :cond_3e
    const/4 v0, 0x6

    iget-object v2, p0, LaM/m;->i:Ljava/lang/Boolean;

    invoke-static {v1, v0, v2}, LaM/m;->a(Lam/b;ILjava/lang/Boolean;)V

    const/4 v0, 0x7

    iget-object v2, p0, LaM/m;->j:Ljava/lang/Boolean;

    invoke-static {v1, v0, v2}, LaM/m;->a(Lam/b;ILjava/lang/Boolean;)V

    iget v0, p0, LaM/m;->h:I

    if-eq v0, v6, :cond_55

    const/16 v0, 0x8

    iget v2, p0, LaM/m;->h:I

    invoke-virtual {v1, v0, v2}, Lam/b;->h(II)V

    :cond_55
    const/16 v0, 0x9

    iget-object v2, p0, LaM/m;->k:Ljava/lang/Boolean;

    invoke-static {v1, v0, v2}, LaM/m;->a(Lam/b;ILjava/lang/Boolean;)V

    iget-object v0, p0, LaM/m;->e:Ljava/util/List;

    if-eqz v0, :cond_84

    iget-object v0, p0, LaM/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_84

    iget-object v0, p0, LaM/m;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    const/16 v3, 0xa

    invoke-virtual {v0}, Lt/y;->c()Lam/b;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_6e

    :cond_84
    return-object v1
.end method

.method public k()J
    .registers 3

    iget-wide v0, p0, LaM/m;->l:J

    return-wide v0
.end method

.class public Lbe/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Lbe/h;

.field private i:Lbe/g;

.field private j:Lbe/j;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbe/i;->f:Ljava/util/List;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbe/i;->g:Ljava/util/List;

    sget-object v0, Lbe/j;->a:Lbe/j;

    iput-object v0, p0, Lbe/i;->j:Lbe/j;

    return-void
.end method

.method public static a(Lam/b;)Lbe/i;
    .registers 9

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x0

    new-instance v0, Lbe/i;

    invoke-direct {v0}, Lbe/i;-><init>()V

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbe/i;->a:Ljava/lang/String;

    invoke-static {p0, v3}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbe/i;->b:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbe/i;->e:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lam/g;->e(Lam/b;I)I

    move-result v2

    iput v2, v0, Lbe/i;->c:I

    sget-object v2, Lbe/j;->a:Lbe/j;

    iput-object v2, v0, Lbe/i;->j:Lbe/j;

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lam/g;->e(Lam/b;I)I

    move-result v2

    if-ne v2, v3, :cond_34

    sget-object v2, Lbe/j;->b:Lbe/j;

    iput-object v2, v0, Lbe/i;->j:Lbe/j;

    :cond_34
    iget-object v2, v0, Lbe/i;->e:Ljava/lang/String;

    invoke-static {v2}, Las/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "uddq_experiment"

    iput-object v2, v0, Lbe/i;->e:Ljava/lang/String;

    :cond_40
    const/4 v2, 0x7

    invoke-static {p0, v2}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbe/i;->d:Ljava/lang/String;

    iget-object v2, v0, Lbe/i;->d:Ljava/lang/String;

    invoke-static {v2}, Las/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "Thank you for your feedback."

    iput-object v2, v0, Lbe/i;->d:Ljava/lang/String;

    :cond_53
    invoke-virtual {p0, v7}, Lam/b;->l(I)I

    move-result v3

    move v2, v1

    :goto_58
    if-ge v2, v3, :cond_6a

    invoke-virtual {p0, v7, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4}, Lbe/d;->a(Lam/b;)Lbe/d;

    move-result-object v4

    iget-object v5, v0, Lbe/i;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_6a
    invoke-virtual {p0, v6}, Lam/b;->l(I)I

    move-result v2

    :goto_6e
    if-ge v1, v2, :cond_82

    invoke-virtual {p0, v6, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-static {v3}, Lbe/e;->a(Lam/b;)Lbe/e;

    move-result-object v3

    if-eqz v3, :cond_7f

    iget-object v4, v0, Lbe/i;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_82
    iget-object v1, v0, Lbe/i;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8b

    const/4 v0, 0x0

    :cond_8b
    return-object v0
.end method

.method static synthetic a(Lbe/i;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lbe/i;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbe/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lbe/g;)V
    .registers 2

    iput-object p1, p0, Lbe/i;->i:Lbe/g;

    return-void
.end method

.method public a(Lbe/h;)V
    .registers 2

    iput-object p1, p0, Lbe/i;->h:Lbe/h;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbe/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbe/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lbe/i;->f:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lbe/i;->g:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lbe/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lbe/i;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lbe/i;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/e;

    iget-object v0, v0, Lbe/e;->a:Lbe/f;

    iget v0, v0, Lbe/f;->h:I

    goto :goto_9
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Lbe/i;->h:Lbe/h;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public i()Lbe/h;
    .registers 2

    iget-object v0, p0, Lbe/i;->h:Lbe/h;

    return-object v0
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Lbe/i;->i:Lbe/g;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public k()Lbe/g;
    .registers 2

    iget-object v0, p0, Lbe/i;->i:Lbe/g;

    return-object v0
.end method

.method public l()Z
    .registers 3

    sget-object v0, Lbe/j;->b:Lbe/j;

    iget-object v1, p0, Lbe/i;->j:Lbe/j;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

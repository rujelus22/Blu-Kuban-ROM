.class public Lcom/google/googlenav/O;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lam/b;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/util/List;

.field private m:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/O;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/O;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Lam/b;)Lcom/google/googlenav/O;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/O;->j:Lam/b;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/google/googlenav/O;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/O;->m:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/O;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/O;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/google/googlenav/O;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/O;->l:Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/O;
    .registers 3

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/O;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a()V
    .registers 10

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    sget-boolean v1, Lcom/google/googlenav/N;->a:Z

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/google/googlenav/O;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_118

    move v1, v2

    :goto_14
    new-instance v3, Lam/b;

    sget-object v4, LbD/dy;->b:Lam/e;

    invoke-direct {v3, v4}, Lam/b;-><init>(Lam/e;)V

    iget-object v4, p0, Lcom/google/googlenav/O;->a:Ljava/lang/String;

    if-eqz v4, :cond_25

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/googlenav/O;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lam/b;->b(ILjava/lang/String;)V

    :cond_25
    iget-object v4, p0, Lcom/google/googlenav/O;->b:Ljava/lang/Integer;

    if-eqz v4, :cond_34

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/googlenav/O;->b:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lam/b;->h(II)V

    :cond_34
    iget-object v4, p0, Lcom/google/googlenav/O;->c:Ljava/lang/String;

    if-eqz v4, :cond_3e

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/googlenav/O;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lam/b;->b(ILjava/lang/String;)V

    :cond_3e
    iget-object v4, p0, Lcom/google/googlenav/O;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lam/b;->h(II)V

    invoke-static {v3}, Lcom/google/googlenav/N;->a(Lam/b;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lcom/google/googlenav/ui/bq;->a(Ljava/util/Date;)Lam/b;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lam/b;->b(ILam/b;)V

    iget-object v4, p0, Lcom/google/googlenav/O;->e:Ljava/lang/String;

    if-eqz v4, :cond_62

    iget-object v4, p0, Lcom/google/googlenav/O;->e:Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Lam/b;->b(ILjava/lang/String;)V

    :cond_62
    iget-object v4, p0, Lcom/google/googlenav/O;->f:Ljava/lang/Boolean;

    if-eqz v4, :cond_6f

    iget-object v4, p0, Lcom/google/googlenav/O;->f:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v8, v4}, Lam/b;->b(IZ)V

    :cond_6f
    iget-object v4, p0, Lcom/google/googlenav/O;->g:Ljava/lang/String;

    if-nez v4, :cond_83

    iget-object v4, p0, Lcom/google/googlenav/O;->h:Ljava/lang/String;

    if-nez v4, :cond_83

    iget-object v4, p0, Lcom/google/googlenav/O;->i:Ljava/lang/String;

    if-nez v4, :cond_83

    iget-object v4, p0, Lcom/google/googlenav/O;->j:Lam/b;

    if-nez v4, :cond_83

    iget-object v4, p0, Lcom/google/googlenav/O;->m:Ljava/lang/Integer;

    if-eqz v4, :cond_ce

    :cond_83
    new-instance v4, Lam/b;

    sget-object v5, LbD/dy;->a:Lam/e;

    invoke-direct {v4, v5}, Lam/b;-><init>(Lam/e;)V

    const/4 v5, 0x7

    invoke-virtual {v3, v5, v4}, Lam/b;->b(ILam/b;)V

    iget-object v5, p0, Lcom/google/googlenav/O;->g:Ljava/lang/String;

    if-eqz v5, :cond_97

    iget-object v5, p0, Lcom/google/googlenav/O;->g:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lam/b;->b(ILjava/lang/String;)V

    :cond_97
    iget-object v5, p0, Lcom/google/googlenav/O;->h:Ljava/lang/String;

    if-eqz v5, :cond_a0

    iget-object v5, p0, Lcom/google/googlenav/O;->h:Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Lam/b;->b(ILjava/lang/String;)V

    :cond_a0
    iget-object v5, p0, Lcom/google/googlenav/O;->i:Ljava/lang/String;

    if-eqz v5, :cond_a9

    iget-object v5, p0, Lcom/google/googlenav/O;->i:Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Lam/b;->b(ILjava/lang/String;)V

    :cond_a9
    iget-object v5, p0, Lcom/google/googlenav/O;->j:Lam/b;

    if-eqz v5, :cond_b2

    iget-object v5, p0, Lcom/google/googlenav/O;->j:Lam/b;

    invoke-virtual {v4, v2, v5}, Lam/b;->b(ILam/b;)V

    :cond_b2
    iget-object v2, p0, Lcom/google/googlenav/O;->k:Ljava/lang/Boolean;

    if-eqz v2, :cond_c0

    const/4 v2, 0x5

    iget-object v5, p0, Lcom/google/googlenav/O;->k:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Lam/b;->b(IZ)V

    :cond_c0
    iget-object v2, p0, Lcom/google/googlenav/O;->m:Ljava/lang/Integer;

    if-eqz v2, :cond_ce

    const/4 v2, 0x6

    iget-object v5, p0, Lcom/google/googlenav/O;->m:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lam/b;->h(II)V

    :cond_ce
    iget-object v2, p0, Lcom/google/googlenav/O;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/N;->b(I)Z

    move-result v2

    if-eqz v2, :cond_ff

    iget-object v2, p0, Lcom/google/googlenav/O;->l:Ljava/util/List;

    if-eqz v2, :cond_ff

    move v2, v0

    :goto_df
    iget-object v0, p0, Lcom/google/googlenav/O;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_ff

    const/16 v4, 0xa

    iget-object v0, p0, Lcom/google/googlenav/O;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lam/b;->a(II)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_df

    :sswitch_fc
    move v1, v0

    goto/16 :goto_14

    :cond_ff
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/N;

    invoke-direct {v2, v3, v1}, Lcom/google/googlenav/N;-><init>(Lam/b;Z)V

    invoke-virtual {v0, v2}, Lat/h;->c(Lat/g;)V

    iget-object v0, p0, Lcom/google/googlenav/O;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_9

    invoke-static {v3}, Lcom/google/googlenav/N;->b(Lam/b;)V

    goto/16 :goto_9

    :sswitch_data_118
    .sparse-switch
        0x5 -> :sswitch_fc
        0x10 -> :sswitch_fc
    .end sparse-switch
.end method

.method public b(I)Lcom/google/googlenav/O;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/O;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/O;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/O;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/O;
    .registers 3

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/googlenav/O;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/O;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/O;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/googlenav/O;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/O;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/googlenav/O;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/O;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/googlenav/O;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/O;->i:Ljava/lang/String;

    return-object p0
.end method

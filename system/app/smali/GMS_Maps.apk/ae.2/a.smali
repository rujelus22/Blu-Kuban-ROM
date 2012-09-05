.class public final Lae/a;
.super Ljava/lang/Object;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private volatile r:Z

.field private volatile s:Z

.field private volatile t:Z

.field private volatile u:Z


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lae/a;->a:Z

    iput-boolean v0, p0, Lae/a;->b:Z

    iput-boolean v0, p0, Lae/a;->c:Z

    iput-boolean v0, p0, Lae/a;->d:Z

    iput-boolean v0, p0, Lae/a;->e:Z

    iput-boolean v0, p0, Lae/a;->f:Z

    iput-boolean v0, p0, Lae/a;->g:Z

    iput-boolean v0, p0, Lae/a;->h:Z

    iput-boolean v0, p0, Lae/a;->i:Z

    iput-boolean v0, p0, Lae/a;->j:Z

    iput-boolean v0, p0, Lae/a;->k:Z

    iput-boolean v0, p0, Lae/a;->l:Z

    iput-boolean v0, p0, Lae/a;->m:Z

    iput-boolean v0, p0, Lae/a;->n:Z

    iput-boolean v0, p0, Lae/a;->o:Z

    iput-boolean v0, p0, Lae/a;->p:Z

    iput-boolean v0, p0, Lae/a;->q:Z

    iput-boolean v0, p0, Lae/a;->r:Z

    iput-boolean v0, p0, Lae/a;->s:Z

    iput-boolean v0, p0, Lae/a;->t:Z

    iput-boolean v0, p0, Lae/a;->u:Z

    invoke-direct {p0, p1}, Lae/a;->b(Lam/b;)V

    return-void
.end method

.method private b(Lam/b;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lae/a;->a:Z

    if-eqz v0, :cond_11f

    invoke-virtual {p1, v1}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_11f

    move v0, v1

    :goto_d
    iput-boolean v0, p0, Lae/a;->a:Z

    iget-boolean v0, p0, Lae/a;->b:Z

    if-eqz v0, :cond_122

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_122

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lae/a;->b:Z

    iget-boolean v0, p0, Lae/a;->c:Z

    if-eqz v0, :cond_125

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_125

    move v0, v1

    :goto_29
    iput-boolean v0, p0, Lae/a;->c:Z

    iget-boolean v0, p0, Lae/a;->d:Z

    if-eqz v0, :cond_128

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_128

    move v0, v1

    :goto_37
    iput-boolean v0, p0, Lae/a;->d:Z

    iget-boolean v0, p0, Lae/a;->e:Z

    if-eqz v0, :cond_12b

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_12b

    move v0, v1

    :goto_45
    iput-boolean v0, p0, Lae/a;->e:Z

    iget-boolean v0, p0, Lae/a;->f:Z

    if-eqz v0, :cond_12e

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_12e

    move v0, v1

    :goto_53
    iput-boolean v0, p0, Lae/a;->f:Z

    iget-boolean v0, p0, Lae/a;->g:Z

    if-eqz v0, :cond_131

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_131

    move v0, v1

    :goto_62
    iput-boolean v0, p0, Lae/a;->g:Z

    iget-boolean v0, p0, Lae/a;->h:Z

    if-eqz v0, :cond_134

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_134

    move v0, v1

    :goto_70
    iput-boolean v0, p0, Lae/a;->h:Z

    iget-boolean v0, p0, Lae/a;->i:Z

    if-eqz v0, :cond_137

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_137

    move v0, v1

    :goto_7f
    iput-boolean v0, p0, Lae/a;->i:Z

    iget-boolean v0, p0, Lae/a;->j:Z

    if-eqz v0, :cond_13a

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_13a

    move v0, v1

    :goto_8e
    iput-boolean v0, p0, Lae/a;->j:Z

    iget-boolean v0, p0, Lae/a;->k:Z

    if-eqz v0, :cond_13d

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_13d

    move v0, v1

    :goto_9d
    iput-boolean v0, p0, Lae/a;->k:Z

    iget-boolean v0, p0, Lae/a;->l:Z

    if-eqz v0, :cond_140

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_140

    move v0, v1

    :goto_ac
    iput-boolean v0, p0, Lae/a;->l:Z

    iget-boolean v0, p0, Lae/a;->m:Z

    if-eqz v0, :cond_143

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_143

    move v0, v1

    :goto_bb
    iput-boolean v0, p0, Lae/a;->m:Z

    iget-boolean v0, p0, Lae/a;->n:Z

    if-eqz v0, :cond_146

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_146

    move v0, v1

    :goto_ca
    iput-boolean v0, p0, Lae/a;->n:Z

    iget-boolean v0, p0, Lae/a;->o:Z

    if-eqz v0, :cond_148

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_148

    move v0, v1

    :goto_d9
    iput-boolean v0, p0, Lae/a;->o:Z

    iget-boolean v0, p0, Lae/a;->p:Z

    if-eqz v0, :cond_14a

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_14a

    move v0, v1

    :goto_e8
    iput-boolean v0, p0, Lae/a;->p:Z

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lae/a;->r:Z

    iget-boolean v0, p0, Lae/a;->q:Z

    if-eqz v0, :cond_14c

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_14c

    move v0, v1

    :goto_ff
    iput-boolean v0, p0, Lae/a;->q:Z

    iget-boolean v0, p0, Lae/a;->s:Z

    if-eqz v0, :cond_14e

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_14e

    move v0, v1

    :goto_10e
    iput-boolean v0, p0, Lae/a;->s:Z

    iget-boolean v0, p0, Lae/a;->u:Z

    if-eqz v0, :cond_150

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_150

    :goto_11c
    iput-boolean v1, p0, Lae/a;->u:Z

    return-void

    :cond_11f
    move v0, v2

    goto/16 :goto_d

    :cond_122
    move v0, v2

    goto/16 :goto_1b

    :cond_125
    move v0, v2

    goto/16 :goto_29

    :cond_128
    move v0, v2

    goto/16 :goto_37

    :cond_12b
    move v0, v2

    goto/16 :goto_45

    :cond_12e
    move v0, v2

    goto/16 :goto_53

    :cond_131
    move v0, v2

    goto/16 :goto_62

    :cond_134
    move v0, v2

    goto/16 :goto_70

    :cond_137
    move v0, v2

    goto/16 :goto_7f

    :cond_13a
    move v0, v2

    goto/16 :goto_8e

    :cond_13d
    move v0, v2

    goto/16 :goto_9d

    :cond_140
    move v0, v2

    goto/16 :goto_ac

    :cond_143
    move v0, v2

    goto/16 :goto_bb

    :cond_146
    move v0, v2

    goto :goto_ca

    :cond_148
    move v0, v2

    goto :goto_d9

    :cond_14a
    move v0, v2

    goto :goto_e8

    :cond_14c
    move v0, v2

    goto :goto_ff

    :cond_14e
    move v0, v2

    goto :goto_10e

    :cond_150
    move v1, v2

    goto :goto_11c
.end method

.method public static q()Lam/b;
    .registers 2

    new-instance v0, Lam/b;

    sget-object v1, LbD/z;->e:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    return-object v0
.end method


# virtual methods
.method public a(Lam/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lae/a;->b(Lam/b;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->a:Z

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->b:Z

    return v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->e:Z

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->f:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->g:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->h:Z

    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->j:Z

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->k:Z

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->l:Z

    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->m:Z

    return v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->n:Z

    return v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->o:Z

    return v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->p:Z

    return v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->r:Z

    return v0
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->q:Z

    return v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lae/a;->s:Z

    return v0
.end method

.class final La/C;
.super Ld/av;


# instance fields
.field final synthetic a:La/A;


# direct methods
.method private constructor <init>(La/A;)V
    .registers 2

    iput-object p1, p0, La/C;->a:La/A;

    invoke-direct {p0}, Ld/av;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/A;La/B;)V
    .registers 3

    invoke-direct {p0, p1}, La/C;-><init>(La/A;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, La/C;->a:La/A;

    iget-object v0, v0, La/A;->n:Ld/J;

    if-eqz v0, :cond_22

    iget-object v0, p0, La/C;->a:La/A;

    iget-wide v0, v0, La/A;->l:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_11
    invoke-static {v0}, Lcom/google/common/base/v;->b(Z)V

    iget-object v0, p0, La/C;->a:La/A;

    iget-object v0, v0, La/A;->n:Ld/J;

    if-eqz v0, :cond_21

    iget-object v0, p0, La/C;->a:La/A;

    iget-object v0, v0, La/A;->n:Ld/J;

    invoke-interface {v0}, Ld/J;->b()V

    :cond_21
    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public a(Ld/aq;)V
    .registers 11

    const/4 v8, 0x1

    iget-object v0, p0, La/C;->a:La/A;

    iget-object v0, v0, La/A;->n:Ld/J;

    if-eqz v0, :cond_34

    iget-object v0, p0, La/C;->a:La/A;

    iget-wide v0, v0, La/A;->l:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    move v0, v8

    :goto_12
    invoke-static {v0}, Lcom/google/common/base/v;->b(Z)V

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Ld/aq;->a()I

    move-result v0

    if-nez v0, :cond_36

    const/4 v7, 0x3

    :goto_1e
    iget-object v0, p0, La/C;->a:La/A;

    iget-object v1, p0, La/C;->a:La/A;

    iget-wide v1, v1, La/A;->l:J

    iget-object v3, p0, La/C;->a:La/A;

    iget-wide v3, v3, La/A;->m:J

    iget-object v5, p0, La/C;->a:La/A;

    iget-object v5, v5, La/A;->b:Li/E;

    invoke-interface {v5}, Li/E;->a()J

    move-result-wide v5

    invoke-static/range {v0 .. v8}, La/A;->a(La/A;JJJIZ)V

    return-void

    :cond_34
    const/4 v0, 0x0

    goto :goto_12

    :cond_36
    iget-object v0, p0, La/C;->a:La/A;

    iget-boolean v0, v0, La/A;->o:Z

    if-eqz v0, :cond_3e

    const/4 v7, 0x2

    goto :goto_1e

    :cond_3e
    move v7, v8

    goto :goto_1e
.end method

.method public a(Ljava/lang/String;)V
    .registers 11

    const-wide/16 v3, -0x1

    const/4 v8, 0x1

    iget-object v0, p0, La/C;->a:La/A;

    iget-object v0, v0, La/A;->n:Ld/J;

    if-eqz v0, :cond_29

    iget-object v0, p0, La/C;->a:La/A;

    iget-wide v0, v0, La/A;->l:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_29

    move v0, v8

    :goto_12
    invoke-static {v0}, Lcom/google/common/base/v;->b(Z)V

    iget-object v0, p0, La/C;->a:La/A;

    iget-object v1, p0, La/C;->a:La/A;

    iget-wide v1, v1, La/A;->l:J

    iget-object v5, p0, La/C;->a:La/A;

    iget-object v5, v5, La/A;->b:Li/E;

    invoke-interface {v5}, Li/E;->a()J

    move-result-wide v5

    const/16 v7, 0x1d

    invoke-static/range {v0 .. v8}, La/A;->a(La/A;JJJIZ)V

    return-void

    :cond_29
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public a(ZZ)V
    .registers 12

    if-eqz p1, :cond_4

    if-eqz p2, :cond_20

    :cond_4
    if-eqz p2, :cond_1d

    const/16 v7, 0x63

    :goto_8
    iget-object v0, p0, La/C;->a:La/A;

    iget-object v1, p0, La/C;->a:La/A;

    iget-wide v1, v1, La/A;->l:J

    const-wide/16 v3, -0x1

    iget-object v5, p0, La/C;->a:La/A;

    iget-object v5, v5, La/A;->b:Li/E;

    invoke-interface {v5}, Li/E;->a()J

    move-result-wide v5

    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, La/A;->a(La/A;JJJIZ)V

    :goto_1c
    return-void

    :cond_1d
    const/16 v7, 0x15

    goto :goto_8

    :cond_20
    iget-object v0, p0, La/C;->a:La/A;

    iget-object v1, p0, La/C;->a:La/A;

    iget-object v1, v1, La/A;->b:Li/E;

    invoke-interface {v1}, Li/E;->a()J

    move-result-wide v1

    iput-wide v1, v0, La/A;->m:J

    goto :goto_1c
.end method

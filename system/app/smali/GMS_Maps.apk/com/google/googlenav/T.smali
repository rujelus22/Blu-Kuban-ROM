.class public Lcom/google/googlenav/T;
.super Lcom/google/googlenav/ah;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:J

.field private l:Ljava/lang/String;

.field private m:J

.field private n:I

.field private o:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lam/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/google/googlenav/ah;-><init>(Lam/b;)V

    iput-boolean v2, p0, Lcom/google/googlenav/T;->j:Z

    iput v1, p0, Lcom/google/googlenav/T;->n:I

    iput-object p2, p0, Lcom/google/googlenav/T;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/T;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/T;->d:Ljava/lang/String;

    iput v1, p0, Lcom/google/googlenav/T;->e:I

    iput v1, p0, Lcom/google/googlenav/T;->f:I

    iput v1, p0, Lcom/google/googlenav/T;->g:I

    iput v2, p0, Lcom/google/googlenav/T;->h:I

    iput v2, p0, Lcom/google/googlenav/T;->i:I

    iput-boolean v2, p0, Lcom/google/googlenav/T;->j:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/T;->k:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/T;->m:J

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/layer/o;Lcom/google/googlenav/layer/j;)V
    .registers 7

    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "msid:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x3

    :goto_15
    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->e()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/T;->j:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/T;->n:I

    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/T;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/T;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/T;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->d()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/T;->e:I

    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->e()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/T;->f:I

    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->f()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/T;->g:I

    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->b()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/T;->h:I

    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->c()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/T;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/T;->j:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/T;->k:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/T;->m:J

    return-void

    :cond_61
    const/4 v0, 0x7

    goto :goto_15
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LaJ/B;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p3, p4}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/googlenav/T;->j:Z

    iput v1, p0, Lcom/google/googlenav/T;->n:I

    iput-object p1, p0, Lcom/google/googlenav/T;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/T;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/T;->d:Ljava/lang/String;

    iput v1, p0, Lcom/google/googlenav/T;->e:I

    iput v1, p0, Lcom/google/googlenav/T;->f:I

    iput v1, p0, Lcom/google/googlenav/T;->g:I

    iput v2, p0, Lcom/google/googlenav/T;->h:I

    iput v2, p0, Lcom/google/googlenav/T;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/T;->j:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/T;->k:J

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/T;->m:J

    return-void
.end method

.method public static a(Lam/b;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/T;
    .registers 4

    new-instance v0, Lcom/google/googlenav/T;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/T;-><init>(Lam/b;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/T;->e:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/googlenav/T;->k:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/T;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/T;->j:Z

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/T;->f:I

    return-void
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/googlenav/T;->m:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/T;->l:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/T;->g:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/T;->o:Ljava/lang/String;

    return-void
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/T;->h:I

    return-void
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/T;->i:I

    return-void
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/T;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/T;->n:I

    return-void
.end method

.method public g()Lar/k;
    .registers 4

    const/16 v0, 0x35

    iget-object v1, p0, Lcom/google/googlenav/T;->b:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/googlenav/T;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-object v1, p0, Lcom/google/googlenav/T;->c:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/googlenav/T;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Lcom/google/googlenav/T;->d:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/googlenav/T;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget-object v1, p0, Lcom/google/googlenav/T;->l:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/googlenav/T;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    new-instance v1, Lar/k;

    const-string v2, "LayerPlacemark"

    invoke-direct {v1, v2, v0}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/google/googlenav/ah;->g()Lar/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lar/k;->a(Lar/k;)Lar/k;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/T;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/T;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/T;->d:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/T;->e:I

    return v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/T;->f:I

    return v0
.end method

.method public n()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/T;->g:I

    return v0
.end method

.method public o()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/T;->h:I

    return v0
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/T;->i:I

    return v0
.end method

.method public q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/T;->j:Z

    return v0
.end method

.method public r()J
    .registers 3

    iget-wide v0, p0, Lcom/google/googlenav/T;->k:J

    return-wide v0
.end method

.method public s()J
    .registers 3

    iget-wide v0, p0, Lcom/google/googlenav/T;->m:J

    return-wide v0
.end method

.method public t()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/T;->n:I

    return v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/T;->o:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/T;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/T;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/googlenav/T;->t()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "z="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/T;->t()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5a
    invoke-virtual {p0}, Lcom/google/googlenav/T;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ae

    const/4 v0, 0x0

    :goto_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/T;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ad

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/T;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_ad
    return-object v0

    :cond_ae
    const/4 v0, 0x1

    goto :goto_65
.end method

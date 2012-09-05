.class public Lcom/google/googlenav/ui/wizard/cj;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/co;

.field private final b:Lcom/google/googlenav/ui/wizard/cm;

.field private c:I

.field private d:Lax/aB;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/co;Lcom/google/googlenav/ui/wizard/cm;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cj;->a:Lcom/google/googlenav/ui/wizard/co;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->a:Lcom/google/googlenav/ui/wizard/co;

    new-instance v1, Lcom/google/googlenav/ui/wizard/cl;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/cl;-><init>(Lcom/google/googlenav/ui/wizard/cj;Lcom/google/googlenav/ui/wizard/ck;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/co;->a(Lcom/google/googlenav/ui/wizard/cs;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cj;->b:Lcom/google/googlenav/ui/wizard/cm;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cj;Lax/aB;)Lax/aB;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/cj;)Lcom/google/googlenav/ui/wizard/cn;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cj;->f()Lcom/google/googlenav/ui/wizard/cn;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/cj;)Lcom/google/googlenav/ui/wizard/cm;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->b:Lcom/google/googlenav/ui/wizard/cm;

    return-object v0
.end method

.method private f()Lcom/google/googlenav/ui/wizard/cn;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cj;->g()Lcom/google/googlenav/ui/wizard/cn;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/google/googlenav/ui/wizard/cn;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->g:Lcom/google/googlenav/ui/wizard/cn;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->g()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->e:Lcom/google/googlenav/ui/wizard/cn;

    goto :goto_a

    :cond_16
    iget v0, p0, Lcom/google/googlenav/ui/wizard/cj;->c:I

    const/16 v1, 0x155

    if-eq v0, v1, :cond_22

    iget v0, p0, Lcom/google/googlenav/ui/wizard/cj;->c:I

    const/16 v1, 0x157

    if-ne v0, v1, :cond_8d

    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->b()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->d()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->c()Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->g:Lcom/google/googlenav/ui/wizard/cn;

    goto :goto_a

    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->h()Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->c:Lcom/google/googlenav/ui/wizard/cn;

    goto :goto_a

    :cond_48
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->c()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->j()Z

    move-result v0

    if-nez v0, :cond_5b

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->d:Lcom/google/googlenav/ui/wizard/cn;

    goto :goto_a

    :cond_5b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->i()Z

    move-result v0

    if-nez v0, :cond_66

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->b:Lcom/google/googlenav/ui/wizard/cn;

    goto :goto_a

    :cond_66
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->i()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->b()Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_76
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->j()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->c()Z

    move-result v0

    if-nez v0, :cond_89

    :cond_86
    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->f:Lcom/google/googlenav/ui/wizard/cn;

    goto :goto_a

    :cond_89
    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->g:Lcom/google/googlenav/ui/wizard/cn;

    goto/16 :goto_a

    :cond_8d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->b()Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->d()Z

    move-result v0

    if-eqz v0, :cond_a1

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->g:Lcom/google/googlenav/ui/wizard/cn;

    goto/16 :goto_a

    :cond_a1
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->h()Z

    move-result v0

    if-nez v0, :cond_ad

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->a:Lcom/google/googlenav/ui/wizard/cn;

    goto/16 :goto_a

    :cond_ad
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->i()Z

    move-result v0

    if-nez v0, :cond_b9

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->b:Lcom/google/googlenav/ui/wizard/cn;

    goto/16 :goto_a

    :cond_b9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->i()Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0}, Lax/aB;->b()Z

    move-result v0

    if-nez v0, :cond_cd

    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->f:Lcom/google/googlenav/ui/wizard/cn;

    goto/16 :goto_a

    :cond_cd
    sget-object v0, Lcom/google/googlenav/ui/wizard/cn;->g:Lcom/google/googlenav/ui/wizard/cn;

    goto/16 :goto_a
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lax/aB;->c(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cj;->f()Lcom/google/googlenav/ui/wizard/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cj;->b:Lcom/google/googlenav/ui/wizard/cm;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/cm;->a(Lcom/google/googlenav/ui/wizard/cn;Lax/aB;)V

    return-void
.end method

.method public a(I)V
    .registers 4

    iput p1, p0, Lcom/google/googlenav/ui/wizard/cj;->c:I

    new-instance v0, Lax/aB;

    invoke-direct {v0}, Lax/aB;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->a:Lcom/google/googlenav/ui/wizard/co;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/co;->a(Lax/aB;)V

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lax/aB;->e(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cj;->f()Lcom/google/googlenav/ui/wizard/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cj;->b:Lcom/google/googlenav/ui/wizard/cm;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/cm;->a(Lcom/google/googlenav/ui/wizard/cn;Lax/aB;)V

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lax/aB;->d(Z)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cj;->f()Lcom/google/googlenav/ui/wizard/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cj;->b:Lcom/google/googlenav/ui/wizard/cm;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/cm;->a(Lcom/google/googlenav/ui/wizard/cn;Lax/aB;)V

    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->a:Lcom/google/googlenav/ui/wizard/co;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/co;->c(Lax/aB;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/cj;->f()Lcom/google/googlenav/ui/wizard/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cj;->b:Lcom/google/googlenav/ui/wizard/cm;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/cm;->a(Lcom/google/googlenav/ui/wizard/cn;Lax/aB;)V

    return-void
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->b:Lcom/google/googlenav/ui/wizard/cm;

    sget-object v1, Lcom/google/googlenav/ui/wizard/cn;->i:Lcom/google/googlenav/ui/wizard/cn;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/cj;->d:Lax/aB;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/cm;->a(Lcom/google/googlenav/ui/wizard/cn;Lax/aB;)V

    return-void
.end method

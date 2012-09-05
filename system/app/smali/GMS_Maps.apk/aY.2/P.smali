.class LaY/P;
.super Lcom/google/googlenav/ui/as;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lax/aP;

.field final synthetic c:LaY/K;


# direct methods
.method constructor <init>(LaY/K;ILax/aP;)V
    .registers 4

    iput-object p1, p0, LaY/P;->c:LaY/K;

    iput p2, p0, LaY/P;->a:I

    iput-object p3, p0, LaY/P;->b:Lax/aP;

    invoke-direct {p0}, Lcom/google/googlenav/ui/as;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lt/y;
    .registers 2

    iget-object v0, p0, LaY/P;->b:Lax/aP;

    invoke-virtual {v0}, Lax/aP;->e()Lt/y;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .registers 3

    iget-object v0, p0, LaY/P;->c:LaY/K;

    iget-object v0, v0, LaY/K;->f:Lcom/google/googlenav/E;

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, LaY/P;->a:I

    or-int/2addr v0, v1

    return v0
.end method

.method public k()I
    .registers 3

    iget-object v0, p0, LaY/P;->b:Lax/aP;

    iget-object v1, p0, LaY/P;->c:LaY/K;

    iget-object v1, v1, LaY/K;->c:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lax/aP;->e(Z)I

    move-result v0

    return v0
.end method

.method public m()I
    .registers 3

    iget-object v0, p0, LaY/P;->b:Lax/aP;

    iget-object v1, p0, LaY/P;->c:LaY/K;

    iget-object v1, v1, LaY/K;->c:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lax/aP;->f(Z)I

    move-result v0

    return v0
.end method

.method public x()I
    .registers 2

    iget v0, p0, LaY/P;->a:I

    return v0
.end method

.method public y()I
    .registers 2

    iget v0, p0, LaY/P;->a:I

    return v0
.end method

.method public z()LaJ/B;
    .registers 2

    iget-object v0, p0, LaY/P;->b:Lax/aP;

    invoke-virtual {v0}, Lax/aP;->d()LaJ/B;

    move-result-object v0

    return-object v0
.end method

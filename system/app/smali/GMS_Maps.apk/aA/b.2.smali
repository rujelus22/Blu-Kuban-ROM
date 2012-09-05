.class public LaA/b;
.super LaA/r;


# instance fields
.field protected final a:LaA/j;


# direct methods
.method public constructor <init>(ILaA/j;)V
    .registers 3

    invoke-direct {p0, p1}, LaA/r;-><init>(I)V

    iput-object p2, p0, LaA/b;->a:LaA/j;

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget-object v0, p0, LaA/b;->a:LaA/j;

    invoke-virtual {v0}, LaA/j;->a()F

    move-result v0

    return v0
.end method

.method public a(FF)V
    .registers 3

    return-void
.end method

.method public b()F
    .registers 2

    iget-object v0, p0, LaA/b;->a:LaA/j;

    invoke-virtual {v0}, LaA/j;->b()F

    move-result v0

    return v0
.end method

.method public c()F
    .registers 2

    iget-object v0, p0, LaA/b;->a:LaA/j;

    invoke-virtual {v0}, LaA/j;->c()F

    move-result v0

    return v0
.end method

.method public d()F
    .registers 2

    iget-object v0, p0, LaA/b;->a:LaA/j;

    invoke-virtual {v0}, LaA/j;->d()F

    move-result v0

    return v0
.end method

.method public e()F
    .registers 2

    iget-object v0, p0, LaA/b;->a:LaA/j;

    invoke-virtual {v0}, LaA/j;->i()F

    move-result v0

    return v0
.end method

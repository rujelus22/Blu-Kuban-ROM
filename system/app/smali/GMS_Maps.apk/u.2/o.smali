.class public Lu/o;
.super Lu/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .registers 3
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lu/n;-><init>(Landroid/view/animation/Interpolator;)V

    .line 18
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lu/o;->a:Ljava/lang/Object;

    .line 19
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lu/o;->b:Ljava/lang/Object;

    .line 20
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lu/o;->c:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lu/o;->d:Z

    if-nez v0, :cond_8

    .line 34
    invoke-virtual {p0, p1, p2, p1, p2}, Lu/o;->a(IIII)V

    .line 39
    :goto_7
    return-void

    .line 36
    :cond_8
    iget-object v0, p0, Lu/o;->a:Ljava/lang/Object;

    check-cast v0, Ln/Q;

    iget-object v1, p0, Lu/o;->c:Ljava/lang/Object;

    check-cast v1, Ln/Q;

    invoke-virtual {v0, v1}, Ln/Q;->b(Ln/Q;)V

    .line 37
    iget-object v0, p0, Lu/o;->b:Ljava/lang/Object;

    check-cast v0, Ln/Q;

    invoke-virtual {v0, p1, p2}, Ln/Q;->d(II)V

    goto :goto_7
.end method

.method public a(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lu/o;->a:Ljava/lang/Object;

    check-cast v0, Ln/Q;

    invoke-virtual {v0, p1, p2}, Ln/Q;->d(II)V

    .line 26
    iget-object v0, p0, Lu/o;->b:Ljava/lang/Object;

    check-cast v0, Ln/Q;

    invoke-virtual {v0, p3, p4}, Ln/Q;->d(II)V

    .line 27
    iget-object v0, p0, Lu/o;->c:Ljava/lang/Object;

    check-cast v0, Ln/Q;

    invoke-virtual {v0, p1, p2}, Ln/Q;->d(II)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/o;->d:Z

    .line 29
    return-void
.end method

.method protected a(J)V
    .registers 7
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lu/o;->c(J)F

    move-result v3

    .line 54
    iget-object v0, p0, Lu/o;->a:Ljava/lang/Object;

    check-cast v0, Ln/Q;

    iget-object v1, p0, Lu/o;->b:Ljava/lang/Object;

    check-cast v1, Ln/Q;

    iget-object v2, p0, Lu/o;->c:Ljava/lang/Object;

    check-cast v2, Ln/Q;

    invoke-static {v0, v1, v3, v2}, Ln/Q;->a(Ln/Q;Ln/Q;FLn/Q;)V

    .line 55
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 15
    check-cast p1, Ln/Q;

    invoke-virtual {p0, p1}, Lu/o;->a(Ln/Q;)V

    return-void
.end method

.method protected a(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lu/o;->a:Ljava/lang/Object;

    check-cast v0, Ln/Q;

    invoke-virtual {v0, p1}, Ln/Q;->b(Ln/Q;)V

    .line 60
    return-void
.end method

.method public b(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p1, p2}, Lu/o;->a(IIII)V

    .line 47
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 15
    check-cast p1, Ln/Q;

    invoke-virtual {p0, p1}, Lu/o;->b(Ln/Q;)V

    return-void
.end method

.method protected b(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lu/o;->b:Ljava/lang/Object;

    check-cast v0, Ln/Q;

    invoke-virtual {v0, p1}, Ln/Q;->b(Ln/Q;)V

    .line 65
    return-void
.end method

.method protected bridge synthetic c(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 15
    check-cast p1, Ln/Q;

    invoke-virtual {p0, p1}, Lu/o;->c(Ln/Q;)V

    return-void
.end method

.method protected c(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lu/o;->c:Ljava/lang/Object;

    check-cast v0, Ln/Q;

    invoke-virtual {v0, p1}, Ln/Q;->b(Ln/Q;)V

    .line 70
    return-void
.end method

.class public abstract Lu/n;
.super Lu/q;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:Ljava/lang/Object;

.field protected c:Ljava/lang/Object;

.field protected d:Z


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .registers 3
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lu/q;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/n;->d:Z

    .line 31
    invoke-virtual {p0, p1}, Lu/n;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lu/n;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract a(J)V
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 47
    :cond_4
    :goto_4
    return-void

    .line 43
    :cond_5
    invoke-virtual {p0, p1}, Lu/n;->a(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2}, Lu/n;->b(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p1}, Lu/n;->c(Ljava/lang/Object;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/n;->d:Z

    goto :goto_4
.end method

.method public b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lu/n;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b(J)V
    .registers 3
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lu/n;->a(J)V

    .line 97
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;)V
.end method

.method public c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lu/n;->c:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract c(Ljava/lang/Object;)V
.end method

.method public d(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 59
    if-nez p1, :cond_3

    .line 69
    :goto_2
    return-void

    .line 63
    :cond_3
    iget-boolean v0, p0, Lu/n;->d:Z

    if-nez v0, :cond_b

    .line 64
    invoke-virtual {p0, p1, p1}, Lu/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 66
    :cond_b
    iget-object v0, p0, Lu/n;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lu/n;->a(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0, p1}, Lu/n;->b(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lu/n;->d:Z

    return v0
.end method

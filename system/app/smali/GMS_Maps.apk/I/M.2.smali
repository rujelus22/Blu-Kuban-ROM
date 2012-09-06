.class public Li/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/S;


# instance fields
.field private final a:Li/S;


# direct methods
.method public constructor <init>(Li/S;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Li/M;->a:Li/S;

    .line 53
    return-void
.end method


# virtual methods
.method public a(Li/U;)Li/a;
    .registers 7
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    instance-of v1, p1, Li/V;

    if-eqz v1, :cond_2e

    .line 72
    check-cast p1, Li/V;

    .line 73
    iget-object v1, p0, Li/M;->a:Li/S;

    invoke-virtual {p1}, Li/V;->e()Li/U;

    move-result-object v2

    invoke-interface {v1, v2}, Li/S;->a(Li/U;)Li/a;

    move-result-object v1

    .line 74
    iget-object v2, p0, Li/M;->a:Li/S;

    invoke-virtual {p1}, Li/V;->f()Li/U;

    move-result-object v3

    invoke-interface {v2, v3}, Li/S;->a(Li/U;)Li/a;

    move-result-object v2

    .line 75
    if-eqz v1, :cond_2d

    if-eqz v2, :cond_2d

    .line 76
    new-instance v0, Li/J;

    const/4 v3, 0x2

    new-array v3, v3, [Li/a;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Li/J;-><init>([Li/a;)V

    .line 81
    :cond_2d
    :goto_2d
    return-object v0

    .line 79
    :cond_2e
    iget-object v0, p0, Li/M;->a:Li/S;

    invoke-interface {v0, p1}, Li/S;->a(Li/U;)Li/a;

    move-result-object v0

    goto :goto_2d
.end method

.method public a()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Li/M;->a:Li/S;

    invoke-interface {v0}, Li/S;->a()V

    .line 87
    return-void
.end method

.method public a(Li/U;Li/T;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 57
    instance-of v0, p1, Li/V;

    if-eqz v0, :cond_1e

    .line 58
    check-cast p1, Li/V;

    .line 59
    new-instance v0, Li/N;

    invoke-direct {v0, p1, p2}, Li/N;-><init>(Li/V;Li/T;)V

    .line 61
    iget-object v1, p0, Li/M;->a:Li/S;

    invoke-virtual {p1}, Li/V;->e()Li/U;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Li/S;->a(Li/U;Li/T;)V

    .line 62
    iget-object v1, p0, Li/M;->a:Li/S;

    invoke-virtual {p1}, Li/V;->f()Li/U;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Li/S;->a(Li/U;Li/T;)V

    .line 66
    :goto_1d
    return-void

    .line 64
    :cond_1e
    iget-object v0, p0, Li/M;->a:Li/S;

    invoke-interface {v0, p1, p2}, Li/S;->a(Li/U;Li/T;)V

    goto :goto_1d
.end method

.method public b()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Li/M;->a:Li/S;

    invoke-interface {v0}, Li/S;->b()V

    .line 92
    return-void
.end method

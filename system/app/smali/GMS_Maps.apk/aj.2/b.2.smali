.class public Laj/b;
.super Laj/r;
.source "SourceFile"


# instance fields
.field protected final a:Laj/j;


# direct methods
.method public constructor <init>(ILaj/j;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Laj/r;-><init>(I)V

    .line 20
    iput-object p2, p0, Laj/b;->a:Laj/j;

    .line 21
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Laj/b;->a:Laj/j;

    invoke-virtual {v0}, Laj/j;->a()F

    move-result v0

    return v0
.end method

.method public a(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Laj/b;->a:Laj/j;

    invoke-virtual {v0}, Laj/j;->b()F

    move-result v0

    return v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Laj/b;->a:Laj/j;

    invoke-virtual {v0}, Laj/j;->c()F

    move-result v0

    return v0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Laj/b;->a:Laj/j;

    invoke-virtual {v0}, Laj/j;->d()F

    move-result v0

    return v0
.end method

.method public e()F
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Laj/b;->a:Laj/j;

    invoke-virtual {v0}, Laj/j;->i()F

    move-result v0

    return v0
.end method

.class public Laj/c;
.super Laj/t;
.source "SourceFile"


# instance fields
.field private final a:Laj/v;


# direct methods
.method public constructor <init>(ILaj/v;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p3}, Laj/t;-><init>(IZ)V

    .line 28
    iput-object p2, p0, Laj/c;->a:Laj/v;

    .line 29
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Laj/c;->a:Laj/v;

    invoke-virtual {v0}, Laj/v;->a()F

    move-result v0

    return v0
.end method

.method public b()F
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Laj/c;->a:Laj/v;

    invoke-virtual {v0}, Laj/v;->b()F

    move-result v0

    return v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Laj/c;->a:Laj/v;

    invoke-virtual {v0}, Laj/v;->c()F

    move-result v0

    return v0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Laj/c;->a:Laj/v;

    invoke-virtual {v0}, Laj/v;->d()F

    move-result v0

    return v0
.end method

.method public e()F
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Laj/c;->a:Laj/v;

    invoke-virtual {v0}, Laj/v;->g()F

    move-result v0

    return v0
.end method

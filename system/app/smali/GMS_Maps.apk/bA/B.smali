.class public Lba/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbb/f;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/high16 v0, 0x42a0

    iput v0, p0, Lba/b;->b:F

    .line 17
    const/high16 v0, 0x4020

    iget v1, p0, Lba/b;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lba/b;->c:F

    .line 20
    new-instance v0, Lbb/f;

    invoke-direct {v0, p1, p2}, Lbb/f;-><init>(FF)V

    iput-object v0, p0, Lba/b;->a:Lbb/f;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lbb/f;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lba/b;->a:Lbb/f;

    return-object v0
.end method

.method public a(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lba/b;->a:Lbb/f;

    invoke-virtual {v0, p1, p2}, Lbb/f;->a(FF)V

    .line 37
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lba/b;->a:Lbb/f;

    iget v0, v0, Lbb/f;->a:F

    return v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lba/b;->a:Lbb/f;

    iget v0, v0, Lbb/f;->b:F

    return v0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lba/b;->c:F

    return v0
.end method

.method public e()F
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lba/b;->b:F

    return v0
.end method

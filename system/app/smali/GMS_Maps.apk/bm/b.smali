.class public Lbm/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lbn/f;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(FF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42a0

    iput v0, p0, Lbm/b;->b:F

    const/high16 v0, 0x4020

    iget v1, p0, Lbm/b;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lbm/b;->c:F

    new-instance v0, Lbn/f;

    invoke-direct {v0, p1, p2}, Lbn/f;-><init>(FF)V

    iput-object v0, p0, Lbm/b;->a:Lbn/f;

    return-void
.end method


# virtual methods
.method public a()Lbn/f;
    .registers 2

    iget-object v0, p0, Lbm/b;->a:Lbn/f;

    return-object v0
.end method

.method public a(FF)V
    .registers 4

    iget-object v0, p0, Lbm/b;->a:Lbn/f;

    invoke-virtual {v0, p1, p2}, Lbn/f;->a(FF)V

    return-void
.end method

.method public b()F
    .registers 2

    iget-object v0, p0, Lbm/b;->a:Lbn/f;

    iget v0, v0, Lbn/f;->a:F

    return v0
.end method

.method public c()F
    .registers 2

    iget-object v0, p0, Lbm/b;->a:Lbn/f;

    iget v0, v0, Lbn/f;->b:F

    return v0
.end method

.method public d()F
    .registers 2

    iget v0, p0, Lbm/b;->c:F

    return v0
.end method

.method public e()F
    .registers 2

    iget v0, p0, Lbm/b;->b:F

    return v0
.end method

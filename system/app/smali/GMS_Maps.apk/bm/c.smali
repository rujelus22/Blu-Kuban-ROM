.class public Lbm/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Lbm/d;

.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lbm/d;FF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbm/c;->c:Lbm/d;

    iput p2, p0, Lbm/c;->a:F

    iput p3, p0, Lbm/c;->b:F

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lbm/c;->f:F

    return v0
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Lbm/c;->f:F

    return-void
.end method

.method a(FF)V
    .registers 3

    iput p1, p0, Lbm/c;->d:F

    iput p2, p0, Lbm/c;->e:F

    invoke-virtual {p0}, Lbm/c;->b()V

    return-void
.end method

.method public b()V
    .registers 5

    iget v0, p0, Lbm/c;->d:F

    iget v1, p0, Lbm/c;->e:F

    iget-object v2, p0, Lbm/c;->c:Lbm/d;

    invoke-virtual {v2}, Lbm/d;->c()Lbn/f;

    move-result-object v2

    iget v2, v2, Lbn/f;->a:F

    iget-object v3, p0, Lbm/c;->c:Lbm/d;

    invoke-virtual {v3}, Lbm/d;->c()Lbn/f;

    move-result-object v3

    iget v3, v3, Lbn/f;->b:F

    invoke-static {v0, v1, v2, v3}, Lbn/c;->a(FFFF)F

    move-result v0

    const v1, 0x40490fdb

    add-float/2addr v0, v1

    iput v0, p0, Lbm/c;->g:F

    return-void
.end method

.method public c()F
    .registers 2

    iget v0, p0, Lbm/c;->g:F

    return v0
.end method

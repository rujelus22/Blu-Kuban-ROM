.class public abstract Lcom/google/android/maps/driveabout/app/m;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/google/android/maps/driveabout/vector/t;

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/maps/driveabout/vector/u;F)Lcom/google/android/maps/driveabout/vector/u;
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;FIIF)Lcom/google/android/maps/driveabout/vector/u;
    .registers 12

    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_8

    :cond_7
    :goto_7
    return-object p1

    :cond_8
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/google/android/maps/driveabout/app/m;->a(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/vector/t;

    const/high16 v2, 0x4000

    mul-float/2addr v2, p2

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/t;->c(FF)F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    move-object p1, v0

    goto :goto_7
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/u;
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;Lcom/google/android/maps/driveabout/vector/bS;Lu/I;FIIF)Lcom/google/android/maps/driveabout/vector/u;
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;Lt/ab;IIF)Lcom/google/android/maps/driveabout/vector/u;
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/u;Lu/I;Z)Lcom/google/android/maps/driveabout/vector/u;
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/m;->b:I

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/u;IIF)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/vector/t;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/maps/driveabout/vector/t;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/vector/t;

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v0

    if-ne p2, v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v0

    if-ne p3, v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_2b

    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/t;->a(IIF)V

    :cond_2b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/m;->a:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_b
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/app/m;->c:I

    return-void
.end method

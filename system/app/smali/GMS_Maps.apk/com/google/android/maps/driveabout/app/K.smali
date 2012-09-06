.class public abstract Lcom/google/android/maps/driveabout/app/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/google/android/maps/driveabout/vector/k;

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/maps/driveabout/vector/l;F)Lcom/google/android/maps/driveabout/vector/l;
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;FIIF)Lcom/google/android/maps/driveabout/vector/l;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_8

    .line 129
    :cond_7
    :goto_7
    return-object p1

    .line 121
    :cond_8
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/google/android/maps/driveabout/app/k;->a(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    .line 122
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/k;->a:Lcom/google/android/maps/driveabout/vector/k;

    const/high16 v2, 0x4000

    mul-float/2addr v2, p2

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/k;->c(FF)F

    move-result v2

    .line 124
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 125
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    move-object p1, v0

    goto :goto_7
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/l;
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;Ln/P;Lo/I;FIIF)Lcom/google/android/maps/driveabout/vector/l;
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;Ln/ai;IIF)Lcom/google/android/maps/driveabout/vector/l;
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/vector/l;Lo/I;Z)Lcom/google/android/maps/driveabout/vector/l;
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput p1, p0, Lcom/google/android/maps/driveabout/app/k;->b:I

    .line 156
    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/l;IIF)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/k;->a:Lcom/google/android/maps/driveabout/vector/k;

    if-nez v0, :cond_c

    .line 138
    new-instance v0, Lcom/google/android/maps/driveabout/vector/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/k;->a:Lcom/google/android/maps/driveabout/vector/k;

    .line 147
    :goto_b
    return-void

    .line 140
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/k;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v0

    if-ne p2, v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/k;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v0

    if-ne p3, v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/k;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_2b

    .line 143
    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/k;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/k;->a(IIF)V

    .line 145
    :cond_2b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/k;->a:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    goto :goto_b
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput p1, p0, Lcom/google/android/maps/driveabout/app/k;->c:I

    .line 165
    return-void
.end method

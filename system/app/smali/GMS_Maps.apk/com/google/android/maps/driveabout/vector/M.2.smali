.class Lcom/google/android/maps/driveabout/vector/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1866
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    .line 1872
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/M;)V
    .registers 4
    .parameter

    .prologue
    .line 1874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1866
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    .line 1875
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/M;->b([FI)V

    .line 1876
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/M;)[F
    .registers 2
    .parameter

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/M;
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 1900
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 1902
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 1903
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 1904
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 1905
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 1906
    return-object p0
.end method

.method public a(FFF)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1883
    return-void
.end method

.method public a(FFFF)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1914
    return-void
.end method

.method public a([FI)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1889
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    move-object v2, p1

    move v3, p2

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1890
    return-void
.end method

.method public b(FFF)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1921
    return-void
.end method

.method public b([FI)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/M;->a:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1928
    return-void
.end method

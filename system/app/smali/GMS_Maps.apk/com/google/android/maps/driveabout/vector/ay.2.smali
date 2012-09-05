.class Lcom/google/android/maps/driveabout/vector/ay;
.super Ljava/lang/Object;


# instance fields
.field a:Lt/L;

.field b:F

.field c:F

.field d:F


# direct methods
.method private constructor <init>(Lt/L;Lt/L;F)V
    .registers 6

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v1}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->a:Lt/L;

    invoke-virtual {p1, p2}, Lt/L;->c(Lt/L;)F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->b:F

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/ay;->c:F

    invoke-static {p1, p2}, Lt/N;->b(Lt/L;Lt/L;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ay;->d:F

    return-void
.end method

.method synthetic constructor <init>(Lt/L;Lt/L;FLcom/google/android/maps/driveabout/vector/ax;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/ay;-><init>(Lt/L;Lt/L;F)V

    return-void
.end method

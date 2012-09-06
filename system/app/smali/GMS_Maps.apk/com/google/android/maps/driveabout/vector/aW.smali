.class Lcom/google/android/maps/driveabout/vector/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ln/Q;

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F


# direct methods
.method private constructor <init>(Ln/Q;Ln/Q;F)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f00

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-virtual {p1, p2, v1}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->a:Ln/Q;

    .line 248
    invoke-virtual {p1, p2}, Ln/Q;->c(Ln/Q;)F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->b:F

    .line 249
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/aw;->c:F

    .line 250
    invoke-static {p1, p2}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aw;->d:F

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Ln/Q;Ln/Q;FLcom/google/android/maps/driveabout/vector/av;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aw;-><init>(Ln/Q;Ln/Q;F)V

    return-void
.end method

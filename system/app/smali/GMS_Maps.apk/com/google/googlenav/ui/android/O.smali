.class Lcom/google/googlenav/ui/android/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field final synthetic c:Lcom/google/googlenav/ui/android/AndroidView;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/AndroidView;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/googlenav/ui/android/o;->c:Lcom/google/googlenav/ui/android/AndroidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter

    .prologue
    const/high16 v3, 0x3f00

    .line 367
    iget-object v0, p0, Lcom/google/googlenav/ui/android/o;->c:Lcom/google/googlenav/ui/android/AndroidView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/AndroidView;->a(Lcom/google/googlenav/ui/android/AndroidView;)F

    move-result v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    .line 370
    iget-object v1, p0, Lcom/google/googlenav/ui/android/o;->c:Lcom/google/googlenav/ui/android/AndroidView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/AndroidView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 371
    iget-object v2, p0, Lcom/google/googlenav/ui/android/o;->c:Lcom/google/googlenav/ui/android/AndroidView;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/AndroidView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v3, v1

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v4, v2

    .line 376
    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    mul-float/2addr v5, v3

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v6

    mul-float/2addr v6, v4

    sub-float/2addr v5, v6

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/o;->a:I

    .line 378
    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/o;->b:I

    .line 380
    return-void
.end method

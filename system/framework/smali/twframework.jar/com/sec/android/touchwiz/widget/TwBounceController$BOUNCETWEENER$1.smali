.class final Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$1;
.super Ljava/lang/Object;
.source "TwBounceController.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwBounceController$Tweener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 416
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .registers 6
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const/high16 v1, -0x3ee0

    .line 418
    if-eqz p1, :cond_d

    .line 429
    mul-float v0, v1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 436
    :goto_c
    return v0

    :cond_d
    const/high16 v0, 0x41d0

    mul-float/2addr v0, p2

    mul-float/2addr v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_c
.end method

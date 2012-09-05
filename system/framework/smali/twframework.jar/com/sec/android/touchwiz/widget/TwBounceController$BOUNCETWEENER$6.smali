.class final Lcom/sec/android/touchwiz/widget/TwBounceController$BOUNCETWEENER$6;
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
    .line 542
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .registers 10
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const v2, 0x3e6353f8

    const/high16 v6, 0x3f80

    const v5, 0x3ecccccd

    const v4, 0x40490fdb

    const/high16 v3, 0x3f00

    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, ret:F
    if-eqz p1, :cond_55

    .line 547
    const v1, 0x3e926e98

    cmpg-float v1, p2, v1

    if-gez v1, :cond_29

    .line 548
    const/high16 v1, 0x4060

    mul-float/2addr v1, p2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    sub-float v0, v6, v1

    .line 572
    :goto_22
    cmpl-float v1, v0, v6

    if-lez v1, :cond_a5

    .line 573
    const/high16 v0, 0x3f80

    .line 577
    :cond_28
    :goto_28
    return v0

    .line 549
    :cond_29
    const v1, 0x3f249ba6

    cmpg-float v1, p2, v1

    if-gez v1, :cond_42

    .line 550
    const v1, 0x3e926e98

    sub-float v1, p2, v1

    const v2, 0x40333333

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float v0, v5, v1

    goto :goto_22

    .line 553
    :cond_42
    const v1, 0x3f249ba6

    sub-float v1, p2, v1

    const v2, 0x40333333

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float/2addr v1, v5

    sub-float v0, v5, v1

    goto :goto_22

    .line 557
    :cond_55
    cmpg-float v1, p2, v2

    if-gez v1, :cond_63

    .line 558
    const/high16 v1, 0x4090

    mul-float/2addr v1, p2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    goto :goto_22

    .line 559
    :cond_63
    const v1, 0x3ee353f8

    cmpg-float v1, p2, v1

    if-gez v1, :cond_78

    .line 560
    sub-float v1, p2, v2

    const/high16 v2, 0x4090

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    sub-float v0, v6, v1

    goto :goto_22

    .line 562
    :cond_78
    const v1, 0x3f38d4fe

    cmpg-float v1, p2, v1

    if-gez v1, :cond_91

    .line 563
    const v1, 0x3ee353f8

    sub-float v1, p2, v1

    const v2, 0x40666666

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float v0, v5, v1

    goto :goto_22

    .line 566
    :cond_91
    const v1, 0x3f38d4fe

    sub-float v1, p2, v1

    const v2, 0x40666666

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    mul-float/2addr v1, v5

    sub-float v0, v5, v1

    goto/16 :goto_22

    .line 574
    :cond_a5
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_28

    .line 575
    const/4 v0, 0x0

    goto/16 :goto_28
.end method

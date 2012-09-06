.class public final Lcom/dropbox/android/widget/ap;
.super Landroid/view/animation/Animation;
.source "panda.py"


# instance fields
.field private final a:Lcom/dropbox/android/widget/RotatableFrameLayout;

.field private final b:F


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dropbox/android/widget/ap;->a:Lcom/dropbox/android/widget/RotatableFrameLayout;

    iget v1, p0, Lcom/dropbox/android/widget/ap;->b:F

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->setRotationBackport(F)V

    .line 19
    return-void
.end method

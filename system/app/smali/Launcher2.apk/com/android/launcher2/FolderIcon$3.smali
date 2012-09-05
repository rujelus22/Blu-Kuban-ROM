.class Lcom/android/launcher2/FolderIcon$3;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderIcon;

.field final synthetic val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

.field final synthetic val$transX0:F

.field final synthetic val$transY0:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIcon;FLcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;F)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon$3;->this$0:Lcom/android/launcher2/FolderIcon;

    iput p2, p0, Lcom/android/launcher2/FolderIcon$3;->val$transX0:F

    iput-object p3, p0, Lcom/android/launcher2/FolderIcon$3;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iput p4, p0, Lcom/android/launcher2/FolderIcon$3;->val$transY0:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8
    .parameter "animation"

    .prologue
    const/high16 v5, 0x3f80

    .line 538
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 540
    .local v0, progress:F
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$3;->this$0:Lcom/android/launcher2/FolderIcon;

    #getter for: Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;
    invoke-static {v1}, Lcom/android/launcher2/FolderIcon;->access$300(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/FolderIcon$3;->val$transX0:F

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon$3;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon$3;->val$transX0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 541
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$3;->this$0:Lcom/android/launcher2/FolderIcon;

    #getter for: Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;
    invoke-static {v1}, Lcom/android/launcher2/FolderIcon;->access$300(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/FolderIcon$3;->val$transY0:F

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon$3;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon$3;->val$transY0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 542
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$3;->this$0:Lcom/android/launcher2/FolderIcon;

    #getter for: Lcom/android/launcher2/FolderIcon;->mAnimParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;
    invoke-static {v1}, Lcom/android/launcher2/FolderIcon;->access$300(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/FolderIcon$3;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    sub-float/2addr v2, v5

    mul-float/2addr v2, v0

    add-float/2addr v2, v5

    iput v2, v1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 543
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$3;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    .line 544
    return-void
.end method

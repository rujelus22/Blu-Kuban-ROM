.class Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;
.super Landroid/view/animation/Animation;
.source "ActionBarItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/ActionBarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeBackgroundAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/widgets/ActionBarItem;


# direct methods
.method public constructor <init>(Lcom/google/android/music/widgets/ActionBarItem;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;->this$0:Lcom/google/android/music/widgets/ActionBarItem;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;->setFillAfter(Z)V

    .line 72
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;->this$0:Lcom/google/android/music/widgets/ActionBarItem;

    #getter for: Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlpha:I
    invoke-static {v1}, Lcom/google/android/music/widgets/ActionBarItem;->access$000(Lcom/google/android/music/widgets/ActionBarItem;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 77
    .local v0, alpha:I
    iget-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;->this$0:Lcom/google/android/music/widgets/ActionBarItem;

    iget-object v1, p0, Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;->this$0:Lcom/google/android/music/widgets/ActionBarItem;

    #getter for: Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlpha:I
    invoke-static {v1}, Lcom/google/android/music/widgets/ActionBarItem;->access$000(Lcom/google/android/music/widgets/ActionBarItem;)I

    move-result v1

    if-lt v0, v1, :cond_24

    const/4 v1, 0x1

    :goto_17
    #setter for: Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlphaSet:Z
    invoke-static {v2, v1}, Lcom/google/android/music/widgets/ActionBarItem;->access$102(Lcom/google/android/music/widgets/ActionBarItem;Z)Z

    .line 78
    iget-object v1, p0, Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;->this$0:Lcom/google/android/music/widgets/ActionBarItem;

    #getter for: Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lcom/google/android/music/widgets/ActionBarItem;->access$200(Lcom/google/android/music/widgets/ActionBarItem;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 79
    return-void

    .line 77
    :cond_24
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public willChangeBounds()Z
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

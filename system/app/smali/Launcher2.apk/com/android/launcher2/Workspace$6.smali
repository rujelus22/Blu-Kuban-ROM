.class Lcom/android/launcher2/Workspace$6;
.super Lcom/android/launcher2/LauncherAnimatorUpdateListener;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Lcom/android/launcher2/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1719
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #setter for: Lcom/android/launcher2/Workspace;->mTransitionProgress:F
    invoke-static {v2, p2}, Lcom/android/launcher2/Workspace;->access$702(Lcom/android/launcher2/Workspace;F)F

    .line 1720
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_b

    .line 1740
    :goto_a
    return-void

    .line 1724
    :cond_b
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 1725
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_c5

    .line 1726
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1727
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1728
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastTranslationX(F)V

    .line 1729
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1000(Lcom/android/launcher2/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastTranslationY(F)V

    .line 1730
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mOldScaleXs:[F
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1200(Lcom/android/launcher2/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mNewScaleXs:[F
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastScaleX(F)V

    .line 1731
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mOldScaleYs:[F
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1400(Lcom/android/launcher2/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mNewScaleYs:[F
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1500(Lcom/android/launcher2/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastScaleY(F)V

    .line 1732
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1700(Lcom/android/launcher2/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastBackgroundAlpha(F)V

    .line 1734
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mOldBackgroundAlphaMultipliers:[F
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mNewBackgroundAlphaMultipliers:[F
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1900(Lcom/android/launcher2/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1736
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mOldAlphas:[F
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$2000(Lcom/android/launcher2/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mNewAlphas:[F
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$2100(Lcom/android/launcher2/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setFastAlpha(F)V

    .line 1737
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1725
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    .line 1739
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_c5
    iget-object v2, p0, Lcom/android/launcher2/Workspace$6;->this$0:Lcom/android/launcher2/Workspace;

    #calls: Lcom/android/launcher2/Workspace;->syncChildrenLayersEnabledOnVisiblePages()V
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$2200(Lcom/android/launcher2/Workspace;)V

    goto/16 :goto_a
.end method

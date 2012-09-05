.class Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTurn"
.end annotation


# instance fields
.field private mNewFraction:F

.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;F)V
    .registers 3
    .parameter
    .parameter "fraction"

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1696
    iput p2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    .line 1697
    return-void
.end method


# virtual methods
.method public canRun()Z
    .registers 2

    .prologue
    .line 1701
    const/4 v0, 0x1

    return v0
.end method

.method public run()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/widget/PageTurnView$PageTurnTask;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    .line 1706
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$500(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v2

    if-nez v2, :cond_18

    .line 1707
    const-string v0, "PageTurnView"

    const-string v1, "missing mRenderScript, ignoring UpdateTurn"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1742
    :goto_17
    return-object v0

    .line 1710
    :cond_18
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 1711
    const-string v0, "PageTurnView"

    const-string v1, "missing mAnchorPosition, ignoring UpdateTurn"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_17

    .line 1714
    :cond_2c
    iget-object v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v2

    if-nez v2, :cond_49

    .line 1716
    const-string v0, "PageTurnView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1717
    const-string v0, "PageTurnView"

    const-string v1, "UpdateTurn.run() early exit: Not turning"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_17

    .line 1723
    :cond_49
    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_7e

    move v0, v1

    :cond_50
    :goto_50
    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    .line 1724
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F
    invoke-static {v0, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->access$702(Lcom/google/android/apps/books/widget/PageTurnView;F)F

    .line 1726
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_87

    .line 1728
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$500(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/widget/PageTurnRS;->setTurnState(IFIZ)V

    .line 1742
    :cond_79
    :goto_79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_17

    .line 1723
    :cond_7e
    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    cmpg-float v2, v2, v0

    if-ltz v2, :cond_50

    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    goto :goto_50

    .line 1731
    :cond_87
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_79

    .line 1734
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->shouldDisplayTwoPages()Z
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2600(Lcom/google/android/apps/books/widget/PageTurnView;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 1735
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    const v2, 0x3ecccccd

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    .line 1738
    :cond_a4
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$500(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->mNewFraction:F

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$UpdateTurn;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/widget/PageTurnRS;->setTurnState(IFIZ)V

    goto :goto_79
.end method

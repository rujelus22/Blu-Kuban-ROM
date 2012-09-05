.class Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;
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
    name = "EndTurnInertial"
.end annotation


# instance fields
.field private final mCanceled:Z

.field private final mSequenceNumber:I

.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;ZI)V
    .registers 4
    .parameter
    .parameter "canceled"
    .parameter "sequenceNumber"

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1751
    iput-boolean p2, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->mCanceled:Z

    .line 1752
    iput p3, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->mSequenceNumber:I

    .line 1753
    return-void
.end method


# virtual methods
.method public canRun()Z
    .registers 3

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mStartedTurnSequenceNumber:I
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->mSequenceNumber:I

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public run()Ljava/util/List;
    .registers 5
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
    const/4 v2, 0x3

    .line 1762
    const-string v0, "PageTurnView"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1763
    const-string v0, "PageTurnView"

    const-string v1, "EndTurnInertial.run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$500(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v0

    if-nez v0, :cond_30

    .line 1767
    const-string v0, "PageTurnView"

    const-string v1, "missing mRenderScript, exiting EndTurnInertial early"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$702(Lcom/google/android/apps/books/widget/PageTurnView;F)F

    .line 1769
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$602(Lcom/google/android/apps/books/widget/PageTurnView;I)I

    .line 1770
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1790
    :goto_2f
    return-object v0

    .line 1772
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v0

    if-nez v0, :cond_4c

    .line 1774
    const-string v0, "PageTurnView"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1775
    const-string v0, "PageTurnView"

    const-string v1, "EndTurnInertial.run() early exit: Not turning"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2f

    .line 1780
    :cond_4c
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->mSequenceNumber:I

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mEndedTurnSequenceNumber:I
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4402(Lcom/google/android/apps/books/widget/PageTurnView;I)I

    .line 1782
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$700(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_74

    iget-boolean v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->mCanceled:Z

    if-nez v0, :cond_74

    .line 1784
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v1

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->finishTurnAnimation(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4500(Lcom/google/android/apps/books/widget/PageTurnView;I)V

    .line 1790
    :goto_6f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2f

    .line 1787
    :cond_74
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$EndTurnInertial;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v1

    neg-int v1, v1

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->finishTurnAnimation(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$4500(Lcom/google/android/apps/books/widget/PageTurnView;I)V

    goto :goto_6f
.end method

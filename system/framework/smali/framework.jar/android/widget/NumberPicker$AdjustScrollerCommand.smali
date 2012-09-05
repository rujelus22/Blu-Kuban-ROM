.class Landroid/widget/NumberPicker$AdjustScrollerCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustScrollerCommand"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 1983
    iput-object p1, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1985
    iget-object v0, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    #setter for: Landroid/widget/NumberPicker;->mPreviousScrollerY:I
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$1302(Landroid/widget/NumberPicker;I)I

    .line 1986
    iget-object v0, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1400(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v2, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$1500(Landroid/widget/NumberPicker;)I

    move-result v2

    if-ne v0, v2, :cond_25

    .line 1987
    iget-object v0, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->updateInputTextView()V
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;)V

    .line 1988
    iget-object v0, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mShowInputControlsAnimimationDuration:J
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1700(Landroid/widget/NumberPicker;)J

    move-result-wide v1

    #calls: Landroid/widget/NumberPicker;->showInputControls(J)V
    invoke-static {v0, v1, v2}, Landroid/widget/NumberPicker;->access$1800(Landroid/widget/NumberPicker;J)V

    .line 1998
    :goto_24
    return-void

    .line 1992
    :cond_25
    iget-object v0, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1400(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v2, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$1500(Landroid/widget/NumberPicker;)I

    move-result v2

    sub-int v4, v0, v2

    .line 1993
    .local v4, deltaY:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mSelectorElementHeight:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$1900(Landroid/widget/NumberPicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_4b

    .line 1994
    if-lez v4, :cond_5e

    iget-object v0, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1900(Landroid/widget/NumberPicker;)I

    move-result v0

    neg-int v0, v0

    :goto_4a
    add-int/2addr v4, v0

    .line 1996
    :cond_4b
    iget-object v0, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$2000(Landroid/widget/NumberPicker;)Landroid/widget/Scroller;

    move-result-object v0

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1997
    iget-object v0, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_24

    .line 1994
    :cond_5e
    iget-object v0, p0, Landroid/widget/NumberPicker$AdjustScrollerCommand;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1900(Landroid/widget/NumberPicker;)I

    move-result v0

    goto :goto_4a
.end method

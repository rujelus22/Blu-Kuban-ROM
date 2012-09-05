.class Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .registers 3
    .parameter

    .prologue
    .line 4673
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4674
    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$3700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 4675
    return-void
.end method


# virtual methods
.method public run()V
    .registers 32

    .prologue
    .line 4813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_23

    .line 4985
    :cond_22
    :goto_22
    return-void

    .line 4817
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v16

    .line 4818
    .local v16, listHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4820
    .local v6, firstPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_3b0

    goto :goto_22

    .line 4822
    :pswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v27

    add-int/lit8 v13, v27, -0x1

    .line 4823
    .local v13, lastViewIndex:I
    add-int v9, v6, v13

    .line 4825
    .local v9, lastPos:I
    if-ltz v13, :cond_22

    .line 4829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v9, v0, :cond_69

    .line 4831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_22

    .line 4835
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4836
    .local v10, lastView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 4837
    .local v12, lastViewHeight:I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    .line 4838
    .local v15, lastViewTop:I
    sub-int v14, v16, v15

    .line 4839
    .local v14, lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ge v9, v0, :cond_c5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 4842
    .local v5, extraScroll:I
    :goto_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v12, v14

    add-int v28, v28, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 4845
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4846
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_22

    .line 4847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4839
    .end local v5           #extraScroll:I
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_95

    .line 4853
    .end local v9           #lastPos:I
    .end local v10           #lastView:Landroid/view/View;
    .end local v12           #lastViewHeight:I
    .end local v13           #lastViewIndex:I
    .end local v14           #lastViewPixelsShowing:I
    .end local v15           #lastViewTop:I
    :pswitch_d6
    const/16 v21, 0x1

    .line 4854
    .local v21, nextViewIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 4856
    .local v3, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v6, v0, :cond_22

    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v3, v0, :cond_22

    add-int v27, v6, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_22

    .line 4860
    add-int/lit8 v18, v6, 0x1

    .line 4862
    .local v18, nextPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_123

    .line 4864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4868
    :cond_123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 4869
    .local v19, nextView:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 4870
    .local v20, nextViewHeight:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v22

    .line 4871
    .local v22, nextViewTop:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 4872
    .restart local v5       #extraScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_175

    .line 4873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    add-int v29, v20, v22

    sub-int v29, v29, v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 4876
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4880
    :cond_175
    move/from16 v0, v22

    if-le v0, v5, :cond_22

    .line 4881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v22, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_22

    .line 4888
    .end local v3           #childCount:I
    .end local v5           #extraScroll:I
    .end local v18           #nextPos:I
    .end local v19           #nextView:Landroid/view/View;
    .end local v20           #nextViewHeight:I
    .end local v21           #nextViewIndex:I
    .end local v22           #nextViewTop:I
    :pswitch_18c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v6, v0, :cond_1a5

    .line 4890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4894
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4895
    .local v7, firstView:Landroid/view/View;
    if-eqz v7, :cond_22

    .line 4898
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4899
    .local v8, firstViewTop:I
    if-lez v6, :cond_1eb

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    .line 4901
    .restart local v5       #extraScroll:I
    :goto_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v8, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 4903
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4905
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v6, v0, :cond_22

    .line 4906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4899
    .end local v5           #extraScroll:I
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1bd

    .line 4912
    .end local v7           #firstView:Landroid/view/View;
    .end local v8           #firstViewTop:I
    :pswitch_1fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v27

    add-int/lit8 v13, v27, -0x2

    .line 4913
    .restart local v13       #lastViewIndex:I
    if-ltz v13, :cond_22

    .line 4916
    add-int v9, v6, v13

    .line 4918
    .restart local v9       #lastPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v9, v0, :cond_225

    .line 4920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4924
    :cond_225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4925
    .restart local v10       #lastView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 4926
    .restart local v12       #lastViewHeight:I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    .line 4927
    .restart local v15       #lastViewTop:I
    sub-int v14, v16, v15

    .line 4928
    .restart local v14       #lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4929
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v9, v0, :cond_274

    .line 4930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v28, v0

    sub-int v28, v14, v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 4931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4933
    :cond_274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v27, v0

    sub-int v2, v16, v27

    .line 4934
    .local v2, bottom:I
    add-int v11, v15, v12

    .line 4935
    .local v11, lastViewBottom:I
    if-le v2, v11, :cond_22

    .line 4936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v2, v11

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_22

    .line 4943
    .end local v2           #bottom:I
    .end local v9           #lastPos:I
    .end local v10           #lastView:Landroid/view/View;
    .end local v11           #lastViewBottom:I
    .end local v12           #lastViewHeight:I
    .end local v13           #lastViewIndex:I
    .end local v14           #lastViewPixelsShowing:I
    .end local v15           #lastViewTop:I
    :pswitch_298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v0, v6, :cond_2b1

    .line 4945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4949
    :cond_2b1
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 4952
    .restart local v3       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    move/from16 v23, v0

    .line 4953
    .local v23, position:I
    add-int v27, v6, v3

    add-int/lit8 v9, v27, -0x1

    .line 4955
    .restart local v9       #lastPos:I
    const/16 v26, 0x0

    .line 4956
    .local v26, viewTravelCount:I
    move/from16 v0, v23

    if-ge v0, v6, :cond_324

    .line 4957
    sub-int v27, v6, v23

    add-int/lit8 v26, v27, 0x1

    .line 4963
    :cond_2d3
    :goto_2d3
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v3

    move/from16 v28, v0

    div-float v24, v27, v28

    .line 4965
    .local v24, screenTravelCount:F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/high16 v28, 0x3f80

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 4966
    .local v17, modifier:F
    move/from16 v0, v23

    if-ge v0, v6, :cond_32b

    .line 4967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 4968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4958
    .end local v17           #modifier:F
    .end local v24           #screenTravelCount:F
    :cond_324
    move/from16 v0, v23

    if-le v0, v9, :cond_2d3

    .line 4959
    sub-int v26, v23, v9

    goto :goto_2d3

    .line 4969
    .restart local v17       #modifier:F
    .restart local v24       #screenTravelCount:F
    :cond_32b
    move/from16 v0, v23

    if-le v0, v9, :cond_363

    .line 4970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 4971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4974
    :cond_363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    sub-int v28, v23, v6

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v25

    .line 4975
    .local v25, targetTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v27, v0

    sub-int v4, v25, v27

    .line 4976
    .local v4, distance:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v4

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto/16 :goto_22

    .line 4820
    :pswitch_data_3b0
    .packed-switch 0x1
        :pswitch_41
        :pswitch_18c
        :pswitch_d6
        :pswitch_1fc
        :pswitch_298
    .end packed-switch
.end method

.method start(I)V
    .registers 8
    .parameter "position"

    .prologue
    const/16 v5, 0x190

    const/4 v4, -0x1

    .line 4678
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 4680
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v0, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4681
    .local v0, firstPos:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 4684
    .local v1, lastPos:I
    if-gt p1, v0, :cond_2e

    .line 4685
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 4686
    .local v2, viewTravelCount:I
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 4695
    :goto_1c
    if-lez v2, :cond_38

    .line 4696
    div-int v3, v5, v2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 4700
    :goto_22
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 4701
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 4702
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4704
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4705
    .end local v2           #viewTravelCount:I
    :cond_2d
    return-void

    .line 4687
    :cond_2e
    if-lt p1, v1, :cond_2d

    .line 4688
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 4689
    .restart local v2       #viewTravelCount:I
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_1c

    .line 4698
    :cond_38
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_22
.end method

.method start(II)V
    .registers 14
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 4708
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 4710
    if-ne p2, v9, :cond_d

    .line 4711
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(I)V

    .line 4768
    :cond_c
    :goto_c
    return-void

    .line 4715
    :cond_d
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v7, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4716
    .local v3, firstPos:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v4, v7, -0x1

    .line 4719
    .local v4, lastPos:I
    if-gt p1, v3, :cond_43

    .line 4720
    sub-int v1, v4, p2

    .line 4721
    .local v1, boundPosFromLast:I
    if-lt v1, v8, :cond_c

    .line 4727
    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    .line 4728
    .local v5, posTravel:I
    add-int/lit8 v2, v1, -0x1

    .line 4729
    .local v2, boundTravel:I
    if-ge v2, v5, :cond_3e

    .line 4730
    move v6, v2

    .line 4731
    .local v6, viewTravelCount:I
    const/4 v7, 0x4

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 4758
    .end local v1           #boundPosFromLast:I
    :goto_2c
    if-lez v6, :cond_5a

    .line 4759
    div-int v7, v10, v6

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 4763
    :goto_32
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 4764
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 4765
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4767
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 4733
    .end local v6           #viewTravelCount:I
    .restart local v1       #boundPosFromLast:I
    :cond_3e
    move v6, v5

    .line 4734
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x2

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_2c

    .line 4736
    .end local v1           #boundPosFromLast:I
    .end local v2           #boundTravel:I
    .end local v5           #posTravel:I
    .end local v6           #viewTravelCount:I
    :cond_43
    if-lt p1, v4, :cond_c

    .line 4737
    sub-int v0, p2, v3

    .line 4738
    .local v0, boundPosFromFirst:I
    if-lt v0, v8, :cond_c

    .line 4744
    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    .line 4745
    .restart local v5       #posTravel:I
    add-int/lit8 v2, v0, -0x1

    .line 4746
    .restart local v2       #boundTravel:I
    if-ge v2, v5, :cond_56

    .line 4747
    move v6, v2

    .line 4748
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x3

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_2c

    .line 4750
    .end local v6           #viewTravelCount:I
    :cond_56
    move v6, v5

    .line 4751
    .restart local v6       #viewTravelCount:I
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    goto :goto_2c

    .line 4761
    .end local v0           #boundPosFromFirst:I
    :cond_5a
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_32
.end method

.method startWithOffset(II)V
    .registers 4
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 4771
    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithOffset(III)V

    .line 4772
    return-void
.end method

.method startWithOffset(III)V
    .registers 13
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v8, -0x1

    .line 4775
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 4777
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mTargetPos:I

    .line 4778
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mOffsetFromTop:I

    .line 4779
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mBoundPos:I

    .line 4780
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4781
    const/4 v6, 0x5

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mMode:I

    .line 4783
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v1, v6, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4784
    .local v1, firstPos:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 4785
    .local v0, childCount:I
    add-int v6, v1, v0

    add-int/lit8 v2, v6, -0x1

    .line 4788
    .local v2, lastPos:I
    if-ge p1, v1, :cond_38

    .line 4789
    sub-int v5, v1, p1

    .line 4800
    .local v5, viewTravelCount:I
    :goto_21
    int-to-float v6, v5

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 4801
    .local v3, screenTravelCount:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v3, v6

    if-gez v6, :cond_51

    int-to-float v6, p3

    mul-float/2addr v6, v3

    float-to-int v6, v6

    :goto_2e
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mScrollDuration:I

    .line 4803
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->mLastSeenPos:I

    .line 4805
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4806
    .end local v3           #screenTravelCount:F
    .end local v5           #viewTravelCount:I
    :goto_37
    return-void

    .line 4790
    :cond_38
    if-le p1, v2, :cond_3d

    .line 4791
    sub-int v5, p1, v2

    .restart local v5       #viewTravelCount:I
    goto :goto_21

    .line 4794
    .end local v5           #viewTravelCount:I
    :cond_3d
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    sub-int v7, p1, v1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    .line 4795
    .local v4, targetTop:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    sub-int v7, v4, p2

    invoke-virtual {v6, v7, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    goto :goto_37

    .line 4801
    .end local v4           #targetTop:I
    .restart local v3       #screenTravelCount:F
    .restart local v5       #viewTravelCount:I
    :cond_51
    int-to-float v6, p3

    div-float/2addr v6, v3

    float-to-int v6, v6

    goto :goto_2e
.end method

.method stop()V
    .registers 2

    .prologue
    .line 4809
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4810
    return-void
.end method

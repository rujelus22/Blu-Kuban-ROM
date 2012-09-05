.class Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .registers 3
    .parameter

    .prologue
    .line 2787
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2787
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 2789
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 2790
    .local v5, motionPosition:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2791
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_45

    .line 2792
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 2793
    .local v4, longPressPosition:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 2795
    .local v2, longPressId:J
    const/4 v1, 0x0

    .line 2796
    .local v1, handled:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_36

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v6, v6, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v6, :cond_36

    .line 2797
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, v0, v4, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 2799
    :cond_36
    if-eqz v1, :cond_46

    .line 2800
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v7, -0x1

    iput v7, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 2801
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 2802
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 2807
    .end local v1           #handled:Z
    .end local v2           #longPressId:J
    .end local v4           #longPressPosition:I
    :cond_45
    :goto_45
    return-void

    .line 2804
    .restart local v1       #handled:Z
    .restart local v2       #longPressId:J
    .restart local v4       #longPressPosition:I
    :cond_46
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v7, 0x2

    iput v7, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    goto :goto_45
.end method

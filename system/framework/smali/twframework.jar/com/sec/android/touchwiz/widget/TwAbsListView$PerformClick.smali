.class Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .registers 3
    .parameter

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2762
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2769
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v3, :cond_7

    .line 2784
    :cond_6
    :goto_6
    return-void

    .line 2772
    :cond_7
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v0, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2773
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->mClickMotionPosition:I

    .line 2774
    .local v1, motionPosition:I
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v3, :cond_6

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2776
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2780
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_6

    .line 2781
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_6
.end method

.class Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;
.super Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
.source "TwAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomItemDeleteItemAnimation"
.end annotation


# instance fields
.field mDuration:J

.field mItemIndex:I

.field private mProgress:F

.field mStartTime:J

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)V
    .registers 6
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1915
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    .line 1916
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;-><init>(IZ)V

    .line 1917
    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    .line 1918
    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    .line 1919
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mItemIndex:I

    .line 1920
    return-void
.end method


# virtual methods
.method public computeAnimation(J)V
    .registers 6
    .parameter "curUpTime"

    .prologue
    .line 1901
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    .line 1902
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .registers 10
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 1889
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1890
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 1891
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    .line 1892
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1893
    .local v6, save:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1894
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1895
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mCustomItemDeleteDrawCallback:Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$600(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mItemIndex:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->this$0:Lcom/sec/android/touchwiz/widget/TwAnimatedListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAnimatedListView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteDrawCallback;->drawDeleteItemAnimation(Landroid/graphics/Canvas;ILandroid/view/View;Landroid/graphics/Rect;F)V

    .line 1897
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1898
    return-void
.end method

.method public isFinished()Z
    .registers 7

    .prologue
    .line 1905
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1906
    .local v0, currentTime:J
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_f

    const/4 v2, 0x1

    :goto_e
    return v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public start(JII)V
    .registers 7
    .parameter "startTime"
    .parameter "itemIndex"
    .parameter "duration"

    .prologue
    .line 1882
    iput-wide p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mStartTime:J

    .line 1883
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mDuration:J

    .line 1884
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mItemIndex:I

    .line 1885
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$CustomItemDeleteItemAnimation;->mProgress:F

    .line 1886
    return-void
.end method

.class Lcom/google/android/music/ringtone/WaveformView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "WaveformView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ringtone/WaveformView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field private mCenterOn:I

.field private mOffsetOnStart:I

.field private mSelectionEndOnStart:I

.field private mSelectionStartOnStart:I

.field private mSpanOnScaleBegin:I

.field private mZoomFactorOnStart:D

.field final synthetic this$0:Lcom/google/android/music/ringtone/WaveformView;


# direct methods
.method private constructor <init>(Lcom/google/android/music/ringtone/WaveformView;)V
    .registers 2
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/ringtone/WaveformView;Lcom/google/android/music/ringtone/WaveformView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;-><init>(Lcom/google/android/music/ringtone/WaveformView;)V

    return-void
.end method

.method private updateScalePosition(Landroid/view/ScaleGestureDetector;)V
    .registers 13
    .parameter "detector"

    .prologue
    .line 604
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v2, v6

    .line 605
    .local v2, span:D
    iget-object v6, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v6}, Lcom/google/android/music/ringtone/WaveformView;->getWidth()I

    move-result v6

    int-to-double v4, v6

    .line 606
    .local v4, width:D
    add-double v6, v4, v2

    iget v8, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mSpanOnScaleBegin:I

    int-to-double v8, v8

    sub-double/2addr v6, v8

    div-double v0, v6, v4

    .line 607
    .local v0, ratio:D
    iget-object v6, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    iget-wide v7, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mZoomFactorOnStart:D

    mul-double/2addr v7, v0

    #setter for: Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D
    invoke-static {v6, v7, v8}, Lcom/google/android/music/ringtone/WaveformView;->access$202(Lcom/google/android/music/ringtone/WaveformView;D)D

    .line 608
    iget-object v6, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    iget v7, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mSelectionStartOnStart:I

    int-to-double v7, v7

    mul-double/2addr v7, v0

    double-to-int v7, v7

    #setter for: Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I
    invoke-static {v6, v7}, Lcom/google/android/music/ringtone/WaveformView;->access$302(Lcom/google/android/music/ringtone/WaveformView;I)I

    .line 609
    iget-object v6, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    iget v7, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mSelectionEndOnStart:I

    int-to-double v7, v7

    mul-double/2addr v7, v0

    double-to-int v7, v7

    #setter for: Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I
    invoke-static {v6, v7}, Lcom/google/android/music/ringtone/WaveformView;->access$402(Lcom/google/android/music/ringtone/WaveformView;I)I

    .line 610
    iget-object v6, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    iget v7, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mOffsetOnStart:I

    iget v8, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mCenterOn:I

    add-int/2addr v7, v8

    int-to-double v7, v7

    mul-double/2addr v7, v0

    iget v9, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mCenterOn:I

    int-to-double v9, v9

    sub-double/2addr v7, v9

    double-to-int v7, v7

    #setter for: Lcom/google/android/music/ringtone/WaveformView;->mOffset:I
    invoke-static {v6, v7}, Lcom/google/android/music/ringtone/WaveformView;->access$502(Lcom/google/android/music/ringtone/WaveformView;I)I

    .line 612
    iget-object v6, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mActivity:Lcom/google/android/music/ringtone/RingtoneEditActivity;
    invoke-static {v6}, Lcom/google/android/music/ringtone/WaveformView;->access$600(Lcom/google/android/music/ringtone/WaveformView;)Lcom/google/android/music/ringtone/RingtoneEditActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updatePosition()V

    .line 613
    iget-object v6, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v6}, Lcom/google/android/music/ringtone/WaveformView;->invalidate()V

    .line 614
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->updateScalePosition(Landroid/view/ScaleGestureDetector;)V

    .line 595
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4
    .parameter "detector"

    .prologue
    .line 583
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mSpanOnScaleBegin:I

    .line 584
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mCenterOn:I

    .line 585
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mZoomFactor:D
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$200(Lcom/google/android/music/ringtone/WaveformView;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mZoomFactorOnStart:D

    .line 586
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mSelectionStart:I
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$300(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mSelectionStartOnStart:I

    .line 587
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mSelectionEnd:I
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$400(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mSelectionEndOnStart:I

    .line 588
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mOffset:I
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$500(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->mOffsetOnStart:I

    .line 589
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2
    .parameter "detector"

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->updateScalePosition(Landroid/view/ScaleGestureDetector;)V

    .line 601
    return-void
.end method

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
.field final synthetic this$0:Lcom/google/android/music/ringtone/WaveformView;


# direct methods
.method private constructor <init>(Lcom/google/android/music/ringtone/WaveformView;)V
    .registers 2
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/ringtone/WaveformView;Lcom/google/android/music/ringtone/WaveformView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;-><init>(Lcom/google/android/music/ringtone/WaveformView;)V

    return-void
.end method

.method private updateScalePosition(Landroid/view/ScaleGestureDetector;)V
    .registers 6
    .parameter "detector"

    .prologue
    .line 725
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v0, v2

    .line 726
    .local v0, center:I
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 727
    .local v1, span:I
    iget-object v2, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    div-int/lit8 v3, v1, 0x2

    sub-int v3, v0, v3

    #setter for: Lcom/google/android/music/ringtone/WaveformView;->mScaleLeft:I
    invoke-static {v2, v3}, Lcom/google/android/music/ringtone/WaveformView;->access$602(Lcom/google/android/music/ringtone/WaveformView;I)I

    .line 728
    iget-object v2, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v0

    #setter for: Lcom/google/android/music/ringtone/WaveformView;->mScaleRight:I
    invoke-static {v2, v3}, Lcom/google/android/music/ringtone/WaveformView;->access$702(Lcom/google/android/music/ringtone/WaveformView;I)I

    .line 729
    iget-object v2, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v2}, Lcom/google/android/music/ringtone/WaveformView;->invalidate()V

    .line 730
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8
    .parameter "detector"

    .prologue
    const/high16 v3, 0x3f80

    .line 696
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 697
    .local v1, scale:F
    const/4 v0, 0x0

    .line 698
    .local v0, delta:I
    cmpl-float v2, v1, v3

    if-lez v2, :cond_29

    .line 699
    sub-float v2, v1, v3

    float-to-int v2, v2

    neg-int v0, v2

    .line 703
    :cond_f
    :goto_f
    iget-object v2, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    iget-object v3, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I
    invoke-static {v3}, Lcom/google/android/music/ringtone/WaveformView;->access$300(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x4

    #calls: Lcom/google/android/music/ringtone/WaveformView;->clamp(III)I
    invoke-static {v3, v4, v5}, Lcom/google/android/music/ringtone/WaveformView;->access$400(III)I

    move-result v3

    #setter for: Lcom/google/android/music/ringtone/WaveformView;->mIntendZoomLevel:I
    invoke-static {v2, v3}, Lcom/google/android/music/ringtone/WaveformView;->access$202(Lcom/google/android/music/ringtone/WaveformView;I)I

    .line 704
    invoke-direct {p0, p1}, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->updateScalePosition(Landroid/view/ScaleGestureDetector;)V

    .line 705
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v2

    return v2

    .line 700
    :cond_29
    cmpg-float v2, v1, v3

    if-gez v2, :cond_f

    .line 701
    div-float v2, v3, v1

    sub-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_f
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4
    .parameter "detector"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I
    invoke-static {v1}, Lcom/google/android/music/ringtone/WaveformView;->access$300(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v1

    #setter for: Lcom/google/android/music/ringtone/WaveformView;->mIntendZoomLevel:I
    invoke-static {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->access$202(Lcom/google/android/music/ringtone/WaveformView;I)I

    .line 690
    invoke-direct {p0, p1}, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->updateScalePosition(Landroid/view/ScaleGestureDetector;)V

    .line 691
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 4
    .parameter "detector"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$300(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mIntendZoomLevel:I
    invoke-static {v1}, Lcom/google/android/music/ringtone/WaveformView;->access$200(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 711
    :goto_e
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$300(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mIntendZoomLevel:I
    invoke-static {v1}, Lcom/google/android/music/ringtone/WaveformView;->access$200(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 712
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->zoomOut()V

    goto :goto_e

    .line 714
    :cond_22
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mActivity:Lcom/google/android/music/ringtone/RingtoneEditActivity;
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$500(Lcom/google/android/music/ringtone/WaveformView;)Lcom/google/android/music/ringtone/RingtoneEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updatePosition()V

    .line 721
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->invalidate()V

    .line 722
    return-void

    .line 715
    :cond_31
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$300(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mIntendZoomLevel:I
    invoke-static {v1}, Lcom/google/android/music/ringtone/WaveformView;->access$200(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v1

    if-le v0, v1, :cond_2b

    .line 716
    :goto_3f
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mZoomLevel:I
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$300(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mIntendZoomLevel:I
    invoke-static {v1}, Lcom/google/android/music/ringtone/WaveformView;->access$200(Lcom/google/android/music/ringtone/WaveformView;)I

    move-result v1

    if-le v0, v1, :cond_53

    .line 717
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->zoomIn()V

    goto :goto_3f

    .line 719
    :cond_53
    iget-object v0, p0, Lcom/google/android/music/ringtone/WaveformView$ScaleListener;->this$0:Lcom/google/android/music/ringtone/WaveformView;

    #getter for: Lcom/google/android/music/ringtone/WaveformView;->mActivity:Lcom/google/android/music/ringtone/RingtoneEditActivity;
    invoke-static {v0}, Lcom/google/android/music/ringtone/WaveformView;->access$500(Lcom/google/android/music/ringtone/WaveformView;)Lcom/google/android/music/ringtone/RingtoneEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updatePosition()V

    goto :goto_2b
.end method

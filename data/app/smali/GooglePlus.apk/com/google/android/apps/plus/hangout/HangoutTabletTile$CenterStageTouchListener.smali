.class Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;
.super Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;
.source "HangoutTabletTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutTabletTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CenterStageTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    .line 415
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;-><init>(Landroid/content/Context;)V

    .line 416
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 468
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getHeight()I

    move-result v1

    .line 469
    .local v1, height:I
    div-int/lit8 v3, v1, 0x2

    .line 470
    .local v3, topThreshold:I
    div-int/lit8 v0, v1, 0x2

    .line 471
    .local v0, bottomThreshold:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 475
    .local v2, startY:I
    cmpl-float v5, p4, v6

    if-lez v5, :cond_33

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, p4, v5

    if-lez v5, :cond_33

    .line 477
    if-lt v2, v0, :cond_2b

    .line 478
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;
    invoke-static {v6}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hideChild(Landroid/view/View;)V

    .line 506
    :goto_2a
    return v4

    .line 483
    :cond_2b
    if-gt v2, v3, :cond_33

    .line 484
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showActionBar()V
    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1900(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    goto :goto_2a

    .line 492
    :cond_33
    cmpg-float v5, p4, v6

    if-gez v5, :cond_56

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    neg-float v5, v5

    cmpg-float v5, p4, v5

    if-gez v5, :cond_56

    .line 494
    if-lt v2, v0, :cond_4e

    .line 495
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->mFilmStripView:Lcom/google/android/apps/plus/hangout/TabletFilmStripView;
    invoke-static {v6}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1800(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)Lcom/google/android/apps/plus/hangout/TabletFilmStripView;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->showChild(Landroid/view/View;)V

    goto :goto_2a

    .line 500
    :cond_4e
    if-gt v2, v3, :cond_56

    .line 501
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->hideActionBar()V
    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$2000(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    goto :goto_2a

    .line 506
    :cond_56
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v4

    goto :goto_2a
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->toggleActionBar()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1600(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;)V

    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method public onTwoPointerSwipe(Landroid/view/MotionEvent$PointerCoords;Landroid/view/MotionEvent$PointerCoords;FF)Z
    .registers 11
    .parameter "pointerStart"
    .parameter "pointerEnd"
    .parameter "xVelocity"
    .parameter "yVelocity"

    .prologue
    const/4 v3, 0x1

    .line 440
    iget v4, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v5, p2, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x437a

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3d

    .line 442
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->getWidth()I

    move-result v0

    .line 443
    .local v0, width:I
    iget v4, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-int v2, v4

    .line 444
    .local v2, xStart:I
    iget v4, p2, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-int v1, v4

    .line 445
    .local v1, xEnd:I
    if-ge v2, v1, :cond_2e

    .line 447
    div-int/lit8 v4, v0, 0x2

    if-ge v2, v4, :cond_3d

    mul-int/lit8 v4, v0, 0x7

    div-int/lit8 v4, v4, 0x8

    if-le v1, v4, :cond_3d

    .line 448
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->handleHorizontalTwoSwipe(Z)V
    invoke-static {v4, v3}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1700(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Z)V

    .line 459
    .end local v0           #width:I
    .end local v1           #xEnd:I
    .end local v2           #xStart:I
    :goto_2d
    return v3

    .line 453
    .restart local v0       #width:I
    .restart local v1       #xEnd:I
    .restart local v2       #xStart:I
    :cond_2e
    div-int/lit8 v4, v0, 0x2

    if-le v2, v4, :cond_3d

    div-int/lit8 v4, v0, 0x8

    if-ge v1, v4, :cond_3d

    .line 454
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutTabletTile$CenterStageTouchListener;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    const/4 v5, 0x0

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->handleHorizontalTwoSwipe(Z)V
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;->access$1700(Lcom/google/android/apps/plus/hangout/HangoutTabletTile;Z)V

    goto :goto_2d

    .line 459
    .end local v0           #width:I
    .end local v1           #xEnd:I
    .end local v2           #xStart:I
    :cond_3d
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/views/TwoPointerGestureDetector;->onTwoPointerSwipe(Landroid/view/MotionEvent$PointerCoords;Landroid/view/MotionEvent$PointerCoords;FF)Z

    move-result v3

    goto :goto_2d
.end method

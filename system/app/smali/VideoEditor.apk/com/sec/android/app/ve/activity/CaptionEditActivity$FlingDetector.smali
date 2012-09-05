.class Lcom/sec/android/app/ve/activity/CaptionEditActivity$FlingDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CaptionEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/CaptionEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlingDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/CaptionEditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$FlingDetector;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4348

    const/high16 v2, 0x42f0

    .line 433
    :try_start_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x437a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    .line 449
    :cond_18
    :goto_18
    return v4

    .line 436
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_36

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_36

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$FlingDetector;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->swipeLeft()V

    goto :goto_18

    .line 446
    :catch_34
    move-exception v0

    goto :goto_18

    .line 440
    :cond_36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_18

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_18

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/CaptionEditActivity$FlingDetector;->this$0:Lcom/sec/android/app/ve/activity/CaptionEditActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/CaptionEditActivity;->swipeRight()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_50} :catch_34

    goto :goto_18
.end method

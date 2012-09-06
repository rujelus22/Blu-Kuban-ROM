.class Lcom/android/calendar/DayView$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayView;)V
    .registers 2
    .parameter

    .prologue
    .line 4643
    iput-object p1, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 4688
    invoke-static {}, Lcom/android/calendar/DayView;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/calendar/DayView;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4689
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doDown(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$4400(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4690
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 4673
    invoke-static {}, Lcom/android/calendar/DayView;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/calendar/DayView;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$4100(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4676
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_25

    .line 4677
    const/4 v0, 0x0

    .line 4683
    :goto_24
    return v0

    .line 4680
    :cond_25
    const/4 p4, 0x0

    .line 4682
    :cond_26
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->access$4300(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 4683
    const/4 v0, 0x1

    goto :goto_24
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "ev"

    .prologue
    .line 4653
    invoke-static {}, Lcom/android/calendar/DayView;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/calendar/DayView;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onLongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doLongPress(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$4000(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4655
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 4659
    invoke-static {}, Lcom/android/calendar/DayView;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/calendar/DayView;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #getter for: Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$4100(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4661
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_25

    .line 4662
    const/4 v0, 0x0

    .line 4668
    :goto_24
    return v0

    .line 4665
    :cond_25
    const/4 p4, 0x0

    .line 4667
    :cond_26
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->access$4200(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 4668
    const/4 v0, 0x1

    goto :goto_24
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 4646
    invoke-static {}, Lcom/android/calendar/DayView;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/calendar/DayView;->access$3800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector.onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/DayView$CalendarGestureListener;->this$0:Lcom/android/calendar/DayView;

    #calls: Lcom/android/calendar/DayView;->doSingleTapUp(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/calendar/DayView;->access$3900(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V

    .line 4648
    const/4 v0, 0x1

    return v0
.end method

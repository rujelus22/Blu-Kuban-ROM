.class Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarSimpleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarView;)V
    .registers 2
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doDown(Landroid/view/MotionEvent;)V

    .line 602
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/calendar/CalendarView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 607
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doLongPress(Landroid/view/MotionEvent;)Z

    .line 612
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/calendar/CalendarView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 616
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 620
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.class Lcom/android/calendar/ParticipantScheduleView$CalendarSimpleGestureListener;
.super Ljava/lang/Object;
.source "ParticipantScheduleView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ParticipantScheduleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarSimpleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ParticipantScheduleView;


# direct methods
.method constructor <init>(Lcom/android/calendar/ParticipantScheduleView;)V
    .registers 2
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/calendar/ParticipantScheduleView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 280
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView$CalendarSimpleGestureListener;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/calendar/ParticipantScheduleView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 286
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

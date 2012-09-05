.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;
.super Ljava/lang/Object;
.source "ContainerView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 43
    .local v0, y:F
    const/high16 v2, 0x421c

    cmpg-float v2, v0, v2

    if-gez v2, :cond_d

    .line 44
    const/4 v1, 0x0

    .line 47
    :goto_c
    return v1

    .line 45
    :cond_d
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    iput-boolean v1, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mPressed:Z

    .line 46
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->invalidate()V

    goto :goto_c
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mPressed:Z

    .line 58
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->invalidate()V

    .line 60
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 70
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    iput-boolean v1, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mPressed:Z

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 75
    .local v0, y:F
    const/high16 v2, 0x421c

    cmpg-float v2, v0, v2

    if-gez v2, :cond_10

    .line 83
    :goto_f
    return v1

    .line 77
    :cond_10
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mOnSingleTapUpListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;
    invoke-static {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 78
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->mOnSingleTapUpListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;
    invoke-static {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;->onSingleTapUp()V

    .line 79
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->invalidate()V

    .line 80
    const/4 v1, 0x1

    goto :goto_f

    .line 82
    :cond_28
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->invalidate()V

    goto :goto_f
.end method

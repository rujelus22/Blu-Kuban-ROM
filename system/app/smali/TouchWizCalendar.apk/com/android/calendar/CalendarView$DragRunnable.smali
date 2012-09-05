.class Lcom/android/calendar/CalendarView$DragRunnable;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .registers 2
    .parameter

    .prologue
    .line 4220
    iput-object p1, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4220
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$DragRunnable;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4224
    iget-object v2, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mTouchMode:I
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3b

    .line 4225
    iget-object v2, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1400(Lcom/android/calendar/CalendarView;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 4226
    .local v0, x:F
    iget-object v2, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1400(Lcom/android/calendar/CalendarView;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 4227
    .local v1, y:F
    iget-object v2, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1400(Lcom/android/calendar/CalendarView;)Landroid/view/MotionEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mDistanceY:I
    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$1500(Lcom/android/calendar/CalendarView;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 4229
    iget-object v2, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v3, p0, Lcom/android/calendar/CalendarView$DragRunnable;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$1400(Lcom/android/calendar/CalendarView;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/CalendarView;->dragEvent(Landroid/view/MotionEvent;)Z

    .line 4231
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_3b
    return-void
.end method

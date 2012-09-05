.class Lcom/android/calendar/CalendarView$UpdateCurrentTime;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateCurrentTime"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarView;)V
    .registers 2
    .parameter

    .prologue
    .line 5444
    iput-object p1, p0, Lcom/android/calendar/CalendarView$UpdateCurrentTime;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/32 v6, 0x493e0

    .line 5446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5447
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/android/calendar/CalendarView$UpdateCurrentTime;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$2800(Lcom/android/calendar/CalendarView;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 5450
    iget-object v2, p0, Lcom/android/calendar/CalendarView$UpdateCurrentTime;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v3, p0, Lcom/android/calendar/CalendarView$UpdateCurrentTime;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;
    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$2900(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    move-result-object v3

    rem-long v4, v0, v6

    sub-long v4, v6, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5452
    iget-object v2, p0, Lcom/android/calendar/CalendarView$UpdateCurrentTime;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v3, p0, Lcom/android/calendar/CalendarView$UpdateCurrentTime;->this$0:Lcom/android/calendar/CalendarView;

    #getter for: Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$2800(Lcom/android/calendar/CalendarView;)Landroid/text/format/Time;

    move-result-object v3

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    #setter for: Lcom/android/calendar/CalendarView;->mTodayJulianDay:I
    invoke-static {v2, v3}, Lcom/android/calendar/CalendarView;->access$3002(Lcom/android/calendar/CalendarView;I)I

    .line 5453
    iget-object v2, p0, Lcom/android/calendar/CalendarView$UpdateCurrentTime;->this$0:Lcom/android/calendar/CalendarView;

    const/4 v3, 0x1

    #setter for: Lcom/android/calendar/CalendarView;->mRedrawScreen:Z
    invoke-static {v2, v3}, Lcom/android/calendar/CalendarView;->access$802(Lcom/android/calendar/CalendarView;Z)Z

    .line 5454
    iget-object v2, p0, Lcom/android/calendar/CalendarView$UpdateCurrentTime;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 5455
    return-void
.end method

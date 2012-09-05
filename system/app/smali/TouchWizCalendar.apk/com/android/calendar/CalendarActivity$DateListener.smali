.class Lcom/android/calendar/CalendarActivity$DateListener;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 10
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 870
    new-instance v0, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    #getter for: Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/calendar/CalendarActivity;->access$300(Lcom/android/calendar/CalendarActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 873
    .local v0, time:Landroid/text/format/Time;
    iput p2, v0, Landroid/text/format/Time;->year:I

    .line 874
    iput p3, v0, Landroid/text/format/Time;->month:I

    .line 875
    iput p4, v0, Landroid/text/format/Time;->monthDay:I

    .line 883
    invoke-static {v0}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 884
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    const v2, 0x7f0a00a1

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    .line 889
    :goto_27
    return-void

    .line 888
    :cond_28
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity$DateListener;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v4}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v4

    iget v4, v4, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v4, v1, :cond_38

    :goto_34
    invoke-virtual {v3, v0, v2, v1}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_27

    :cond_38
    move v1, v2

    goto :goto_34
.end method

.class Lcom/android/calendar/DayEventListActivity$DateListener;
.super Ljava/lang/Object;
.source "DayEventListActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayEventListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListActivity;


# direct methods
.method private constructor <init>(Lcom/android/calendar/DayEventListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity$DateListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/DayEventListActivity;Lcom/android/calendar/DayEventListActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/android/calendar/DayEventListActivity$DateListener;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 9
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    const/4 v3, 0x0

    .line 786
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity$DateListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 787
    .local v0, time:Landroid/text/format/Time;
    iput p2, v0, Landroid/text/format/Time;->year:I

    .line 788
    iput p3, v0, Landroid/text/format/Time;->month:I

    .line 789
    iput p4, v0, Landroid/text/format/Time;->monthDay:I

    .line 791
    invoke-static {v0}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 792
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity$DateListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    const v2, 0x7f0a00a1

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    .line 797
    :goto_21
    return-void

    .line 796
    :cond_22
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity$DateListener;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v1, v0, v3, v3}, Lcom/android/calendar/DayEventListActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_21
.end method

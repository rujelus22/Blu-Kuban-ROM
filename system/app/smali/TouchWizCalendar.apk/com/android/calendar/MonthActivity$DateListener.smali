.class Lcom/android/calendar/MonthActivity$DateListener;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method private constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/android/calendar/MonthActivity$DateListener;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/MonthActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1878
    invoke-direct {p0, p1}, Lcom/android/calendar/MonthActivity$DateListener;-><init>(Lcom/android/calendar/MonthActivity;)V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 11
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    const/4 v5, 0x0

    .line 1880
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/MonthActivity$DateListener;->this$0:Lcom/android/calendar/MonthActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1881
    .local v2, time:Landroid/text/format/Time;
    iput p2, v2, Landroid/text/format/Time;->year:I

    .line 1882
    iput p3, v2, Landroid/text/format/Time;->month:I

    .line 1883
    iput p4, v2, Landroid/text/format/Time;->monthDay:I

    .line 1885
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1886
    .local v0, millis:J
    invoke-static {v2}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1887
    iget-object v3, p0, Lcom/android/calendar/MonthActivity$DateListener;->this$0:Lcom/android/calendar/MonthActivity;

    const v4, 0x7f0a00a1

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    .line 1892
    :goto_26
    return-void

    .line 1890
    :cond_27
    iget-object v3, p0, Lcom/android/calendar/MonthActivity$DateListener;->this$0:Lcom/android/calendar/MonthActivity;

    #getter for: Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;
    invoke-static {v3}, Lcom/android/calendar/MonthActivity;->access$1100(Lcom/android/calendar/MonthActivity;)Lcom/android/calendar/PinchView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/calendar/PinchView;->setMonthPinch(Z)V

    .line 1891
    iget-object v3, p0, Lcom/android/calendar/MonthActivity$DateListener;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v3, v2, v5, v5}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_26
.end method

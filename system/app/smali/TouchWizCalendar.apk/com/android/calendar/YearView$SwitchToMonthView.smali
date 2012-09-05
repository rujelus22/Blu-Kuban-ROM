.class Lcom/android/calendar/YearView$SwitchToMonthView;
.super Ljava/lang/Object;
.source "YearView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/YearView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchToMonthView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/YearView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/YearView;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/calendar/YearView$SwitchToMonthView;->this$0:Lcom/android/calendar/YearView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/YearView;Lcom/android/calendar/YearView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/android/calendar/YearView$SwitchToMonthView;-><init>(Lcom/android/calendar/YearView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 495
    iget-object v3, p0, Lcom/android/calendar/YearView$SwitchToMonthView;->this$0:Lcom/android/calendar/YearView;

    const/4 v4, 0x0

    #setter for: Lcom/android/calendar/YearView;->mScreenMode:I
    invoke-static {v3, v4}, Lcom/android/calendar/YearView;->access$702(Lcom/android/calendar/YearView;I)I

    .line 497
    iget-object v3, p0, Lcom/android/calendar/YearView$SwitchToMonthView;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mFocusedRow:I
    invoke-static {v3}, Lcom/android/calendar/YearView;->access$500(Lcom/android/calendar/YearView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/calendar/YearView$SwitchToMonthView;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mColumnNum:I
    invoke-static {v4}, Lcom/android/calendar/YearView;->access$900(Lcom/android/calendar/YearView;)I

    move-result v4

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/calendar/YearView$SwitchToMonthView;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mFocusedColumn:I
    invoke-static {v4}, Lcom/android/calendar/YearView;->access$600(Lcom/android/calendar/YearView;)I

    move-result v4

    add-int v0, v3, v4

    .line 498
    .local v0, month:I
    iget-object v3, p0, Lcom/android/calendar/YearView$SwitchToMonthView;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/android/calendar/YearView;->access$200(Lcom/android/calendar/YearView;)Landroid/text/format/Time;

    move-result-object v3

    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 500
    .local v1, savedDay:I
    iget-object v3, p0, Lcom/android/calendar/YearView$SwitchToMonthView;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/android/calendar/YearView;->access$1000(Lcom/android/calendar/YearView;)Landroid/text/format/Time;

    move-result-object v2

    .line 501
    .local v2, time:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/YearView$SwitchToMonthView;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/android/calendar/YearView;->access$200(Lcom/android/calendar/YearView;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 502
    const/16 v3, 0xf

    iget v4, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v2, v3, v0, v4}, Landroid/text/format/Time;->set(III)V

    .line 505
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v3

    if-le v1, v3, :cond_5d

    .line 506
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v3

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 511
    :goto_46
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 513
    iget-object v3, p0, Lcom/android/calendar/YearView$SwitchToMonthView;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v3}, Lcom/android/calendar/YearView;->access$100(Lcom/android/calendar/YearView;)Lcom/android/calendar/MonthActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/calendar/MonthActivity;->setTime(Landroid/text/format/Time;)V

    .line 515
    iget-object v3, p0, Lcom/android/calendar/YearView$SwitchToMonthView;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v3}, Lcom/android/calendar/YearView;->access$100(Lcom/android/calendar/YearView;)Lcom/android/calendar/MonthActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/MonthActivity;->switchMode()V

    .line 517
    return-void

    .line 508
    :cond_5d
    iput v1, v2, Landroid/text/format/Time;->monthDay:I

    goto :goto_46
.end method

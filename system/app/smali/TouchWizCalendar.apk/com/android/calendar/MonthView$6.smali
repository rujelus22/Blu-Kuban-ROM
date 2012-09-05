.class Lcom/android/calendar/MonthView$6;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;)V
    .registers 2
    .parameter

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/android/calendar/MonthView$6;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCusorMoved()V
    .registers 3

    .prologue
    const/4 v1, 0x5

    .line 1393
    iget-object v0, p0, Lcom/android/calendar/MonthView$6;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I
    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$1200(Lcom/android/calendar/MonthView;)I

    move-result v0

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/calendar/MonthView$6;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v0

    if-ne v0, v1, :cond_16

    .line 1397
    :goto_15
    return-void

    .line 1396
    :cond_16
    iget-object v0, p0, Lcom/android/calendar/MonthView$6;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->reloadCurrentDayEvents()V

    goto :goto_15
.end method

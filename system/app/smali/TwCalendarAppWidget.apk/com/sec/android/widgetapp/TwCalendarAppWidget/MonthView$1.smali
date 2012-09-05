.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$1;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->init(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCusorMoved()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mParentActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;
    invoke-static {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->reloadCurrentDayEvents()V

    .line 171
    return-void
.end method

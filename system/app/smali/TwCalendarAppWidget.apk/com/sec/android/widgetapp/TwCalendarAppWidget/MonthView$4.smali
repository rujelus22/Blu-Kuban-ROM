.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    iput-object p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;->val$events:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mParentActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;
    invoke-static {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 425
    :goto_c
    return-void

    .line 418
    :cond_d
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;->val$events:Ljava/util/ArrayList;

    #setter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$902(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 419
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #calls: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->calEventDay()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$1000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)V

    .line 420
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mRedrawScreen:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$402(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;Z)Z

    .line 421
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->invalidate()V

    .line 423
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mParentActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;
    invoke-static {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->reloadCurrentDayEvents()V

    goto :goto_c
.end method

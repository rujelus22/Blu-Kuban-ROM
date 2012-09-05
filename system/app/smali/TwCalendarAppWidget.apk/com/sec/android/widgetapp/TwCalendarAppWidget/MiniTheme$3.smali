.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;
.super Ljava/lang/Object;
.source "MiniTheme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->reloadCurrentDayEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

.field final synthetic val$events:Ljava/util/ArrayList;

.field final synthetic val$millis:J

.field final synthetic val$time:Landroid/text/format/Time;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;JLandroid/text/format/Time;Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    iput-wide p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;->val$millis:J

    iput-object p4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;->val$time:Landroid/text/format/Time;

    iput-object p5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;->val$events:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 391
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 399
    :goto_c
    return-void

    .line 395
    :cond_d
    iget-wide v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;->val$millis:J

    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;->val$time:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getJulianDay(JJ)I

    move-result v0

    .line 396
    .local v0, julianDay:I
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;->val$events:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->arrangeEventList(Ljava/util/ArrayList;ILandroid/app/Activity;)V

    .line 397
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;->val$events:Ljava/util/ArrayList;

    #calls: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->updateView(Ljava/util/ArrayList;)V
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->access$200(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;Ljava/util/ArrayList;)V

    goto :goto_c
.end method

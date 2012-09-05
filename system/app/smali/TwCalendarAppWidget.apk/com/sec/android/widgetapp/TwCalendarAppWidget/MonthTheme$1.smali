.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$1;
.super Ljava/lang/Object;
.source "MonthTheme.java"

# interfaces
.implements Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->setCurrentDayEvents(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;)V
    .registers 2
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp()V
    .registers 8

    .prologue
    .line 245
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mEventContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;
    invoke-static {v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->playSoundEffect(I)V

    .line 246
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;

    iget-object v5, v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 247
    .local v3, startMillis:J
    const-wide/32 v5, 0x36ee80

    add-long v0, v3, v5

    .line 248
    .local v0, endMillis:J
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.android.calendar"

    const-string v6, "com.android.calendar.EditEvent"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const/high16 v5, 0x1420

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    const-string v5, "beginTime"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 254
    const-string v5, "endTime"

    invoke-virtual {v2, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 255
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

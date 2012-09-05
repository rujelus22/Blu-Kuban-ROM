.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$3;
.super Ljava/lang/Object;
.source "MonthTheme.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 417
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$3;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 420
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$3;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;

    iget-object v3, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getSelectedMillis()J

    move-result-wide v1

    .line 421
    .local v1, millis:J
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.calendar"

    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$3;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;

    iget-object v4, v4, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getDayViewClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const/high16 v3, 0x1420

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 426
    const-string v3, "beginTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 427
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$3;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 428
    return-void
.end method

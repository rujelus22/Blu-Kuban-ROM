.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$2;
.super Ljava/lang/Object;
.source "MiniTheme.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->updateView(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 220
    .local v1, millis:J
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "com.android.calendar"

    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;)Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->queryDayView()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const/high16 v3, 0x1420

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    const-string v3, "beginTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 226
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 227
    return-void
.end method

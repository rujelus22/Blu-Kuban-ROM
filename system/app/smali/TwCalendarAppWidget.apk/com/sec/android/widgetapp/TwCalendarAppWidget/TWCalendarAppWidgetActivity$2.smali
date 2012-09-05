.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity$2;
.super Landroid/database/ContentObserver;
.source "TWCalendarAppWidgetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;
    invoke-static {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;->onRefresh()V

    .line 99
    return-void
.end method

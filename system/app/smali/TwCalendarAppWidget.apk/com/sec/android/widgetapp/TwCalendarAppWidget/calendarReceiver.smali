.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/calendarReceiver;
.super Landroid/content/BroadcastReceiver;
.source "calendarReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->SetPreferenceFromCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

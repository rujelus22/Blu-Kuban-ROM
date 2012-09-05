.class public Lcom/android/providers/calendar/CalendarReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsEmptyService;,
        Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 99
    return-void
.end method

.method private removeScheduledAlarms(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsEmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    new-instance v0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;

    invoke-direct {v0, p1, p2}, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 69
    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->start()V

    .line 70
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 43
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v2, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 44
    sget-object v2, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 49
    :cond_16
    :goto_16
    return-void

    .line 46
    :cond_17
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 47
    invoke-direct {p0, p1, v1}, Lcom/android/providers/calendar/CalendarReceiver;->removeScheduledAlarms(Landroid/content/Context;Landroid/content/ContentResolver;)V

    goto :goto_16
.end method

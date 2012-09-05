.class Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;
.super Ljava/lang/Thread;
.source "CalendarReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveScheduledAlarmsThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "context"
    .parameter "resolver"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->mResolver:Landroid/content/ContentResolver;

    .line 82
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 86
    const-string v0, "CalendarReceiver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 87
    const-string v0, "CalendarReceiver"

    const-string v1, "Removing scheduled alarms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_11
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsThread;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/providers/calendar/CalendarReceiver$RemoveScheduledAlarmsEmptyService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 92
    return-void
.end method

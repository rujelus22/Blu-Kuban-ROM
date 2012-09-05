.class public Lcom/android/mms/transaction/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, action:Ljava/lang/String;
    const-string v1, "AlarmReceiver"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    if-eqz v0, :cond_1f

    const-string v1, "ONCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 16
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsOnce:Z

    .line 17
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->updateCMASRepeatNotifications(Landroid/content/Context;)V

    .line 18
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelAlarm(Landroid/content/Context;)V

    .line 23
    :goto_1e
    return-void

    .line 20
    :cond_1f
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsOnce:Z

    .line 21
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->updateCMASRepeatNotifications(Landroid/content/Context;)V

    goto :goto_1e
.end method

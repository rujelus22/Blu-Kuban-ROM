.class public Lcom/sec/android/app/mobileprint/MPrintNotificationManager;
.super Ljava/lang/Object;
.source "MPrintNotificationManager.java"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mNotiTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "appContext"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 38
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mNotiTimeMap:Ljava/util/HashMap;

    .line 41
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mNotiTimeMap:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method private cancelProgressOnStatusBar(I)V
    .registers 4
    .parameter "transactionID"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mNotiTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 160
    return-void
.end method

.method private sendBroadcastCanceled(I)V
    .registers 5
    .parameter "transactionID"

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobileprint.event.print_canceled"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Transaction"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private sendBroadcastCompleted(I)V
    .registers 5
    .parameter "transactionID"

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobileprint.event.print_completed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Transaction"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private sendBroadcastError(II)V
    .registers 6
    .parameter "transactionID"
    .parameter "value"

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobileprint.event.print_error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Transaction"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v1, "Value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private sendBroadcastOnGoing(IIII)V
    .registers 8
    .parameter "transactionID"
    .parameter "totalPage"
    .parameter "page"
    .parameter "value"

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobileprint.event.print_progress"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Transaction"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v1, "TotalPage"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v1, "Page"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v1, "Value"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private showProgressOnStatusBar(IIZ)V
    .registers 13
    .parameter "transactionID"
    .parameter "totalPage"
    .parameter "isWaiting"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 100
    .local v2, notiStartTime:J
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mNotiTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const-class v5, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    const/high16 v4, 0x1480

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    const-string v4, "Transaction"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v4, "TotalPage"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 110
    const v4, 0x7f020018

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 111
    if-nez p3, :cond_88

    .line 112
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const v5, 0x7f080028

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 113
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const v5, 0x7f080027

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 119
    :goto_58
    const-string v4, "0%"

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 120
    if-gt p2, v8, :cond_61

    if-ne p3, v8, :cond_6d

    .line 121
    :cond_61
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const v5, 0x7f08002a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 122
    :cond_6d
    const/16 v4, 0x64

    invoke-virtual {v0, v4, v7, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 123
    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 124
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    invoke-static {v4, p1, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 126
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 127
    return-void

    .line 117
    :cond_88
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const v5, 0x7f080029

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_58
.end method

.method private updateProgressOnStatusBar(IIII)V
    .registers 12
    .parameter "transactionID"
    .parameter "totalPage"
    .parameter "page"
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 130
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mNotiTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 132
    .local v2, notiStartTime:Ljava/lang/Long;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v1, intent:Landroid/content/Intent;
    const/16 v3, 0x50

    if-ge p4, v3, :cond_36

    .line 134
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    const/high16 v3, 0x1480

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    const-string v3, "Transaction"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v3, "TotalPage"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v3, "Page"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v3, "Value"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    :cond_36
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 144
    const v3, 0x7f020018

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 145
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const v4, 0x7f080028

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const v5, 0x7f080027

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 148
    if-le p2, v6, :cond_a9

    .line 149
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 150
    :cond_a9
    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p4, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 151
    if-eqz v2, :cond_cd

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_b5
    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 152
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mAppContext:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, p1, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 154
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 155
    return-void

    .line 151
    :cond_cd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_b5
.end method


# virtual methods
.method public notifyCanceled(I)V
    .registers 2
    .parameter "transactionID"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->sendBroadcastCanceled(I)V

    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->cancelProgressOnStatusBar(I)V

    .line 63
    return-void
.end method

.method public notifyCompleted(I)V
    .registers 2
    .parameter "transactionID"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->sendBroadcastCompleted(I)V

    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->cancelProgressOnStatusBar(I)V

    .line 58
    return-void
.end method

.method public notifyError(II)V
    .registers 3
    .parameter "transactionID"
    .parameter "value"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->sendBroadcastError(II)V

    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->cancelProgressOnStatusBar(I)V

    .line 68
    return-void
.end method

.method public notifyOnGoing(IIII)V
    .registers 5
    .parameter "transactionID"
    .parameter "totalPage"
    .parameter "page"
    .parameter "value"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->sendBroadcastOnGoing(IIII)V

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->updateProgressOnStatusBar(IIII)V

    .line 53
    return-void
.end method

.method public notifyStart(IIZ)V
    .registers 4
    .parameter "transactionID"
    .parameter "totalPage"
    .parameter "isWaiting"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->showProgressOnStatusBar(IIZ)V

    .line 48
    return-void
.end method

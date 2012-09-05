.class public Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IMSIconBroadcastReceiver.java"


# static fields
.field static final IMS_AVAILABLE:Ljava/lang/String; = "com.sec.android.internal.ims.vt_status"

.field static final IMS_ICON:Ljava/lang/String; = "com.sec.android.internal.ims.vt_status_icon"

.field static final IMS_REGISTERED_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StatusBar.IMSIconBroadcastReceiver"

.field public static isIMSRegistered:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->isIMSRegistered:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mIconViews:Ljava/util/ArrayList;

    .line 52
    const-string v1, "StatusBar.IMSIconBroadcastReceiver"

    const-string v2, "IMSIconBroadcastReceiver...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.internal.ims.vt_status"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "com.sec.android.internal.ims.vt_status_icon"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 60
    return-void
.end method

.method private showNotification(III)V
    .registers 11
    .parameter "notificationID"
    .parameter "iconId"
    .parameter "textResID"

    .prologue
    const/4 v6, 0x0

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x1000

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 162
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 171
    .local v0, notification:Landroid/app/Notification;
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 172
    iput-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 173
    iput-object v6, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 175
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 178
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v0, "StatusBar.IMSIconBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIconView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    const-string v3, "StatusBar.IMSIconBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received IMS status bar BroadCast Update:action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; IMSRegistered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->isIMSRegistered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v3, "com.sec.android.internal.ims.vt_status"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 76
    const-string v3, "Enable"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 77
    .local v2, showNotification:Z
    sput-boolean v2, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->isIMSRegistered:Z

    .line 78
    if-eqz v2, :cond_4e

    .line 79
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "videocall_indicator"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_4d

    .line 80
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->updateIMSVTNotification(Z)V

    .line 91
    .end local v2           #showNotification:Z
    :cond_4d
    :goto_4d
    return-void

    .line 82
    .restart local v2       #showNotification:Z
    :cond_4e
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->updateIMSVTNotification(Z)V

    goto :goto_4d

    .line 84
    .end local v2           #showNotification:Z
    :cond_52
    const-string v3, "com.sec.android.internal.ims.vt_status_icon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 85
    const-string v3, "Enable"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 86
    .local v1, showIcon:Z
    if-eqz v1, :cond_6a

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->isIMSRegistered:Z

    if-eqz v3, :cond_6a

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->updateIMSVTNotification(Z)V

    goto :goto_4d

    .line 89
    :cond_6a
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->updateIMSVTNotification(Z)V

    goto :goto_4d
.end method

.method public updateIMSVTNotification(Z)V
    .registers 9
    .parameter "showNotification"

    .prologue
    .line 95
    const-string v4, "StatusBar.IMSIconBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateIMSVTNotification - Notification = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 98
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v0, :cond_49

    .line 99
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/IMSIconBroadcastReceiver;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 100
    .local v3, v:Landroid/widget/ImageView;
    if-eqz v3, :cond_41

    .line 102
    if-eqz p1, :cond_3b

    .line 104
    const/4 v2, -0x1

    .line 108
    .local v2, iconId:I
    const v2, 0x7f0200ee

    .line 110
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    .end local v2           #iconId:I
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 122
    :cond_3b
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_38

    .line 128
    :cond_41
    const-string v4, "StatusBar.IMSIconBroadcastReceiver"

    const-string v5, "updateIMSVTNotification - v is NULL !!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 158
    .end local v3           #v:Landroid/widget/ImageView;
    :cond_49
    return-void
.end method

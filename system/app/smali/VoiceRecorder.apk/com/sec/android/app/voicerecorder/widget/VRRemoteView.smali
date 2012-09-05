.class public Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;
.super Landroid/widget/RemoteViews;
.source "VRRemoteView.java"


# static fields
.field private static mNotificationManager:Landroid/app/NotificationManager;

.field private static mRemoteViewDisappear:Ljava/lang/Runnable;

.field private static mRemoteViewDisappearTimerHandler:Landroid/os/Handler;

.field private static mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mRemoteViewDisappearTimerHandler:Landroid/os/Handler;

    .line 333
    new-instance v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView$1;

    invoke-direct {v0}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mRemoteViewDisappear:Ljava/lang/Runnable;

    return-void
.end method

.method private static createRecordRemoteViews()Landroid/widget/RemoteViews;
    .registers 10

    .prologue
    const v9, 0x7010001

    const/4 v8, 0x0

    .line 280
    const-string v0, "VRRemoteView"

    const-string v1, "createRecordRemoteViews()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03001e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 283
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mRemoteViewDisappearTimerHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mRemoteViewDisappear:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    const-class v3, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 289
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-static {v2, v9, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 290
    const v2, 0x7f090058

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 293
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.voicerecorder.rec"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v9, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 295
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicerecorder.rec_pause"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v9, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 297
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 299
    const v4, 0x7f09005a

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 300
    const v1, 0x7f09005b

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 301
    const v1, 0x7f09005e

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 303
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.voicerecorder.play"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v9, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 305
    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicerecorder.play_pause"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v9, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 307
    sget-object v3, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.voicerecorder.play_stop"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9, v4, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 309
    sget-object v4, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.voicerecorder.rec_new"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v9, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 311
    sget-object v5, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sec.android.app.voicerecorder.standby"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v9, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 314
    const v6, 0x7f09005c

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 315
    const v1, 0x7f09005d

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 316
    const v1, 0x7f09005f

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 317
    const v1, 0x7f090060

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 318
    const v1, 0x7f090059

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 320
    return-object v0
.end method

.method public static hideNotification()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 265
    const-string v0, "VRRemoteView"

    const-string v1, "hideNotification()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_17

    .line 268
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7010001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 269
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    .line 271
    :cond_17
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    if-eqz v0, :cond_20

    .line 272
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopForeground(Z)V

    .line 274
    :cond_20
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mRemoteViewDisappearTimerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mRemoteViewDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    return v2
.end method

.method public static initService(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V
    .registers 1
    .parameter "service"

    .prologue
    .line 44
    sput-object p0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    .line 45
    return-void
.end method

.method private static makeRecNotification(I)Landroid/app/Notification;
    .registers 6
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    .line 324
    new-instance v0, Landroid/app/Notification;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 326
    .local v0, tN:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 327
    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 328
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 329
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 331
    return-object v0
.end method

.method public static play()V
    .registers 8

    .prologue
    const v4, 0x7f090063

    const v7, 0x7010001

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 119
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_e

    .line 150
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    .local v6, tN:Landroid/app/Notification;
    :goto_d
    return-void

    .line 123
    .end local v0           #remoteViews:Landroid/widget/RemoteViews;
    .end local v6           #tN:Landroid/app/Notification;
    :cond_e
    const v1, 0x7f020021

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->makeRecNotification(I)Landroid/app/Notification;

    move-result-object v6

    .line 125
    .restart local v6       #tN:Landroid/app/Notification;
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->createRecordRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 127
    .restart local v0       #remoteViews:Landroid/widget/RemoteViews;
    const v1, 0x7f090058

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 129
    const v1, 0x7f090062

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 130
    const v1, 0x7f09005a

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 131
    const v1, 0x7f09005b

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    const v1, 0x7f09005e

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 134
    const v1, 0x7f09005c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 135
    const v1, 0x7f09005d

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 136
    const v1, 0x7f09005f

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    const v1, 0x7f090060

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 138
    const v1, 0x7f090059

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 140
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getSelectedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 141
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 143
    const v1, 0x7f090061

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPosition()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 144
    iput-object v0, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 146
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 149
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1, v7, v6}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_d
.end method

.method public static playPause(IJZ)V
    .registers 16
    .parameter "icon"
    .parameter "fileDuration"
    .parameter "isStopRec"

    .prologue
    const v7, 0x7f090063

    const v11, 0x7010001

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 156
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_e

    .line 199
    :goto_d
    return-void

    .line 160
    :cond_e
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->makeRecNotification(I)Landroid/app/Notification;

    move-result-object v6

    .line 162
    .local v6, tN:Landroid/app/Notification;
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->createRecordRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 164
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    const v1, 0x7f090058

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 166
    const v1, 0x7f090062

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 167
    const v1, 0x7f09005a

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 168
    const v1, 0x7f09005b

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 169
    const v1, 0x7f09005e

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 171
    const v1, 0x7f09005c

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 172
    const v1, 0x7f09005d

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 173
    const v1, 0x7f09005f

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 174
    const v1, 0x7f090060

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 175
    const v1, 0x7f090059

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 177
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getSelectedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 178
    const/4 v1, -0x1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 181
    const-wide/16 v2, 0x0

    .line 183
    .local v2, duration:J
    if-eqz p3, :cond_87

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v2, v7, p1

    .line 188
    :goto_69
    const v1, 0x7f090061

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 190
    iput-object v0, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 192
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 195
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1, v11, v6}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->startForeground(ILandroid/app/Notification;)V

    .line 197
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mRemoteViewDisappearTimerHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mRemoteViewDisappear:Ljava/lang/Runnable;

    const-wide/32 v7, 0x1d4c0

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 186
    :cond_87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getCurrentPosition()I

    move-result v1

    int-to-long v9, v1

    sub-long v2, v7, v9

    goto :goto_69
.end method

.method public static playStop()V
    .registers 8

    .prologue
    const v3, 0x7f090063

    const v7, 0x7010001

    const/4 v5, 0x0

    const/16 v2, 0x8

    .line 204
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_e

    .line 238
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    .local v6, tN:Landroid/app/Notification;
    :goto_d
    return-void

    .line 208
    .end local v0           #remoteViews:Landroid/widget/RemoteViews;
    .end local v6           #tN:Landroid/app/Notification;
    :cond_e
    const v1, 0x7f020007

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->makeRecNotification(I)Landroid/app/Notification;

    move-result-object v6

    .line 210
    .restart local v6       #tN:Landroid/app/Notification;
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->createRecordRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 212
    .restart local v0       #remoteViews:Landroid/widget/RemoteViews;
    const v1, 0x7f090058

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 214
    const v1, 0x7f090062

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 215
    const v1, 0x7f09005a

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 216
    const v1, 0x7f09005b

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 217
    const v1, 0x7f09005e

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 219
    const v1, 0x7f09005c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 220
    const v1, 0x7f09005d

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 221
    const v1, 0x7f09005f

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 222
    const v1, 0x7f090060

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 223
    const v1, 0x7f090059

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 225
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    const v2, 0x7f060055

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 226
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 228
    const v1, 0x7f090061

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 229
    iput-object v0, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 231
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 234
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1, v7, v6}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->startForeground(ILandroid/app/Notification;)V

    .line 236
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mRemoteViewDisappearTimerHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mRemoteViewDisappear:Ljava/lang/Runnable;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d
.end method

.method public static rec()V
    .registers 8

    .prologue
    const v4, 0x7f090063

    const v7, 0x7010001

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 54
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_e

    .line 83
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    .local v6, tN:Landroid/app/Notification;
    :goto_d
    return-void

    .line 58
    .end local v0           #remoteViews:Landroid/widget/RemoteViews;
    .end local v6           #tN:Landroid/app/Notification;
    :cond_e
    const v1, 0x7f020007

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->makeRecNotification(I)Landroid/app/Notification;

    move-result-object v6

    .line 60
    .restart local v6       #tN:Landroid/app/Notification;
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->createRecordRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 61
    .restart local v0       #remoteViews:Landroid/widget/RemoteViews;
    const v1, 0x7f090058

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 63
    const v1, 0x7f090062

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 64
    const v1, 0x7f09005a

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 65
    const v1, 0x7f09005b

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 67
    const v1, 0x7f09005e

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 68
    const v1, 0x7f09005c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 69
    const v1, 0x7f09005d

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 70
    const v1, 0x7f09005f

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 71
    const v1, 0x7f090060

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 72
    const v1, 0x7f090059

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 73
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    const v2, 0x7f060024

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 74
    const/high16 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 76
    const v1, 0x7f090061

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getRecDuration()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 77
    iput-object v0, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 79
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 82
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1, v7, v6}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_d
.end method

.method public static recPause()V
    .registers 10

    .prologue
    const v3, 0x7f090063

    const v9, 0x7010001

    const/4 v5, 0x0

    const/16 v2, 0x8

    .line 88
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_e

    .line 115
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    .local v6, tN:Landroid/app/Notification;
    :goto_d
    return-void

    .line 92
    .end local v0           #remoteViews:Landroid/widget/RemoteViews;
    .end local v6           #tN:Landroid/app/Notification;
    :cond_e
    const v1, 0x7f020007

    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->makeRecNotification(I)Landroid/app/Notification;

    move-result-object v6

    .line 94
    .restart local v6       #tN:Landroid/app/Notification;
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->createRecordRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 95
    .restart local v0       #remoteViews:Landroid/widget/RemoteViews;
    const v1, 0x7f090058

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 97
    const v1, 0x7f09005a

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 98
    const v1, 0x7f090062

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    const v1, 0x7f09005b

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    const v1, 0x7f09005e

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    const v1, 0x7f09005c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    const v1, 0x7f09005d

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    const v1, 0x7f09005f

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    const v1, 0x7f090060

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 106
    const v1, 0x7f090059

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 107
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    const v2, 0x7f060025

    invoke-virtual {v1, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 108
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 110
    const v1, 0x7f090061

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getRecDuration()J

    move-result-wide v7

    sub-long/2addr v2, v7

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 111
    iput-object v0, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 113
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 114
    sget-object v1, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v1, v9, v6}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_d
.end method

.method public static registerNotification()Z
    .registers 4

    .prologue
    .line 243
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    .line 244
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mNotificationManager:Landroid/app/NotificationManager;

    .line 247
    :cond_10
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_2a

    .line 248
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->rec()V

    .line 254
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 255
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->play()V

    .line 261
    :cond_28
    :goto_28
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_2a
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_1d

    .line 250
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->recPause()V

    goto :goto_1d

    .line 256
    :cond_38
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 257
    const v0, 0x7f020020

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->playPause(IJZ)V

    goto :goto_28
.end method

.method public static releaseService()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->mVRService:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    .line 49
    return-void
.end method

.class public Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;
.super Ljava/lang/Object;
.source "RealTimeChatNotifications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications$MessageQuery;
    }
.end annotation


# static fields
.field private static RING_DELAY_MS:J

.field private static sLastRingTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->RING_DELAY_MS:J

    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->sLastRingTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static buildNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Uri;)Landroid/app/Notification;
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "summary"
    .parameter "title"
    .parameter "content"
    .parameter "silent"
    .parameter "sound"

    .prologue
    const/4 v6, 0x0

    .line 357
    invoke-static {p0, v6, p2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 359
    .local v1, contentIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0200ca

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, p3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 361
    .local v2, notification:Landroid/app/Notification;
    invoke-virtual {v2, p0, p4, p5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 363
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 364
    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 365
    const/high16 v3, 0x800

    invoke-static {p0, v6, p2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, p0, p4, p5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 369
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/Intents;->getClearRealTimeChatIntent(Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 370
    .local v0, clearIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->newRequestCode()I

    move-result v3

    invoke-static {p0, v3, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->sLastRingTime:J

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->RING_DELAY_MS:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_5c

    .line 374
    if-nez p6, :cond_5c

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->sLastRingTime:J

    .line 376
    if-eqz p7, :cond_5d

    .line 377
    iput-object p7, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 383
    :goto_50
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->shouldVibrate(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 384
    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 389
    :cond_5c
    return-object v2

    .line 378
    :cond_5d
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->hasRingtone(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 379
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_50

    .line 381
    :cond_6a
    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    goto :goto_50
.end method

.method private static buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":chat_notifications:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 104
    const-class v3, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;

    monitor-enter v3

    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, notificationTag:Ljava/lang/String;
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 107
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 108
    monitor-exit v3

    return-void

    .line 104
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    .end local v1           #notificationTag:Ljava/lang/String;
    :catchall_15
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static createNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)Landroid/app/Notification;
    .registers 34
    .parameter "context"
    .parameter "account"
    .parameter "silent"

    .prologue
    .line 113
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->shouldNotify(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 114
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 115
    const-string v2, "RTCNotification"

    const-string v4, "notifications disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_16
    const/4 v2, 0x0

    .line 333
    :cond_17
    :goto_17
    return-object v2

    .line 120
    :cond_18
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->MESSAGE_NOTIFICATIONS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    .line 122
    .local v3, uri:Landroid/net/Uri;
    const/16 v24, 0x0

    .line 124
    .local v24, cursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_23
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 127
    .local v6, whereArgs:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 130
    .local v10, summary:Ljava/lang/String;
    const/16 v29, 0x0

    .line 131
    .local v29, sound:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications$MessageQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "author_id!=? AND notification_seen!=1 AND conversation_visible=1 AND conversation_muted=0 AND conversation_pending_leave!=1 AND (status=3 OR status=4) "

    const-string v7, "conversation_id, timestamp DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 135
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 136
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 137
    const-string v2, "RTCNotification"

    const-string v4, "no unseen notifications"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_23 .. :try_end_53} :catchall_308

    .line 139
    :cond_53
    const/4 v2, 0x0

    .line 337
    if-eqz v24, :cond_17

    .line 338
    .end local v29           #sound:Landroid/net/Uri;
    :goto_56
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 141
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_5a
    const/4 v2, 0x5

    :try_start_5b
    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 142
    .local v21, conversationId:J
    :cond_61
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_185

    .line 143
    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v4, v21

    if-eqz v2, :cond_61

    .line 145
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 146
    const-string v2, "RTCNotification"

    const-string v4, "multiple conversations with unseen notification"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_82
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications$MessageQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "author_id!=? AND notification_seen!=1 AND conversation_visible=1 AND conversation_muted=0 AND conversation_pending_leave!=1 AND (status=3 OR status=4) "

    const-string v7, "timestamp DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 154
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 155
    const/4 v2, 0x0

    .line 337
    if-eqz v24, :cond_17

    goto :goto_56

    .line 157
    :cond_9d
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 158
    .local v19, authorFirstName:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 159
    .local v28, messageType:I
    const/4 v2, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 160
    .local v30, text:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    .line 161
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 162
    .local v25, imageUrl:Ljava/lang/String;
    if-nez p2, :cond_3db

    .line 163
    const/16 v2, 0x9

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_14b

    .line 164
    const/16 v2, 0xc

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 165
    .local v27, inviterFullName:Ljava/lang/String;
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 166
    const-string v2, "RTCNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pending accept "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_f8
    if-eqz v27, :cond_10b

    if-nez p2, :cond_10b

    .line 169
    const v2, 0x7f0701b7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v27, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_10b
    move-object/from16 v14, v29

    .line 188
    .end local v27           #inviterFullName:Ljava/lang/String;
    .end local v29           #sound:Landroid/net/Uri;
    .local v14, sound:Landroid/net/Uri;
    :goto_10d
    const v2, 0x7f07018e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, title:Ljava/lang/String;
    const v2, 0x7f0701b4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, content:Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/phone/Intents;->getConversationListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v9

    .line 193
    .local v9, intent:Landroid/content/Intent;
    const-string v2, "reset_notifications"

    const/4 v4, 0x1

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    const/high16 v2, 0x1400

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v13, p2

    invoke-static/range {v7 .. v14}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->buildNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Uri;)Landroid/app/Notification;

    .end local v14           #sound:Landroid/net/Uri;
    move-result-object v2

    .line 337
    if-eqz v24, :cond_17

    goto/16 :goto_56

    .line 173
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #content:Ljava/lang/String;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_14b
    const/4 v2, 0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_15c

    .line 174
    move-object/from16 v10, v30

    .line 175
    const/4 v2, 0x6

    move/from16 v0, v28

    if-ne v0, v2, :cond_3db

    .line 176
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/HangoutRingtoneUtils;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v14

    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    goto :goto_10d

    .line 178
    .end local v14           #sound:Landroid/net/Uri;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_15c
    if-nez v25, :cond_173

    .line 179
    const v2, 0x7f0701b5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    const/4 v5, 0x1

    aput-object v30, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v14, v29

    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    goto :goto_10d

    .line 183
    .end local v14           #sound:Landroid/net/Uri;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_173
    const v2, 0x7f0701b6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v14, v29

    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    goto :goto_10d

    .line 200
    .end local v14           #sound:Landroid/net/Uri;
    .end local v19           #authorFirstName:Ljava/lang/String;
    .end local v25           #imageUrl:Ljava/lang/String;
    .end local v28           #messageType:I
    .end local v30           #text:Ljava/lang/String;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_185
    const-string v2, "RTCNotification"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 201
    const-string v2, "RTCNotification"

    const-string v4, "single conversation with unseen notification"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_195
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
    const/16 v2, 0x9

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_25d

    .line 208
    const/16 v2, 0xc

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 209
    .restart local v27       #inviterFullName:Ljava/lang/String;
    const/16 v2, 0xb

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 210
    .local v26, inviterFirstName:Ljava/lang/String;
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d5

    .line 211
    const-string v2, "RTCNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pending accept "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_1d5
    if-eqz v27, :cond_1d9

    if-nez v26, :cond_1de

    .line 214
    :cond_1d9
    const/4 v2, 0x0

    .line 337
    if-eqz v24, :cond_17

    goto/16 :goto_56

    .line 216
    :cond_1de
    if-nez p2, :cond_1ef

    .line 217
    const v2, 0x7f0701b7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v27, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 222
    :cond_1ef
    const v2, 0x7f0701b8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v26, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 226
    .restart local v12       #content:Ljava/lang/String;
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_250

    .line 227
    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 228
    .restart local v11       #title:Ljava/lang/String;
    if-nez v11, :cond_218

    .line 229
    const/4 v2, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 236
    :cond_218
    :goto_218
    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v2, 0xa

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_25a

    const/16 v18, 0x1

    :goto_233
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-static/range {v13 .. v18}, Lcom/google/android/apps/plus/phone/Intents;->getConversationInvititationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    .line 240
    .restart local v9       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v14, v29

    .end local v26           #inviterFirstName:Ljava/lang/String;
    .end local v27           #inviterFullName:Ljava/lang/String;
    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    :goto_242
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v13, p2

    .line 333
    invoke-static/range {v7 .. v14}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->buildNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Uri;)Landroid/app/Notification;

    move-result-object v2

    .line 337
    if-eqz v24, :cond_17

    goto/16 :goto_56

    .line 232
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #title:Ljava/lang/String;
    .end local v14           #sound:Landroid/net/Uri;
    .restart local v26       #inviterFirstName:Ljava/lang/String;
    .restart local v27       #inviterFullName:Ljava/lang/String;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_250
    const v2, 0x7f0701b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #title:Ljava/lang/String;
    goto :goto_218

    .line 236
    :cond_25a
    const/16 v18, 0x0

    goto :goto_233

    .line 243
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #content:Ljava/lang/String;
    .end local v26           #inviterFirstName:Ljava/lang/String;
    .end local v27           #inviterFullName:Ljava/lang/String;
    :cond_25d
    const-string v2, "RTCNotification"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_26d

    .line 244
    const-string v2, "RTCNotification"

    const-string v4, "conversation accepted"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_26d
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 247
    .local v20, authorFullName:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 248
    .restart local v19       #authorFirstName:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 249
    .restart local v28       #messageType:I
    const/4 v2, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 250
    .restart local v30       #text:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    .line 251
    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 252
    .restart local v25       #imageUrl:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 253
    .local v23, conversationName:Ljava/lang/String;
    if-nez v23, :cond_2a8

    .line 254
    const/4 v2, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 256
    :cond_2a8
    if-eqz v20, :cond_2b0

    if-eqz v19, :cond_2b0

    if-eqz v30, :cond_2b0

    if-nez v23, :cond_2b5

    .line 258
    :cond_2b0
    const/4 v2, 0x0

    .line 337
    if-eqz v24, :cond_17

    goto/16 :goto_56

    .line 261
    :cond_2b5
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_35d

    .line 263
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2cc

    .line 264
    const-string v2, "RTCNotification"

    const-string v4, "single message needs notification"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_2cc
    if-nez p2, :cond_3d7

    .line 267
    const/4 v2, 0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_30f

    .line 268
    move-object/from16 v10, v30

    .line 269
    const/4 v2, 0x6

    move/from16 v0, v28

    if-ne v0, v2, :cond_3d7

    .line 270
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/HangoutRingtoneUtils;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v14

    .line 283
    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    :goto_2de
    move-object/from16 v11, v23

    .line 285
    .restart local v11       #title:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_338

    .line 286
    move-object/from16 v12, v30

    .line 327
    .restart local v12       #content:Ljava/lang/String;
    :goto_2e7
    const/4 v2, 0x5

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3d1

    const/4 v2, 0x1

    :goto_2f9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4, v5, v2}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v9

    .line 330
    .restart local v9       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_306
    .catchall {:try_start_5b .. :try_end_306} :catchall_308

    goto/16 :goto_242

    .line 337
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #summary:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #content:Ljava/lang/String;
    .end local v14           #sound:Landroid/net/Uri;
    .end local v19           #authorFirstName:Ljava/lang/String;
    .end local v20           #authorFullName:Ljava/lang/String;
    .end local v21           #conversationId:J
    .end local v23           #conversationName:Ljava/lang/String;
    .end local v25           #imageUrl:Ljava/lang/String;
    .end local v28           #messageType:I
    .end local v30           #text:Ljava/lang/String;
    :catchall_308
    move-exception v2

    if-eqz v24, :cond_30e

    .line 338
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_30e
    throw v2

    .line 272
    .restart local v6       #whereArgs:[Ljava/lang/String;
    .restart local v10       #summary:Ljava/lang/String;
    .restart local v19       #authorFirstName:Ljava/lang/String;
    .restart local v20       #authorFullName:Ljava/lang/String;
    .restart local v21       #conversationId:J
    .restart local v23       #conversationName:Ljava/lang/String;
    .restart local v25       #imageUrl:Ljava/lang/String;
    .restart local v28       #messageType:I
    .restart local v29       #sound:Landroid/net/Uri;
    .restart local v30       #text:Ljava/lang/String;
    :cond_30f
    if-nez v25, :cond_326

    .line 273
    const v2, 0x7f0701b5

    const/4 v4, 0x2

    :try_start_315
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    const/4 v5, 0x1

    aput-object v30, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v14, v29

    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    goto :goto_2de

    .line 277
    .end local v14           #sound:Landroid/net/Uri;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_326
    const v2, 0x7f0701b6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v14, v29

    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    goto :goto_2de

    .line 287
    .restart local v11       #title:Ljava/lang/String;
    :cond_338
    if-nez v25, :cond_34d

    .line 288
    const v2, 0x7f0701b5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    const/4 v5, 0x1

    aput-object v30, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #content:Ljava/lang/String;
    goto :goto_2e7

    .line 292
    .end local v12           #content:Ljava/lang/String;
    :cond_34d
    const v2, 0x7f0701b6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #content:Ljava/lang/String;
    goto :goto_2e7

    .line 299
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #content:Ljava/lang/String;
    .end local v14           #sound:Landroid/net/Uri;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_35d
    const-string v2, "RTCNotification"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36d

    .line 300
    const-string v2, "RTCNotification"

    const-string v4, "multiple messages needs notification"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_36d
    if-nez p2, :cond_3d4

    .line 303
    const/4 v2, 0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_3a8

    .line 304
    move-object/from16 v10, v30

    .line 305
    const/4 v2, 0x6

    move/from16 v0, v28

    if-ne v0, v2, :cond_3d4

    .line 306
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/HangoutRingtoneUtils;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v14

    .line 319
    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    :goto_37f
    const/4 v2, 0x6

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 320
    .restart local v11       #title:Ljava/lang/String;
    if-nez v11, :cond_38f

    .line 321
    const/4 v2, 0x7

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 323
    :cond_38f
    const v2, 0x7f0701b4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #content:Ljava/lang/String;
    goto/16 :goto_2e7

    .line 308
    .end local v11           #title:Ljava/lang/String;
    .end local v12           #content:Ljava/lang/String;
    .end local v14           #sound:Landroid/net/Uri;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_3a8
    if-nez v25, :cond_3bf

    .line 309
    const v2, 0x7f0701b5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    const/4 v5, 0x1

    aput-object v30, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v14, v29

    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    goto :goto_37f

    .line 313
    .end local v14           #sound:Landroid/net/Uri;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_3bf
    const v2, 0x7f0701b6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v19, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3cd
    .catchall {:try_start_315 .. :try_end_3cd} :catchall_308

    move-result-object v10

    move-object/from16 v14, v29

    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    goto :goto_37f

    .line 327
    .restart local v11       #title:Ljava/lang/String;
    .restart local v12       #content:Ljava/lang/String;
    :cond_3d1
    const/4 v2, 0x0

    goto/16 :goto_2f9

    .end local v11           #title:Ljava/lang/String;
    .end local v12           #content:Ljava/lang/String;
    .end local v14           #sound:Landroid/net/Uri;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_3d4
    move-object/from16 v14, v29

    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    goto :goto_37f

    .end local v14           #sound:Landroid/net/Uri;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_3d7
    move-object/from16 v14, v29

    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    goto/16 :goto_2de

    .end local v14           #sound:Landroid/net/Uri;
    .end local v20           #authorFullName:Ljava/lang/String;
    .end local v23           #conversationName:Ljava/lang/String;
    .restart local v29       #sound:Landroid/net/Uri;
    :cond_3db
    move-object/from16 v14, v29

    .end local v29           #sound:Landroid/net/Uri;
    .restart local v14       #sound:Landroid/net/Uri;
    goto/16 :goto_10d
.end method

.method private static getRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .registers 6
    .parameter "context"

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 438
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f07000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f07000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, defValue:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 443
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private static hasRingtone(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 456
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f07000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f07000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, defValue:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 461
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v4, 0x1

    :goto_21
    return v4

    :cond_22
    const/4 v4, 0x0

    goto :goto_21
.end method

.method private static newRequestCode()I
    .registers 2

    .prologue
    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static shouldNotify(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 402
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f07000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 405
    .local v0, defValue:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 407
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method private static shouldVibrate(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 420
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 423
    .local v0, defValue:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 425
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method public static declared-synchronized update(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "silent"

    .prologue
    .line 80
    const-class v4, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;

    monitor-enter v4

    :try_start_3
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 82
    .local v1, notificationManager:Landroid/app/NotificationManager;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, notificationTag:Ljava/lang/String;
    const-string v3, "RTCNotification"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 85
    const-string v3, "RTCNotification"

    const-string v5, "Update"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1f
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->createNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)Landroid/app/Notification;

    move-result-object v0

    .line 88
    .local v0, notification:Landroid/app/Notification;
    if-eqz v0, :cond_37

    .line 89
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 90
    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_3c

    .line 95
    :goto_35
    monitor-exit v4

    return-void

    .line 93
    :cond_37
    const/4 v3, 0x1

    :try_start_38
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_35

    .line 80
    .end local v0           #notification:Landroid/app/Notification;
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    .end local v2           #notificationTag:Ljava/lang/String;
    :catchall_3c
    move-exception v3

    monitor-exit v4

    throw v3
.end method

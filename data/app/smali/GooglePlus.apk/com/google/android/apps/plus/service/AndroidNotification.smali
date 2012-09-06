.class public final Lcom/google/android/apps/plus/service/AndroidNotification;
.super Ljava/lang/Object;
.source "AndroidNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/AndroidNotification$1;
    }
.end annotation


# direct methods
.method private static buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":notifications:"

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
    .line 141
    const-class v3, Lcom/google/android/apps/plus/service/AndroidNotification;

    monitor-enter v3

    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidNotification;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, notificationTag:Ljava/lang/String;
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 144
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 145
    monitor-exit v3

    return-void

    .line 141
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    .end local v1           #notificationTag:Ljava/lang/String;
    :catchall_15
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static createCoalescedNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/database/Cursor;)Landroid/app/Notification;
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "unseenCount"
    .parameter "cursor"

    .prologue
    .line 606
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/plus/service/AndroidNotification;->hasOnlyHangoutNotifications(Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 607
    const/4 v4, 0x0

    .line 636
    :goto_7
    return-object v4

    .line 610
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 611
    .local v5, res:Landroid/content/res/Resources;
    const v9, 0x7f0e0016

    invoke-virtual {v5, v9, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    .line 613
    .local v6, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 614
    .local v7, when:J
    new-instance v4, Landroid/app/Notification;

    const v9, 0x7f020181

    invoke-direct {v4, v9, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 617
    .local v4, notification:Landroid/app/Notification;
    move-object v2, v6

    .line 618
    .local v2, contentTitle:Ljava/lang/CharSequence;
    const v9, 0x7f0e0017

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, p2, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, contentText:Ljava/lang/CharSequence;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v3

    .line 623
    .local v3, intent:Landroid/content/Intent;
    const/high16 v9, 0x1400

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 625
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->hasRingtone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 626
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 631
    :goto_4d
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->newRequestCode()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {p0, v9, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 633
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v4, p0, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 634
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/EsService;->getDeleteNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    goto :goto_7

    .line 628
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    :cond_60
    iget v9, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v4, Landroid/app/Notification;->defaults:I

    goto :goto_4d
.end method

.method private static createDigestNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/database/Cursor;)Landroid/app/Notification;
    .registers 24
    .parameter "context"
    .parameter "account"
    .parameter "unseenCount"
    .parameter "cursor"

    .prologue
    .line 295
    invoke-static/range {p3 .. p3}, Lcom/google/android/apps/plus/service/AndroidNotification;->hasOnlyHangoutNotifications(Landroid/database/Cursor;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 296
    const/16 v18, 0x0

    .line 354
    :goto_8
    return-object v18

    .line 299
    :cond_9
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-nez v18, :cond_12

    .line 300
    const/16 v18, 0x0

    goto :goto_8

    .line 302
    :cond_12
    const-wide v16, 0x7fffffffffffffffL

    .line 303
    .local v16, when:J
    const/4 v8, 0x0

    .line 304
    .local v8, interestingCount:I
    new-instance v6, Landroid/app/Notification$InboxStyle;

    invoke-direct {v6}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 306
    .local v6, digest:Landroid/app/Notification$InboxStyle;
    :cond_1d
    const/16 v18, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 308
    .local v15, typeString:Ljava/lang/String;
    if-eqz v15, :cond_54

    .line 309
    invoke-static {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v14

    .line 311
    .local v14, type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    sget-object v18, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_54

    .line 312
    const/16 v18, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 314
    .local v10, snippetText:Ljava/lang/CharSequence;
    invoke-virtual {v6, v10}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 315
    const/16 v18, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 317
    .local v12, timestamp:J
    const-wide/16 v18, 0x3e8

    div-long v18, v12, v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 318
    add-int/lit8 v8, v8, 0x1

    .line 321
    .end local v10           #snippetText:Ljava/lang/CharSequence;
    .end local v12           #timestamp:J
    .end local v14           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :cond_54
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_1d

    .line 322
    move/from16 p2, v8

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 325
    .local v9, res:Landroid/content/res/Resources;
    const v18, 0x7f0e0016

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v11

    .line 327
    .local v11, tickerText:Ljava/lang/CharSequence;
    move-object v5, v11

    .line 329
    .local v5, contentTitle:Ljava/lang/CharSequence;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/phone/Intents;->getNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v7

    .line 330
    .local v7, intent:Landroid/content/Intent;
    const/high16 v18, 0x1400

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    new-instance v3, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    .local v3, builder:Landroid/app/Notification$Builder;
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->newRequestCode()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 335
    .local v4, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v6, v5}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 336
    invoke-virtual {v3, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x7f020181

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x7f02021e

    move/from16 v0, v19

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v18

    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/service/EsService;->getDeleteNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/PendingIntent;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 348
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->hasRingtone(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_ed

    .line 349
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 354
    :goto_e7
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v18

    goto/16 :goto_8

    .line 351
    :cond_ed
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_e7
.end method

.method private static createNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/Notification;
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->shouldNotify(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 204
    :cond_7
    :goto_7
    return-object v1

    .line 162
    :cond_8
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsNotificationData;->getNotificationsToDisplay(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/database/Cursor;

    move-result-object v0

    .line 163
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_7

    .line 169
    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 170
    .local v2, unreadCount:I
    if-lez v2, :cond_3a

    .line 171
    packed-switch v2, :pswitch_data_42

    .line 182
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->isRunningJellybeanOrLater()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 183
    invoke-static {p0, p1, v2, v0}, Lcom/google/android/apps/plus/service/AndroidNotification;->createDigestNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/database/Cursor;)Landroid/app/Notification;
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_3c

    move-result-object v1

    .line 201
    .local v1, notification:Landroid/app/Notification;
    :goto_21
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 173
    .end local v1           #notification:Landroid/app/Notification;
    :pswitch_25
    :try_start_25
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->isRunningJellybeanOrLater()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 174
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidNotification;->createRichNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/app/Notification;

    move-result-object v1

    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_21

    .line 176
    .end local v1           #notification:Landroid/app/Notification;
    :cond_30
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidNotification;->createSingleNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/app/Notification;

    move-result-object v1

    .line 178
    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_21

    .line 186
    .end local v1           #notification:Landroid/app/Notification;
    :cond_35
    invoke-static {p0, p1, v2, v0}, Lcom/google/android/apps/plus/service/AndroidNotification;->createCoalescedNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/database/Cursor;)Landroid/app/Notification;
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_3c

    move-result-object v1

    .line 189
    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_21

    .line 198
    .end local v1           #notification:Landroid/app/Notification;
    :cond_3a
    const/4 v1, 0x0

    .restart local v1       #notification:Landroid/app/Notification;
    goto :goto_21

    .line 201
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #unreadCount:I
    :catchall_3c
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 171
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_25
    .end packed-switch
.end method

.method private static createRichNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/app/Notification;
    .registers 57
    .parameter "context"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 367
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v50

    if-nez v50, :cond_9

    .line 368
    const/16 v50, 0x0

    .line 587
    :goto_8
    return-object v50

    .line 371
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 373
    .local v37, res:Landroid/content/res/Resources;
    const/16 v50, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 375
    .local v44, typeString:Ljava/lang/String;
    const/16 v50, 0xe

    move-object/from16 v0, p2

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 377
    .local v28, notificationTypeString:Ljava/lang/String;
    if-nez v28, :cond_13f

    sget-object v27, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->UNKNOWN_NOTIFICATION_TYPE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    .line 382
    .local v27, notificationType:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    :goto_25
    const/16 v50, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 384
    .local v43, tickerText:Ljava/lang/CharSequence;
    const v50, 0x7f0e0016

    const/16 v51, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v42

    .line 386
    .local v42, stockTitle:Ljava/lang/CharSequence;
    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    const-wide/16 v52, 0x3e8

    div-long v46, v50, v52

    .line 389
    .local v46, when:J
    const/16 v50, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, activityId:Ljava/lang/String;
    invoke-static/range {p0 .. p2}, Lcom/google/android/apps/plus/service/AndroidNotification;->newViewOneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/app/PendingIntent;

    move-result-object v15

    .line 393
    .local v15, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v17, v42

    .line 394
    .local v17, contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v16, v43

    .line 395
    .local v16, contentText:Ljava/lang/CharSequence;
    move-object/from16 v11, v43

    .line 397
    .local v11, bigTitle:Ljava/lang/CharSequence;
    const/16 v33, 0x0

    .line 398
    .local v33, primaryActionIcon:I
    const/16 v35, 0x0

    .line 399
    .local v35, primaryActionString:Ljava/lang/String;
    const/16 v34, 0x0

    .line 401
    .local v34, primaryActionIntent:Landroid/app/PendingIntent;
    const/16 v39, 0x0

    .line 402
    .local v39, secondaryActionIcon:I
    const/16 v41, 0x0

    .line 403
    .local v41, secondaryActionString:Ljava/lang/String;
    const/16 v40, 0x0

    .line 405
    .local v40, secondaryActionIntent:Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 406
    .local v9, bigPicture:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 407
    .local v10, bigText:Ljava/lang/CharSequence;
    const v50, 0x7f02021d

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 409
    .local v23, largeIcon:Landroid/graphics/Bitmap;
    const/16 v36, -0x1

    .line 411
    .local v36, priority:I
    sget-object v50, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$apps$people$notifications$proto$base$NotificationEnums$NotificationType:[I

    invoke-virtual/range {v27 .. v27}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->ordinal()I

    move-result v51

    aget v50, v50, v51

    packed-switch v50, :pswitch_data_3b6

    .line 534
    const-string v50, "AndroidNotification"

    const/16 v51, 0x3

    invoke-static/range {v50 .. v51}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v50

    if-eqz v50, :cond_ac

    .line 535
    const-string v50, "AndroidNotification"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Unknown notification type: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_ac
    :goto_ac
    :pswitch_ac
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 542
    .local v13, builder:Landroid/app/Notification$Builder;
    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v50

    move-object/from16 v0, v50

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v50

    const v51, 0x7f020181

    invoke-virtual/range {v50 .. v51}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v50

    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/service/EsService;->getDeleteNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/PendingIntent;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 551
    if-eqz v9, :cond_393

    .line 552
    new-instance v50, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v50 .. v50}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v10}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v9}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 562
    :cond_10b
    :goto_10b
    if-eqz v23, :cond_112

    .line 563
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 566
    :cond_112
    if-eqz v33, :cond_11d

    .line 567
    move/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 573
    :cond_11d
    if-eqz v39, :cond_128

    .line 574
    move/from16 v0, v39

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 579
    :cond_128
    if-eqz v44, :cond_139

    .line 580
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->hasRingtone(Landroid/content/Context;)Z

    move-result v50

    if-eqz v50, :cond_3ad

    .line 581
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 587
    :cond_139
    :goto_139
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v50

    goto/16 :goto_8

    .line 377
    .end local v5           #activityId:Ljava/lang/String;
    .end local v9           #bigPicture:Landroid/graphics/Bitmap;
    .end local v10           #bigText:Ljava/lang/CharSequence;
    .end local v11           #bigTitle:Ljava/lang/CharSequence;
    .end local v13           #builder:Landroid/app/Notification$Builder;
    .end local v15           #contentIntent:Landroid/app/PendingIntent;
    .end local v16           #contentText:Ljava/lang/CharSequence;
    .end local v17           #contentTitle:Ljava/lang/CharSequence;
    .end local v23           #largeIcon:Landroid/graphics/Bitmap;
    .end local v27           #notificationType:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .end local v33           #primaryActionIcon:I
    .end local v34           #primaryActionIntent:Landroid/app/PendingIntent;
    .end local v35           #primaryActionString:Ljava/lang/String;
    .end local v36           #priority:I
    .end local v39           #secondaryActionIcon:I
    .end local v40           #secondaryActionIntent:Landroid/app/PendingIntent;
    .end local v41           #secondaryActionString:Ljava/lang/String;
    .end local v42           #stockTitle:Ljava/lang/CharSequence;
    .end local v43           #tickerText:Ljava/lang/CharSequence;
    .end local v46           #when:J
    :cond_13f
    invoke-static/range {v28 .. v28}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v27

    goto/16 :goto_25

    .line 415
    .restart local v5       #activityId:Ljava/lang/String;
    .restart local v9       #bigPicture:Landroid/graphics/Bitmap;
    .restart local v10       #bigText:Ljava/lang/CharSequence;
    .restart local v11       #bigTitle:Ljava/lang/CharSequence;
    .restart local v15       #contentIntent:Landroid/app/PendingIntent;
    .restart local v16       #contentText:Ljava/lang/CharSequence;
    .restart local v17       #contentTitle:Ljava/lang/CharSequence;
    .restart local v23       #largeIcon:Landroid/graphics/Bitmap;
    .restart local v27       #notificationType:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;
    .restart local v33       #primaryActionIcon:I
    .restart local v34       #primaryActionIntent:Landroid/app/PendingIntent;
    .restart local v35       #primaryActionString:Ljava/lang/String;
    .restart local v36       #priority:I
    .restart local v39       #secondaryActionIcon:I
    .restart local v40       #secondaryActionIntent:Landroid/app/PendingIntent;
    .restart local v41       #secondaryActionString:Ljava/lang/String;
    .restart local v42       #stockTitle:Ljava/lang/CharSequence;
    .restart local v43       #tickerText:Ljava/lang/CharSequence;
    .restart local v46       #when:J
    :pswitch_145
    const/16 v50, 0x0

    goto/16 :goto_8

    .line 418
    :pswitch_149
    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 420
    .local v30, ownerGaiaId:Ljava/lang/String;
    const/16 v50, 0x9

    move-object/from16 v0, p2

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 421
    .local v31, photoId:J
    const-string v50, "AndroidNotification"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Got a "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, " notification: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v29, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v50

    move-object/from16 v4, v51

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 423
    .local v29, op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    invoke-virtual/range {v29 .. v32}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getPhoto(Ljava/lang/String;J)V

    .line 424
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 425
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v31

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->getImageDataFromCloud(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)[B

    move-result-object v12

    .line 426
    .local v12, bits:[B
    if-eqz v12, :cond_227

    .line 427
    const/16 v50, 0x0

    array-length v0, v12

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    invoke-static {v12, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 428
    .local v18, full:Landroid/graphics/Bitmap;
    if-eqz v18, :cond_223

    .line 429
    const v50, 0x7f0d007a

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 430
    .local v25, maxWidth:F
    const v50, 0x7f0d007b

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    .line 431
    .local v24, maxHeight:F
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    div-float v50, v25, v50

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    mul-float v26, v50, v51

    .line 433
    .local v26, newHeight:F
    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v50, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v51, v0

    const/16 v52, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v38

    .line 435
    .local v38, scaled:Landroid/graphics/Bitmap;
    const v50, 0x7f0d007c

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v50

    move/from16 v0, v50

    float-to-int v0, v0

    move/from16 v20, v0

    .line 436
    .local v20, iconSize:I
    const/16 v50, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v20

    move/from16 v2, v20

    move/from16 v3, v50

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 437
    cmpg-float v50, v26, v24

    if-gtz v50, :cond_241

    .line 438
    move-object/from16 v9, v38

    .line 447
    .end local v20           #iconSize:I
    .end local v24           #maxHeight:F
    .end local v25           #maxWidth:F
    .end local v26           #newHeight:F
    .end local v38           #scaled:Landroid/graphics/Bitmap;
    :cond_223
    :goto_223
    if-eqz v9, :cond_227

    .line 448
    const/16 v36, 0x1

    .line 451
    .end local v18           #full:Landroid/graphics/Bitmap;
    :cond_227
    const v50, 0x7f0800d6

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 452
    const v50, 0x7f0800d7

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 453
    move-object/from16 v11, v17

    .line 454
    goto/16 :goto_ac

    .line 439
    .restart local v18       #full:Landroid/graphics/Bitmap;
    .restart local v20       #iconSize:I
    .restart local v24       #maxHeight:F
    .restart local v25       #maxWidth:F
    .restart local v26       #newHeight:F
    .restart local v38       #scaled:Landroid/graphics/Bitmap;
    :cond_241
    if-eqz v38, :cond_223

    .line 440
    const/16 v48, 0x0

    .line 441
    .local v48, x:I
    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v45, v0

    .line 442
    .local v45, w:I
    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 443
    .local v19, h:I
    const/16 v50, 0x0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v51

    sub-int v51, v51, v19

    div-int/lit8 v51, v51, 0x2

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(II)I

    move-result v49

    .line 444
    .local v49, y:I
    const/16 v50, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v50

    move/from16 v2, v49

    move/from16 v3, v45

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_223

    .line 461
    .end local v12           #bits:[B
    .end local v18           #full:Landroid/graphics/Bitmap;
    .end local v19           #h:I
    .end local v20           #iconSize:I
    .end local v24           #maxHeight:F
    .end local v25           #maxWidth:F
    .end local v26           #newHeight:F
    .end local v29           #op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .end local v30           #ownerGaiaId:Ljava/lang/String;
    .end local v31           #photoId:J
    .end local v38           #scaled:Landroid/graphics/Bitmap;
    .end local v45           #w:I
    .end local v48           #x:I
    .end local v49           #y:I
    :pswitch_26e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityIsPublic(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v22

    .line 462
    .local v22, isPublic:Ljava/lang/Boolean;
    if-nez v22, :cond_2b6

    .line 464
    new-instance v29, Lcom/google/android/apps/plus/api/TacoTruckOperation;

    const/16 v50, 0x0

    const/16 v51, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v50

    move-object/from16 v4, v51

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/api/TacoTruckOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 465
    .restart local v29       #op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getActivity(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->start()V

    .line 467
    const-string v50, "AndroidNotification"

    const/16 v51, 0x6

    invoke-static/range {v50 .. v51}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v50

    if-eqz v50, :cond_2ae

    .line 468
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v50

    if-eqz v50, :cond_34a

    .line 469
    const-string v50, "AndroidNotification"

    const-string v51, "Cannot download activity"

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getException()Ljava/lang/Exception;

    move-result-object v52

    invoke-static/range {v50 .. v52}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    :cond_2ae
    :goto_2ae
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityIsPublic(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v22

    .line 477
    .end local v29           #op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_2b6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityPlusOnedByViewer(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v21

    .line 479
    .local v21, isPlusOned:Ljava/lang/Boolean;
    if-eqz v21, :cond_2e0

    .line 480
    const v33, 0x7f020109

    .line 481
    const v50, 0x7f0800d5

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 482
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v50

    if-nez v50, :cond_2e0

    .line 483
    sget-object v50, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v50

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/apps/plus/service/EsService;->getCreatePostPlusOneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v34

    .line 488
    :cond_2e0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityCanReshare(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    .line 490
    .local v14, canReshare:Ljava/lang/Boolean;
    if-eqz v14, :cond_30c

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v50

    if-eqz v50, :cond_30c

    .line 491
    const v39, 0x7f020114

    .line 492
    const v50, 0x7f0800d3

    move-object/from16 v0, v37

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 493
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v50

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v50

    invoke-static {v0, v1, v5, v2}, Lcom/google/android/apps/plus/service/AndroidNotification;->newResharePendingIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object v40

    .line 497
    :cond_30c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityAuthorId(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 498
    .local v6, authorId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->getName(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 499
    .local v7, authorName:Ljava/lang/String;
    if-eqz v7, :cond_32e

    .line 500
    move-object v11, v7

    .line 501
    move-object/from16 v17, v7

    .line 503
    new-instance v8, Lcom/google/android/apps/plus/fragments/AvatarLoader;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1, v6}, Lcom/google/android/apps/plus/fragments/AvatarLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 504
    .local v8, avatarLoader:Lcom/google/android/apps/plus/fragments/AvatarLoader;
    invoke-virtual {v8}, Lcom/google/android/apps/plus/fragments/AvatarLoader;->esLoadInBackground()Landroid/graphics/Bitmap;

    move-result-object v23

    .line 507
    .end local v8           #avatarLoader:Lcom/google/android/apps/plus/fragments/AvatarLoader;
    :cond_32e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityImageData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 508
    if-eqz v9, :cond_36e

    .line 510
    const/16 v36, 0x1

    .line 515
    :cond_33a
    :goto_33a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/android/apps/plus/content/EsPostsData;->getActivityPostText(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 517
    const/16 v36, 0x1

    .line 519
    if-nez v10, :cond_ac

    .line 520
    move-object/from16 v10, v43

    goto/16 :goto_ac

    .line 470
    .end local v6           #authorId:Ljava/lang/String;
    .end local v7           #authorName:Ljava/lang/String;
    .end local v14           #canReshare:Ljava/lang/Boolean;
    .end local v21           #isPlusOned:Ljava/lang/Boolean;
    .restart local v29       #op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    :cond_34a
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->hasError()Z

    move-result v50

    if-eqz v50, :cond_2ae

    .line 471
    const-string v50, "AndroidNotification"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Cannot download activity: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/apps/plus/api/TacoTruckOperation;->getErrorCode()I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ae

    .line 511
    .end local v29           #op:Lcom/google/android/apps/plus/api/TacoTruckOperation;
    .restart local v6       #authorId:Ljava/lang/String;
    .restart local v7       #authorName:Ljava/lang/String;
    .restart local v14       #canReshare:Ljava/lang/Boolean;
    .restart local v21       #isPlusOned:Ljava/lang/Boolean;
    :cond_36e
    const-string v50, "AndroidNotification"

    const/16 v51, 0x3

    invoke-static/range {v50 .. v51}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v50

    if-eqz v50, :cond_33a

    .line 512
    const-string v50, "AndroidNotification"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "failed to decode media object for "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33a

    .line 556
    .end local v6           #authorId:Ljava/lang/String;
    .end local v7           #authorName:Ljava/lang/String;
    .end local v14           #canReshare:Ljava/lang/Boolean;
    .end local v21           #isPlusOned:Ljava/lang/Boolean;
    .end local v22           #isPublic:Ljava/lang/Boolean;
    .restart local v13       #builder:Landroid/app/Notification$Builder;
    :cond_393
    if-eqz v10, :cond_10b

    .line 557
    new-instance v50, Landroid/app/Notification$BigTextStyle;

    invoke-direct/range {v50 .. v50}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto/16 :goto_10b

    .line 583
    :cond_3ad
    const/16 v50, 0x1

    move/from16 v0, v50

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto/16 :goto_139

    .line 411
    :pswitch_data_3b6
    .packed-switch 0x1
        :pswitch_145
        :pswitch_149
        :pswitch_26e
        :pswitch_26e
        :pswitch_ac
        :pswitch_ac
    .end packed-switch
.end method

.method private static createSingleNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/app/Notification;
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_8

    .line 252
    :cond_7
    :goto_7
    return-object v2

    .line 221
    :cond_8
    const/4 v8, 0x2

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, typeString:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v4

    .line 227
    .local v4, type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    sget-object v8, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    if-eq v4, v8, :cond_7

    .line 231
    const/4 v8, 0x4

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 234
    .local v6, when:J
    new-instance v2, Landroid/app/Notification;

    const v8, 0x7f020181

    invoke-direct {v2, v8, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 237
    .local v2, notification:Landroid/app/Notification;
    if-eqz v5, :cond_34

    .line 238
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->hasRingtone(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 239
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 245
    :cond_34
    :goto_34
    const/4 v8, 0x3

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, contentText:Ljava/lang/CharSequence;
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidNotification;->newViewOneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 249
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, p0, v3, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 250
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/EsService;->getDeleteNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    goto :goto_7

    .line 241
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #contentText:Ljava/lang/CharSequence;
    :cond_47
    iget v8, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v2, Landroid/app/Notification;->defaults:I

    goto :goto_34
.end method

.method public static getRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .registers 6
    .parameter "context"

    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 888
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, defValue:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 893
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private static hasOnlyHangoutNotifications(Landroid/database/Cursor;)Z
    .registers 5
    .parameter "cursor"

    .prologue
    .line 263
    const/4 v0, 0x1

    .line 264
    .local v0, returnValue:Z
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 265
    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, typeString:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 268
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v1

    .line 270
    .local v1, type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    if-eq v1, v3, :cond_1

    .line 271
    const/4 v0, 0x0

    .line 276
    .end local v1           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .end local v2           #typeString:Ljava/lang/String;
    :cond_17
    return v0
.end method

.method public static hasRingtone(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 905
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 906
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, defValue:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 911
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

.method private static isRunningJellybeanOrLater()Z
    .registers 2

    .prologue
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static newRequestCode()I
    .registers 2

    .prologue
    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static newReshareActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "isPublic"

    .prologue
    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_16

    .line 823
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/Intents;->getReshareActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 831
    :cond_7
    :goto_7
    if-eqz v0, :cond_15

    .line 833
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 839
    :cond_15
    return-object v0

    .line 826
    :cond_16
    const-string v1, "AndroidNotification"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 827
    const-string v1, "AndroidNotification"

    const-string v2, "Can\'t reshare: activity ID was null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private static newResharePendingIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Landroid/app/PendingIntent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "activityId"
    .parameter "isPublic"

    .prologue
    .line 797
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/AndroidNotification;->newReshareActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 798
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 799
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 800
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->newRequestCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 805
    :goto_1e
    return-object v1

    .line 802
    :cond_1f
    const-string v1, "AndroidNotification"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 803
    const-string v1, "AndroidNotification"

    const-string v2, "reshare returning null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_2f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public static newViewNotificationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 31
    .parameter "context"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 671
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 672
    .local v6, typeString:Ljava/lang/String;
    if-nez v6, :cond_c

    .line 673
    const/16 v26, 0x0

    .line 784
    :cond_b
    :goto_b
    return-object v26

    .line 676
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 678
    .local v9, notificationId:Ljava/lang/String;
    const/16 v26, 0x0

    .line 681
    .local v26, intent:Landroid/content/Intent;
    const/16 v3, 0xc

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 683
    .local v5, eventId:Ljava/lang/String;
    const/16 v3, 0xd

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 685
    .local v7, creatorId:Ljava/lang/String;
    if-eqz v5, :cond_32

    if-eqz v7, :cond_32

    .line 686
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v9}, Lcom/google/android/apps/plus/phone/Intents;->getHostedEventIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    .line 690
    :cond_32
    if-nez v26, :cond_43

    .line 691
    invoke-static {v6}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v27

    .line 692
    .local v27, type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    sget-object v3, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    invoke-virtual/range {v27 .. v27}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_102

    .line 776
    .end local v27           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :cond_43
    :goto_43
    :pswitch_43
    if-eqz v26, :cond_b

    .line 778
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const/high16 v3, 0x1400

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_b

    .line 697
    .restart local v27       #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :pswitch_56
    const/16 v3, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 699
    .local v12, activityId:Ljava/lang/String;
    if-eqz v12, :cond_43

    .line 700
    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v13, v9

    move-object v14, v6

    invoke-static/range {v10 .. v15}, Lcom/google/android/apps/plus/phone/Intents;->getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v26

    goto :goto_43

    .line 713
    .end local v12           #activityId:Ljava/lang/String;
    :pswitch_6c
    const/4 v3, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v23

    .line 714
    .local v23, circleData:[B
    if-eqz v23, :cond_43

    .line 715
    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/plus/content/DbCircleActionData;->deserialize([B)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v25

    .line 716
    .local v25, data:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    if-eqz v25, :cond_43

    .line 717
    invoke-virtual/range {v25 .. v25}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaIdCount()I

    move-result v24

    .line 718
    .local v24, count:I
    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_94

    .line 719
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaId(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3, v9}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityByGaiaIdIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    goto :goto_43

    .line 721
    :cond_94
    const/4 v3, 0x1

    move/from16 v0, v24

    if-le v0, v3, :cond_43

    .line 722
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v9}, Lcom/google/android/apps/plus/phone/Intents;->getAddedToCircleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[BLjava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    goto :goto_43

    .line 732
    .end local v23           #circleData:[B
    .end local v24           #count:I
    .end local v25           #data:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    :pswitch_a4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/google/android/apps/plus/phone/Intents;->getInstantUploadAlbumIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    .line 733
    goto :goto_43

    .line 737
    :pswitch_ad
    const/16 v3, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 739
    .local v20, albumId:J
    const/4 v3, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 741
    .local v14, gaiaId:Ljava/lang/String;
    const/16 v3, 0x9

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 743
    .local v15, photoId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-eqz v3, :cond_43

    .line 745
    new-instance v13, Lcom/google/android/apps/plus/api/MediaRef;

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v13 .. v19}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 747
    .local v13, photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/Intents;->newPhotoViewActivityIntentBuilder(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v22

    .line 749
    .local v22, builder:Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setGaiaId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setAlbumId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setPhotoRef(Lcom/google/android/apps/plus/api/MediaRef;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setNotificationId(Ljava/lang/String;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    move-result-object v3

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->setForceLoadId(Ljava/lang/Long;)Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;

    .line 756
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/apps/plus/phone/Intents$PhotoViewIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v26

    .line 757
    goto/16 :goto_43

    .line 692
    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_43
        :pswitch_6c
        :pswitch_6c
        :pswitch_a4
        :pswitch_ad
        :pswitch_43
        :pswitch_43
    .end packed-switch
.end method

.method private static newViewOneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/app/PendingIntent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 648
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidNotification;->newViewNotificationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 649
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 650
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->newRequestCode()I

    move-result v2

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 656
    :goto_19
    return-object v2

    .line 654
    :cond_1a
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    .line 655
    .local v1, notifIntent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 656
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->newRequestCode()I

    move-result v2

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_19
.end method

.method public static shouldNotify(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 851
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 852
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 855
    .local v0, defValue:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 857
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method public static shouldVibrate(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 869
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 870
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f0c0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 873
    .local v0, defValue:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 875
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method public static showOutOfBoxRequiredNotification(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 102
    return-void
.end method

.method public static showUpgradeRequiredNotification(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 68
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 71
    .local v3, notificationManager:Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 72
    .local v5, when:J
    const v7, 0x7f080057

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, tickerText:Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Notification;

    const v7, 0x7f020181

    invoke-direct {v2, v7, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 77
    .local v2, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, intent:Landroid/content/Intent;
    const/high16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    const-string v7, "market://details?id=com.google.android.apps.plus"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    const/high16 v7, 0x1400

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->newRequestCode()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 87
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const v7, 0x7f080040

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, p0, v7, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 89
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 90
    iget v7, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v2, Landroid/app/Notification;->defaults:I

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":notifications:upgrade"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v3, v7, v8, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 94
    return-void
.end method

.method public static declared-synchronized update(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    .line 111
    const-class v4, Lcom/google/android/apps/plus/service/AndroidNotification;

    monitor-enter v4

    :try_start_3
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 113
    .local v1, notificationManager:Landroid/app/NotificationManager;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidNotification;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, notificationTag:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidNotification;->createNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/Notification;

    move-result-object v0

    .line 116
    .local v0, notification:Landroid/app/Notification;
    if-eqz v0, :cond_42

    .line 117
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 118
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 119
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 122
    const/4 v3, -0x1

    iput v3, v0, Landroid/app/Notification;->ledARGB:I

    .line 123
    const/16 v3, 0x1f4

    iput v3, v0, Landroid/app/Notification;->ledOnMS:I

    .line 124
    const/16 v3, 0x7d0

    iput v3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 126
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->shouldVibrate(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 127
    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 130
    :cond_3e
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_44

    .line 132
    :cond_42
    monitor-exit v4

    return-void

    .line 111
    .end local v0           #notification:Landroid/app/Notification;
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    .end local v2           #notificationTag:Ljava/lang/String;
    :catchall_44
    move-exception v3

    monitor-exit v4

    throw v3
.end method

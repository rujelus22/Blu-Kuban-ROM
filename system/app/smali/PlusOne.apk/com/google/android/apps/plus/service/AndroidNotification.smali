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
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 507
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
    .line 115
    const-class v3, Lcom/google/android/apps/plus/service/AndroidNotification;

    monitor-enter v3

    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidNotification;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, notificationTag:Ljava/lang/String;
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 118
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 119
    monitor-exit v3

    return-void

    .line 115
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    .end local v1           #notificationTag:Ljava/lang/String;
    :catchall_15
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static createCoalescedNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/database/Cursor;)Landroid/app/Notification;
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "unseenCount"
    .parameter "cursor"

    .prologue
    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 230
    .local v7, res:Landroid/content/res/Resources;
    const v14, 0x7f0e0010

    move/from16 v0, p2

    invoke-virtual {v7, v14, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    .line 232
    .local v9, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 233
    .local v12, when:J
    new-instance v6, Landroid/app/Notification;

    const v14, 0x7f0200c9

    invoke-direct {v6, v14, v9, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 236
    .local v6, notification:Landroid/app/Notification;
    move-object v3, v9

    .line 237
    .local v3, contentTitle:Ljava/lang/CharSequence;
    const v14, 0x7f0e0011

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move/from16 v0, p2

    invoke-virtual {v7, v14, v0, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, contentText:Ljava/lang/CharSequence;
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/phone/Intents;->getNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v5

    .line 242
    .local v5, intent:Landroid/content/Intent;
    const/high16 v14, 0x1400

    invoke-virtual {v5, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    const/4 v4, 0x0

    .line 245
    .local v4, hasHangoutNotif:Z
    :cond_40
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_60

    .line 246
    const/4 v14, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 248
    .local v11, typeString:Ljava/lang/String;
    if-eqz v11, :cond_5e

    .line 249
    invoke-static {v11}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v10

    .line 251
    .local v10, type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    sget-object v14, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_98

    .line 263
    .end local v10           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :cond_5e
    :goto_5e
    if-eqz v4, :cond_40

    .line 268
    .end local v11           #typeString:Ljava/lang/String;
    :cond_60
    if-eqz v4, :cond_83

    .line 269
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/HangoutRingtoneUtils;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 270
    .local v8, sound:Landroid/net/Uri;
    if-eqz v8, :cond_6a

    .line 271
    iput-object v8, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 281
    .end local v8           #sound:Landroid/net/Uri;
    :cond_6a
    :goto_6a
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->newRequestCode()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 283
    .local v1, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 284
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/service/EsService;->getDeleteNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/PendingIntent;

    move-result-object v14

    iput-object v14, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 286
    return-object v6

    .line 253
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .restart local v10       #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .restart local v11       #typeString:Ljava/lang/String;
    :pswitch_81
    const/4 v4, 0x1

    .line 254
    goto :goto_5e

    .line 274
    .end local v10           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .end local v11           #typeString:Ljava/lang/String;
    :cond_83
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->hasRingtone(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_90

    .line 275
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v14

    iput-object v14, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_6a

    .line 277
    :cond_90
    iget v14, v6, Landroid/app/Notification;->defaults:I

    or-int/lit8 v14, v14, 0x1

    iput v14, v6, Landroid/app/Notification;->defaults:I

    goto :goto_6a

    .line 251
    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_81
    .end packed-switch
.end method

.method private static createNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/Notification;
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->shouldNotify(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 159
    :cond_7
    :goto_7
    return-object v2

    .line 135
    :cond_8
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsNotificationData;->getNotificationsNotSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/database/Cursor;

    move-result-object v0

    .line 136
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_7

    .line 141
    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 142
    .local v1, unseenCount:I
    if-lez v1, :cond_1e

    .line 143
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsNotificationData;->markAllNotificationsAsSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 145
    packed-switch v1, :pswitch_data_2c

    .line 151
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/plus/service/AndroidNotification;->createCoalescedNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/database/Cursor;)Landroid/app/Notification;
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_27

    move-result-object v2

    .line 156
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 147
    :pswitch_22
    :try_start_22
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/AndroidNotification;->createSingleNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/app/Notification;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_27

    move-result-object v2

    goto :goto_1e

    .line 156
    .end local v1           #unseenCount:I
    :catchall_27
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 145
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method

.method private static createSingleNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/app/Notification;
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 172
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_8

    .line 173
    const/4 v2, 0x0

    .line 213
    :goto_7
    return-object v2

    .line 176
    :cond_8
    const/4 v9, 0x4

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 179
    .local v7, when:J
    new-instance v2, Landroid/app/Notification;

    const v9, 0x7f0200c9

    invoke-direct {v2, v9, v4, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 182
    .local v2, notification:Landroid/app/Notification;
    const/4 v9, 0x2

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, typeString:Ljava/lang/String;
    if-eqz v6, :cond_3b

    .line 185
    invoke-static {v6}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v5

    .line 186
    .local v5, type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    sget-object v9, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_5e

    .line 196
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->hasRingtone(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 197
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 206
    .end local v5           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :cond_3b
    :goto_3b
    const/4 v9, 0x3

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, contentText:Ljava/lang/CharSequence;
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidNotification;->newViewOneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 210
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v2, p0, v4, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 211
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/EsService;->getDeleteNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    goto :goto_7

    .line 188
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #contentText:Ljava/lang/CharSequence;
    .restart local v5       #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :pswitch_4e
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/HangoutRingtoneUtils;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    .line 189
    .local v3, sound:Landroid/net/Uri;
    if-eqz v3, :cond_3b

    .line 190
    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_3b

    .line 199
    .end local v3           #sound:Landroid/net/Uri;
    :cond_57
    iget v9, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v2, Landroid/app/Notification;->defaults:I

    goto :goto_3b

    .line 186
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4e
    .end packed-switch
.end method

.method private static getRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .registers 6
    .parameter "context"

    .prologue
    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 463
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, defValue:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 468
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
    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 481
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f07000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, defValue:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 486
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
    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static newViewNotificationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 40
    .parameter "context"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 321
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, typeString:Ljava/lang/String;
    if-nez v8, :cond_c

    .line 323
    const/16 v31, 0x0

    .line 414
    :cond_b
    :goto_b
    return-object v31

    .line 326
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, notificationId:Ljava/lang/String;
    const/16 v3, 0xb

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_43

    const/4 v7, 0x1

    .line 329
    .local v7, notificationRead:Z
    :goto_1f
    const/16 v31, 0x0

    .line 330
    .local v31, intent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v36

    .line 331
    .local v36, type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    sget-object v3, Lcom/google/android/apps/plus/service/AndroidNotification$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$CoalescedNotification$Type:[I

    invoke-virtual/range {v36 .. v36}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_f0

    .line 406
    :cond_30
    :goto_30
    :pswitch_30
    if-eqz v31, :cond_b

    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const/high16 v3, 0x1400

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_b

    .line 327
    .end local v7           #notificationRead:Z
    .end local v31           #intent:Landroid/content/Intent;
    .end local v36           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :cond_43
    const/4 v7, 0x0

    goto :goto_1f

    .line 336
    .restart local v7       #notificationRead:Z
    .restart local v31       #intent:Landroid/content/Intent;
    .restart local v36       #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :pswitch_45
    const/16 v3, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, activityId:Ljava/lang/String;
    if-eqz v5, :cond_30

    .line 339
    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v9}, Lcom/google/android/apps/plus/phone/Intents;->getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v31

    goto :goto_30

    .line 352
    .end local v5           #activityId:Ljava/lang/String;
    :pswitch_59
    const/4 v3, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v28

    .line 353
    .local v28, circleData:[B
    if-eqz v28, :cond_30

    .line 354
    invoke-static/range {v28 .. v28}, Lcom/google/android/apps/plus/content/DbCircleActionData;->deserialize([B)Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v30

    .line 355
    .local v30, data:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    if-eqz v30, :cond_30

    .line 356
    invoke-virtual/range {v30 .. v30}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaIdCount()I

    move-result v29

    .line 357
    .local v29, count:I
    const/4 v3, 0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_8b

    .line 358
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;->getGaiaId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v13, v6

    move v14, v7

    invoke-static/range {v9 .. v14}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v31

    goto :goto_30

    .line 361
    :cond_8b
    const/4 v3, 0x1

    move/from16 v0, v29

    if-le v0, v3, :cond_30

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2, v6, v7}, Lcom/google/android/apps/plus/phone/Intents;->getAddedToCircleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[BLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v31

    goto :goto_30

    .line 372
    .end local v28           #circleData:[B
    .end local v29           #count:I
    .end local v30           #data:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    :pswitch_9b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Lcom/google/android/apps/plus/phone/Intents;->getPhotosFromPhoneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Lcom/google/android/apps/plus/api/MediaRef;)Landroid/content/Intent;

    move-result-object v31

    .line 373
    goto :goto_30

    .line 377
    :pswitch_a5
    const/16 v3, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 379
    .local v26, albumId:J
    const/4 v3, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 381
    .local v32, ownerId:J
    const/16 v3, 0x9

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 382
    .local v34, photoId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v34, v3

    if-eqz v3, :cond_30

    .line 383
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, -0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v22, v6

    move/from16 v23, v7

    invoke-static/range {v9 .. v25}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;[Lcom/google/android/apps/plus/api/MediaRef;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Long;I)Landroid/content/Intent;

    move-result-object v31

    goto/16 :goto_30

    .line 331
    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_30
        :pswitch_59
        :pswitch_59
        :pswitch_9b
        :pswitch_a5
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method private static newViewOneIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/app/PendingIntent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 298
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/service/AndroidNotification;->newViewNotificationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 299
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 300
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->newRequestCode()I

    move-result v2

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 306
    :goto_19
    return-object v2

    .line 304
    :cond_1a
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v1

    .line 305
    .local v1, notifIntent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->newRequestCode()I

    move-result v2

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_19
.end method

.method private static shouldNotify(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 427
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 430
    .local v0, defValue:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 432
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method private static shouldVibrate(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 445
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 448
    .local v0, defValue:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 450
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method public static showOutOfBoxRequiredNotification(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 82
    return-void
.end method

.method public static showUpgradeRequiredNotification(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 49
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 52
    .local v3, notificationManager:Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 53
    .local v5, when:J
    const v7, 0x7f070045

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, tickerText:Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Notification;

    const v7, 0x7f0200c9

    invoke-direct {v2, v7, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 58
    .local v2, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "market://details?id=com.google.android.apps.plus"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    const/high16 v7, 0x1400

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidNotification;->newRequestCode()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 67
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const v7, 0x7f070033

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, p0, v7, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 69
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 70
    iget v7, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v2, Landroid/app/Notification;->defaults:I

    .line 72
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

    .line 74
    return-void
.end method

.method public static declared-synchronized update(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    .line 91
    const-class v4, Lcom/google/android/apps/plus/service/AndroidNotification;

    monitor-enter v4

    :try_start_3
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 93
    .local v1, notificationManager:Landroid/app/NotificationManager;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidNotification;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, notificationTag:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidNotification;->createNotification(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/app/Notification;

    move-result-object v0

    .line 96
    .local v0, notification:Landroid/app/Notification;
    if-eqz v0, :cond_31

    .line 97
    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 98
    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 100
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->shouldVibrate(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 101
    iget v3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 104
    :cond_2d
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_33

    .line 106
    :cond_31
    monitor-exit v4

    return-void

    .line 91
    .end local v0           #notification:Landroid/app/Notification;
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    .end local v2           #notificationTag:Ljava/lang/String;
    :catchall_33
    move-exception v3

    monitor-exit v4

    throw v3
.end method

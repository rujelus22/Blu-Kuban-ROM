.class public Lcom/android/calendar/alerts/AlertService;
.super Landroid/app/Service;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/AlertService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

.field private static final ALERT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private volatile mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "end"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    .line 90
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 455
    return-void
.end method

.method static dismissOldAlerts(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 132
    .local v1, currentTime:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v3, vals:Landroid/content/ContentValues;
    const-string v4, "state"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "end<? AND state=?"

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method private doTimeChanged()V
    .registers 5

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/calendar/alerts/AlertService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 381
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/calendar/alerts/AlertService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .local v2, service:Ljava/lang/Object;
    move-object v1, v2

    .line 382
    check-cast v1, Landroid/app/AlarmManager;

    .line 384
    .local v1, manager:Landroid/app/AlarmManager;
    invoke-static {v0, p0, v1}, Lcom/android/calendar/alerts/AlertService;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 385
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 386
    return-void
.end method

.method private static postNotification(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;IZZJZ)V
    .registers 28
    .parameter "context"
    .parameter "prefs"
    .parameter "eventName"
    .parameter "location"
    .parameter "numReminders"
    .parameter "quietUpdate"
    .parameter "highPriority"
    .parameter "startMillis"
    .parameter "allDay"

    .prologue
    .line 312
    const-string v1, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 315
    .local v10, nm:Landroid/app/NotificationManager;
    if-nez p4, :cond_11

    .line 316
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 377
    :goto_10
    return-void

    :cond_11
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move/from16 v8, p9

    .line 320
    invoke-static/range {v1 .. v8}, Lcom/android/calendar/alerts/AlertReceiver;->makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZJZ)Landroid/app/Notification;

    move-result-object v11

    .line 322
    .local v11, notification:Landroid/app/Notification;
    iget v1, v11, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v11, Landroid/app/Notification;->defaults:I

    .line 325
    if-nez p5, :cond_a5

    .line 327
    move-object/from16 v0, p2

    iput-object v0, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 328
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 340
    :cond_52
    const-string v1, "preferences_alerts_vibrateWhen"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 343
    const-string v1, "preferences_alerts_vibrateWhen"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 356
    .local v17, vibrateWhen:Ljava/lang/String;
    :goto_65
    const-string v1, "always"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 357
    .local v15, vibrateAlways:Z
    const-string v1, "silent"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 358
    .local v16, vibrateSilent:Z
    const-string v1, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    .line 360
    .local v9, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v9}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_de

    const/4 v12, 0x1

    .line 364
    .local v12, nowSilent:Z
    :goto_87
    if-nez v15, :cond_8d

    if-eqz v16, :cond_93

    if-eqz v12, :cond_93

    .line 365
    :cond_8d
    iget v1, v11, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v11, Landroid/app/Notification;->defaults:I

    .line 370
    :cond_93
    const-string v1, "preferences_alerts_ringtone"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 372
    .local v13, reminderRingtone:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e0

    const/4 v1, 0x0

    :goto_a3
    iput-object v1, v11, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 376
    .end local v9           #audioManager:Landroid/media/AudioManager;
    .end local v12           #nowSilent:Z
    .end local v13           #reminderRingtone:Ljava/lang/String;
    .end local v15           #vibrateAlways:Z
    .end local v16           #vibrateSilent:Z
    .end local v17           #vibrateWhen:Ljava/lang/String;
    :cond_a5
    const/4 v1, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_10

    .line 345
    :cond_ab
    const-string v1, "preferences_alerts_vibrate"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 347
    const-string v1, "preferences_alerts_vibrate"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 349
    .local v14, vibrate:Z
    if-eqz v14, :cond_ca

    const v1, 0x7f0c007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 352
    .restart local v17       #vibrateWhen:Ljava/lang/String;
    :goto_c9
    goto :goto_65

    .line 349
    .end local v17           #vibrateWhen:Ljava/lang/String;
    :cond_ca
    const v1, 0x7f0c007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_c9

    .line 354
    .end local v14           #vibrate:Z
    :cond_d4
    const v1, 0x7f0c007b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #vibrateWhen:Ljava/lang/String;
    goto :goto_65

    .line 360
    .restart local v9       #audioManager:Landroid/media/AudioManager;
    .restart local v15       #vibrateAlways:Z
    .restart local v16       #vibrateSilent:Z
    :cond_de
    const/4 v12, 0x0

    goto :goto_87

    .line 372
    .restart local v12       #nowSilent:Z
    .restart local v13       #reminderRingtone:Ljava/lang/String;
    :cond_e0
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_a3
.end method

.method public static final rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V
    .registers 20
    .parameter "cr"
    .parameter "context"
    .parameter "manager"

    .prologue
    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 418
    .local v15, now:J
    const-wide/32 v2, 0x5265c00

    sub-long v10, v15, v2

    .line 419
    .local v10, ancient:J
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "alarmTime"

    aput-object v3, v4, v2

    .line 425
    .local v4, projection:[Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "alarmTime ASC"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 429
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_38

    .line 453
    :goto_37
    return-void

    .line 438
    :cond_38
    const-wide/16 v8, -0x1

    .line 440
    .local v8, alarmTime:J
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 441
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 442
    .local v13, newAlarmTime:J
    cmp-long v2, v8, v13

    if-eqz v2, :cond_3a

    .line 446
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v13, v14}, Lcom/android/calendar/alerts/AlertActivity;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_56

    .line 447
    move-wide v8, v13

    goto :goto_3a

    .line 451
    .end local v13           #newAlarmTime:J
    :cond_52
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_37

    :catchall_56
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method static updateAlertNotification(Landroid/content/Context;)Z
    .registers 48
    .parameter "context"

    .prologue
    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 141
    .local v3, cr:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 143
    .local v23, currentTime:J
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v41

    .line 145
    .local v41, prefs:Landroid/content/SharedPreferences;
    const-string v4, "preferences_alerts"

    const/4 v5, 0x1

    move-object/from16 v0, v41

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 146
    .local v26, doAlert:Z
    const-string v4, "preferences_alerts_popup"

    const/4 v5, 0x0

    move-object/from16 v0, v41

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 148
    .local v27, doPopup:Z
    if-nez v26, :cond_2f

    .line 155
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/NotificationManager;

    .line 157
    .local v38, nm:Landroid/app/NotificationManager;
    invoke-virtual/range {v38 .. v38}, Landroid/app/NotificationManager;->cancelAll()V

    .line 158
    const/4 v4, 0x1

    .line 300
    .end local v38           #nm:Landroid/app/NotificationManager;
    :goto_2e
    return v4

    .line 161
    :cond_2f
    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/calendar/alerts/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "(state=? OR state=?) AND alarmTime<="

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/calendar/alerts/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    const-string v8, "begin DESC, end DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 165
    .local v16, alertCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_5a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_71

    .line 166
    :cond_5a
    if-eqz v16, :cond_5f

    .line 167
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_5f
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/NotificationManager;

    .line 173
    .restart local v38       #nm:Landroid/app/NotificationManager;
    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 174
    const/4 v4, 0x0

    goto :goto_2e

    .line 181
    .end local v38           #nm:Landroid/app/NotificationManager;
    :cond_71
    const/4 v6, 0x0

    .line 182
    .local v6, notificationEventName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 183
    .local v7, notificationEventLocation:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 184
    .local v11, notificationEventBegin:J
    const/16 v39, 0x0

    .line 185
    .local v39, notificationEventStatus:I
    const/4 v13, 0x1

    .line 186
    .local v13, notificationEventAllDay:Z
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v32, eventIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 188
    .local v8, numReminders:I
    const/16 v40, 0x0

    .line 190
    .local v40, numFired:I
    :cond_80
    :goto_80
    :try_start_80
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_179

    .line 191
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 192
    .local v17, alertId:J
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 193
    .local v30, eventId:J
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 194
    .local v35, minutes:I
    const/4 v4, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 195
    .local v33, eventName:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 196
    .local v34, location:Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 197
    .local v43, status:I
    const/4 v4, 0x2

    move/from16 v0, v43

    if-ne v0, v4, :cond_168

    const/16 v25, 0x1

    .line 198
    .local v25, declined:Z
    :goto_b8
    const/16 v4, 0x9

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 199
    .local v21, beginTime:J
    const/16 v4, 0xa

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 200
    .local v28, endTime:J
    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 202
    .local v19, alertUri:Landroid/net/Uri;
    const/4 v4, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 203
    .local v14, alarmTime:J
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 204
    .local v42, state:I
    const/4 v4, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_16c

    const/16 v20, 0x1

    .line 213
    .local v20, allDay:Z
    :goto_e9
    new-instance v44, Landroid/content/ContentValues;

    invoke-direct/range {v44 .. v44}, Landroid/content/ContentValues;-><init>()V

    .line 214
    .local v44, values:Landroid/content/ContentValues;
    const/16 v36, -0x1

    .line 224
    .local v36, newState:I
    if-nez v25, :cond_170

    .line 226
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_104

    .line 227
    add-int/lit8 v8, v8, 0x1

    .line 230
    :cond_104
    if-nez v42, :cond_115

    .line 231
    const/16 v36, 0x1

    .line 232
    add-int/lit8 v40, v40, 0x1

    .line 237
    const-string v4, "receivedTime"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    :cond_115
    :goto_115
    const/4 v4, -0x1

    move/from16 v0, v36

    if-eq v0, v4, :cond_127

    .line 245
    const-string v4, "state"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    move/from16 v42, v36

    .line 249
    :cond_127
    const/4 v4, 0x1

    move/from16 v0, v42

    if-ne v0, v4, :cond_137

    .line 252
    const-string v4, "notifyTime"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    :cond_137
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_146

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_146
    .catchall {:try_start_80 .. :try_end_146} :catchall_190

    .line 258
    :cond_146
    const/4 v4, 0x1

    move/from16 v0, v42

    if-ne v0, v4, :cond_80

    .line 265
    packed-switch v43, :pswitch_data_19c

    .line 273
    :pswitch_14e
    const/16 v37, 0x0

    .line 278
    .local v37, newStatus:I
    :goto_150
    if-eqz v6, :cond_15c

    cmp-long v4, v11, v21

    if-gtz v4, :cond_80

    move/from16 v0, v39

    move/from16 v1, v37

    if-ge v0, v1, :cond_80

    .line 281
    :cond_15c
    move-object/from16 v6, v33

    .line 282
    move-object/from16 v7, v34

    .line 283
    move-wide/from16 v11, v21

    .line 284
    move/from16 v39, v37

    .line 285
    move/from16 v13, v20

    goto/16 :goto_80

    .line 197
    .end local v14           #alarmTime:J
    .end local v19           #alertUri:Landroid/net/Uri;
    .end local v20           #allDay:Z
    .end local v21           #beginTime:J
    .end local v25           #declined:Z
    .end local v28           #endTime:J
    .end local v36           #newState:I
    .end local v37           #newStatus:I
    .end local v42           #state:I
    .end local v44           #values:Landroid/content/ContentValues;
    :cond_168
    const/16 v25, 0x0

    goto/16 :goto_b8

    .line 204
    .restart local v14       #alarmTime:J
    .restart local v19       #alertUri:Landroid/net/Uri;
    .restart local v21       #beginTime:J
    .restart local v25       #declined:Z
    .restart local v28       #endTime:J
    .restart local v42       #state:I
    :cond_16c
    const/16 v20, 0x0

    goto/16 :goto_e9

    .line 240
    .restart local v20       #allDay:Z
    .restart local v36       #newState:I
    .restart local v44       #values:Landroid/content/ContentValues;
    :cond_170
    const/16 v36, 0x2

    goto :goto_115

    .line 267
    :pswitch_173
    const/16 v37, 0x2

    .line 268
    .restart local v37       #newStatus:I
    goto :goto_150

    .line 270
    .end local v37           #newStatus:I
    :pswitch_176
    const/16 v37, 0x1

    .line 271
    .restart local v37       #newStatus:I
    goto :goto_150

    .line 289
    .end local v14           #alarmTime:J
    .end local v17           #alertId:J
    .end local v19           #alertUri:Landroid/net/Uri;
    .end local v20           #allDay:Z
    .end local v21           #beginTime:J
    .end local v25           #declined:Z
    .end local v28           #endTime:J
    .end local v30           #eventId:J
    .end local v33           #eventName:Ljava/lang/String;
    .end local v34           #location:Ljava/lang/String;
    .end local v35           #minutes:I
    .end local v36           #newState:I
    .end local v37           #newStatus:I
    .end local v42           #state:I
    .end local v43           #status:I
    .end local v44           #values:Landroid/content/ContentValues;
    :cond_179
    if-eqz v16, :cond_17e

    .line 290
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_17e
    if-nez v40, :cond_197

    const/4 v9, 0x1

    .line 295
    .local v9, quietUpdate:Z
    :goto_181
    if-lez v40, :cond_199

    if-eqz v27, :cond_199

    const/4 v10, 0x1

    .local v10, highPriority:Z
    :goto_186
    move-object/from16 v4, p0

    move-object/from16 v5, v41

    .line 296
    invoke-static/range {v4 .. v13}, Lcom/android/calendar/alerts/AlertService;->postNotification(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;IZZJZ)V

    .line 300
    const/4 v4, 0x1

    goto/16 :goto_2e

    .line 289
    .end local v9           #quietUpdate:Z
    .end local v10           #highPriority:Z
    :catchall_190
    move-exception v4

    if-eqz v16, :cond_196

    .line 290
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_196
    throw v4

    .line 294
    :cond_197
    const/4 v9, 0x0

    goto :goto_181

    .line 295
    .restart local v9       #quietUpdate:Z
    :cond_199
    const/4 v10, 0x0

    goto :goto_186

    .line 265
    nop

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_173
        :pswitch_14e
        :pswitch_14e
        :pswitch_176
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 497
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 471
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 473
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 475
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    .line 476
    new-instance v1, Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    iget-object v2, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/alerts/AlertService$ServiceHandler;-><init>(Lcom/android/calendar/alerts/AlertService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    .line 477
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 493
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 481
    if-eqz p1, :cond_15

    .line 482
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 483
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 484
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 485
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService;->mServiceHandler:Lcom/android/calendar/alerts/AlertService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/calendar/alerts/AlertService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    .end local v0           #msg:Landroid/os/Message;
    :cond_15
    const/4 v1, 0x3

    return v1
.end method

.method processMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 101
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 105
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 113
    :cond_1a
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertService;->doTimeChanged()V

    .line 127
    :goto_1d
    return-void

    .line 117
    :cond_1e
    const-string v2, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "removeOldReminders"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 120
    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 123
    :cond_4f
    const-string v2, "removeOldReminders"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 124
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->dismissOldAlerts(Landroid/content/Context;)V

    .line 126
    :cond_5a
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    goto :goto_1d
.end method

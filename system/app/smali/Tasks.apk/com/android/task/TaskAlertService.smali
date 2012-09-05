.class public Lcom/android/task/TaskAlertService;
.super Landroid/app/Service;
.source "TaskAlertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/TaskAlertService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTIVE_ALERTS_SELECTION:Ljava/lang/String;

.field private static final ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

.field private static final ALERT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private volatile mServiceHandler:Lcom/android/task/TaskAlertService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "task_id"

    aput-object v1, v0, v4

    const-string v1, "reminder_time"

    aput-object v1, v0, v6

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "start_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "due_date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accountkey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "reminder_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/task/TaskAlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/task/TaskAlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/task/TaskAlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "reminder_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskAlertService;->ACTIVE_ALERTS_SELECTION:Ljava/lang/String;

    .line 92
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/task/TaskAlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 301
    return-void
.end method

.method private doTimeChanged()V
    .registers 1

    .prologue
    .line 298
    invoke-static {p0}, Lcom/android/task/TaskAlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 299
    return-void
.end method

.method private static postNotification(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 16
    .parameter "context"
    .parameter "eventName"
    .parameter "numReminders"
    .parameter "quietUpdate"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 242
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 244
    .local v4, nm:Landroid/app/NotificationManager;
    if-nez p2, :cond_10

    .line 245
    invoke-virtual {v4, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 291
    :goto_f
    return-void

    .line 249
    :cond_10
    invoke-static {p0, p1, p2}, Lcom/android/task/TaskAlertReceiver;->makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v5

    .line 251
    .local v5, notification:Landroid/app/Notification;
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 252
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-ne v11, v9, :cond_65

    move v6, v9

    .line 253
    .local v6, nowSilent:Z
    :goto_23
    if-eqz v6, :cond_2b

    .line 254
    iget v11, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v5, Landroid/app/Notification;->defaults:I

    .line 260
    :cond_2b
    if-nez p3, :cond_61

    .line 262
    iput-object p1, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 264
    const/4 v7, 0x1

    .line 265
    .local v7, ringtoneNo:I
    new-instance v3, Landroid/media/RingtoneManager;

    invoke-direct {v3, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 266
    .local v3, manager:Landroid/media/RingtoneManager;
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Landroid/media/RingtoneManager;->setType(I)V

    .line 267
    invoke-virtual {v3}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 268
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_56

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, i:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 272
    :goto_43
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_56

    .line 273
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 274
    .local v8, title:Ljava/lang/String;
    const-string v11, "On time"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_67

    .line 275
    move v7, v2

    .line 283
    .end local v2           #i:I
    .end local v8           #title:Ljava/lang/String;
    :cond_56
    invoke-virtual {v3, v7}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 285
    if-eqz v1, :cond_61

    .line 286
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 290
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #manager:Landroid/media/RingtoneManager;
    .end local v7           #ringtoneNo:I
    :cond_61
    invoke-virtual {v4, v10, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_f

    .end local v6           #nowSilent:Z
    :cond_65
    move v6, v10

    .line 252
    goto :goto_23

    .line 278
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v2       #i:I
    .restart local v3       #manager:Landroid/media/RingtoneManager;
    .restart local v6       #nowSilent:Z
    .restart local v7       #ringtoneNo:I
    .restart local v8       #title:Ljava/lang/String;
    :cond_67
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_43
.end method

.method static updateAlertNotification(Landroid/content/Context;)Z
    .registers 29
    .parameter "context"

    .prologue
    .line 151
    const-string v4, "AlertService"

    const-string v5, "updateAlertNotification"

    invoke-static {v4, v5}, Lcom/android/task/Utils$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 155
    .local v3, cr:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 157
    .local v15, currentTime:J
    sget-object v4, Lcom/android/task/Tasks$TaskReminderAlerts;->REMINDER_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/task/TaskAlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/task/TaskAlertService;->ACTIVE_ALERTS_SELECTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/task/TaskAlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    const-string v8, "start_date DESC, due_date DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 160
    .local v9, alertCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_37

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_4e

    .line 161
    :cond_37
    if-eqz v9, :cond_3c

    .line 162
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_3c
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/NotificationManager;

    .line 168
    .local v22, nm:Landroid/app/NotificationManager;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 169
    const/4 v4, 0x0

    .line 233
    .end local v22           #nm:Landroid/app/NotificationManager;
    :goto_4d
    return v4

    .line 175
    :cond_4e
    const/16 v23, 0x0

    .line 177
    .local v23, notificationEventName:Ljava/lang/String;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v19, eventIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/16 v25, 0x0

    .line 179
    .local v25, numReminders:I
    const/16 v24, 0x0

    .line 181
    .local v24, numFired:I
    :cond_59
    :goto_59
    :try_start_59
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 182
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 183
    .local v10, alertId:J
    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 184
    .local v20, eventName:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 185
    .local v13, beginTime:J
    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 186
    .local v26, state:I
    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 188
    .local v17, eventId:J
    sget-object v4, Lcom/android/task/Tasks$TaskReminderAlerts;->REMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 189
    .local v12, alertUri:Landroid/net/Uri;
    if-nez v23, :cond_82

    .line 190
    move-object/from16 v23, v20

    .line 192
    :cond_82
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v27, values:Landroid/content/ContentValues;
    const/16 v21, -0x1

    .line 195
    .local v21, newState:I
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_eb

    .line 196
    add-int/lit8 v25, v25, 0x1

    .line 197
    if-nez v26, :cond_af

    .line 198
    const/16 v21, 0x1

    .line 199
    add-int/lit8 v24, v24, 0x1

    .line 200
    sget-object v4, Lcom/android/task/TaskAlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    :cond_af
    :goto_af
    const/4 v4, -0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_c4

    .line 207
    sget-object v4, Lcom/android/task/TaskAlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    move/from16 v26, v21

    .line 211
    :cond_c4
    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_d7

    .line 214
    sget-object v4, Lcom/android/task/TaskAlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    :cond_d7
    invoke-virtual/range {v27 .. v27}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_e4

    .line 219
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v3, v12, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_59 .. :try_end_e4} :catchall_102

    .line 221
    :cond_e4
    const/4 v4, 0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_59

    goto/16 :goto_59

    .line 203
    :cond_eb
    const/16 v21, 0x2

    goto :goto_af

    .line 226
    .end local v10           #alertId:J
    .end local v12           #alertUri:Landroid/net/Uri;
    .end local v13           #beginTime:J
    .end local v17           #eventId:J
    .end local v20           #eventName:Ljava/lang/String;
    .end local v21           #newState:I
    .end local v26           #state:I
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_ee
    if-eqz v9, :cond_f3

    .line 227
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_f3
    if-nez v24, :cond_109

    const/4 v4, 0x1

    :goto_f6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-static {v0, v1, v2, v4}, Lcom/android/task/TaskAlertService;->postNotification(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 233
    const/4 v4, 0x1

    goto/16 :goto_4d

    .line 226
    :catchall_102
    move-exception v4

    if-eqz v9, :cond_108

    .line 227
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_108
    throw v4

    .line 231
    :cond_109
    const/4 v4, 0x0

    goto :goto_f6
.end method

.method static updateAlertSnoozeAll(Landroid/content/Context;)Z
    .registers 16
    .parameter "context"

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    const/4 v13, 0x0

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 124
    .local v10, mcursor:Landroid/database/Cursor;
    const-wide/16 v6, 0x0

    .line 125
    .local v6, alarmTime:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/android/task/Tasks$TaskReminderAlerts;->REMINDER_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 128
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v14, :cond_b6

    .line 129
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reminder COunt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 132
    .local v8, am:Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.android.task.ACTION_REFERESH_ALARM"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v9, in:Landroid/content/Intent;
    :cond_48
    const-string v1, "reminder_time"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 136
    const-string v1, "content://tasks/tasks"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 137
    const-string v1, "_id"

    const-string v2, "task_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v9, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 138
    invoke-static {p0, v13, v9, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 139
    .local v11, pi:Landroid/app/PendingIntent;
    invoke-virtual {v8, v13, v6, v7, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 140
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 141
    .local v12, t:Landroid/text/format/Time;
    invoke-virtual {v12, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 142
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting Alarm for Time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12, v13, v13, p0}, Lcom/android/task/Utils;->getDateString(Landroid/text/format/Time;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for Task id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "task_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 145
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 147
    .end local v8           #am:Landroid/app/AlarmManager;
    .end local v9           #in:Landroid/content/Intent;
    .end local v11           #pi:Landroid/app/PendingIntent;
    .end local v12           #t:Landroid/text/format/Time;
    :cond_b6
    return v14
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 318
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 319
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 321
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/task/TaskAlertService;->mServiceLooper:Landroid/os/Looper;

    .line 322
    new-instance v1, Lcom/android/task/TaskAlertService$ServiceHandler;

    iget-object v2, p0, Lcom/android/task/TaskAlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/task/TaskAlertService$ServiceHandler;-><init>(Lcom/android/task/TaskAlertService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/task/TaskAlertService;->mServiceHandler:Lcom/android/task/TaskAlertService$ServiceHandler;

    .line 323
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/task/TaskAlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 339
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 327
    if-eqz p1, :cond_15

    .line 328
    iget-object v1, p0, Lcom/android/task/TaskAlertService;->mServiceHandler:Lcom/android/task/TaskAlertService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/task/TaskAlertService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 329
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 330
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    iget-object v1, p0, Lcom/android/task/TaskAlertService;->mServiceHandler:Lcom/android/task/TaskAlertService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/task/TaskAlertService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 333
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

    .line 107
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 108
    :cond_1a
    invoke-direct {p0}, Lcom/android/task/TaskAlertService;->doTimeChanged()V

    .line 118
    :goto_1d
    return-void

    .line 112
    :cond_1e
    const-string v2, "com.android.task.ACTION_REFERESH_ALARM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 113
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

    .line 117
    :cond_47
    invoke-static {p0}, Lcom/android/task/TaskAlertService;->updateAlertNotification(Landroid/content/Context;)Z

    goto :goto_1d
.end method

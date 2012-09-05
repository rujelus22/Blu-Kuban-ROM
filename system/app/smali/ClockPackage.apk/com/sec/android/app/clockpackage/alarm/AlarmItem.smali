.class public final Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
.super Ljava/lang/Object;
.source "AlarmItem.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field public activate:I

.field public alarmAlertTime:J

.field public alarmName:Ljava/lang/String;

.field public alarmSoundTone:I

.field public alarmSoundType:I

.field public alarmTime:I

.field public alarmVolume:I

.field public createTime:J

.field public dailyBriefing:Z

.field public id:I

.field public notificationType:I

.field public repeatType:I

.field public snoozeActivate:Z

.field public snoozeDoneCount:I

.field public snoozeDuration:I

.field public snoozeRepeat:I

.field public soundUri:Ljava/lang/String;

.field public subdueActivate:Z

.field public subdueDuration:I

.field public subdueTone:I

.field public subdueUri:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    .line 22
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 23
    iput-wide v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 24
    iput-wide v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 25
    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    .line 26
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 27
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    .line 28
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 29
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 31
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 32
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 34
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    .line 35
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    .line 36
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 37
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    .line 42
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    return-void
.end method

.method private calculateAlertTime()V
    .registers 23

    .prologue
    .line 320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 321
    .local v5, c:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 323
    .local v6, currentMillis:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_f40

    .line 1180
    :cond_11
    :goto_11
    :pswitch_11
    return-void

    .line 326
    :pswitch_12
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 327
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    goto :goto_11

    .line 332
    :pswitch_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7b2

    .line 334
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_60c

    .line 336
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_1ab

    .line 340
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 341
    .local v10, newAlarmTime:J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .local v9, i:I
    :goto_45
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    if-ge v9, v0, :cond_ca

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 343
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    move/from16 v19, v0

    aget v18, v18, v19

    const v19, 0xea60

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v10, v10, v18

    .line 344
    cmp-long v18, v10, v6

    if-lez v18, :cond_c6

    .line 346
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 347
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 349
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b0

    .line 351
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_a0
    :goto_a0
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v18, "AlarmItem"

    const-string v19, "found some next snooze valid. set new snooze 1"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 353
    :cond_b0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a0

    .line 354
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 341
    :cond_c6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_45

    .line 364
    :cond_ca
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 366
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 367
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 368
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 370
    .local v12, nextSmartAlert:J
    :goto_102
    cmp-long v18, v6, v12

    if-lez v18, :cond_13a

    .line 371
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 372
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 373
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_102

    .line 376
    :cond_13a
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 378
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    if-nez v18, :cond_161

    .line 380
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v18, "AlarmItem"

    const-string v19, "alarm done"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 386
    :cond_161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17f

    .line 387
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_176
    :goto_176
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 389
    :cond_17f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_195

    .line 390
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_176

    .line 392
    :cond_195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_176

    .line 393
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_176

    .line 404
    .end local v9           #i:I
    .end local v10           #newAlarmTime:J
    .end local v12           #nextSmartAlert:J
    :cond_1ab
    const-wide/16 v16, 0x0

    .line 405
    .local v16, subdueMillis:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    if-nez v18, :cond_1d1

    .line 406
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v16, v18, v20

    .line 409
    :cond_1d1
    cmp-long v18, v16, v6

    if-lez v18, :cond_222

    .line 411
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 412
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 414
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20c

    .line 416
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_1fc
    :goto_1fc
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v18, "AlarmItem"

    const-string v19, "set new smart alarm as selected"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 418
    :cond_20c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1fc

    .line 419
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fc

    .line 427
    :cond_222
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_4bf

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3b0

    .line 430
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 431
    .restart local v10       #newAlarmTime:J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .restart local v9       #i:I
    :goto_24a
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    if-gt v9, v0, :cond_2cf

    .line 432
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 433
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    move/from16 v19, v0

    aget v18, v18, v19

    const v19, 0xea60

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v10, v10, v18

    .line 434
    cmp-long v18, v10, v6

    if-lez v18, :cond_2cb

    .line 437
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 438
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 440
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 441
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2b5

    .line 442
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_2a5
    :goto_2a5
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v18, "AlarmItem"

    const-string v19, "found some next snooze valid. set new snooze 2"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 444
    :cond_2b5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2a5

    .line 445
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a5

    .line 431
    :cond_2cb
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_24a

    .line 455
    :cond_2cf
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 471
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 472
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 473
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 475
    .restart local v12       #nextSmartAlert:J
    :goto_307
    cmp-long v18, v6, v12

    if-lez v18, :cond_33f

    .line 476
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 477
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 478
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_307

    .line 481
    :cond_33f
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 483
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 484
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    if-nez v18, :cond_366

    .line 485
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v18, "AlarmItem"

    const-string v19, "alarm done"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 491
    :cond_366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_384

    .line 492
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_37b
    :goto_37b
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 494
    :cond_384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39a

    .line 495
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37b

    .line 497
    :cond_39a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_37b

    .line 498
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37b

    .line 510
    .end local v9           #i:I
    .end local v10           #newAlarmTime:J
    .end local v12           #nextSmartAlert:J
    :cond_3b0
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xf

    add-int/lit8 v18, v18, -0x1

    if-nez v18, :cond_3e0

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_448

    .line 515
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 516
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 536
    :cond_3e0
    :goto_3e0
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 537
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 538
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 540
    .restart local v12       #nextSmartAlert:J
    :goto_410
    cmp-long v18, v6, v12

    if-lez v18, :cond_44e

    .line 541
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 542
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 543
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_410

    .line 518
    .end local v12           #nextSmartAlert:J
    :cond_448
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    goto :goto_3e0

    .line 546
    .restart local v12       #nextSmartAlert:J
    :cond_44e
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 548
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 549
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    if-nez v18, :cond_475

    .line 550
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v18, "AlarmItem"

    const-string v19, "alarm done"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 556
    :cond_475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_493

    .line 557
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_48a
    :goto_48a
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 559
    :cond_493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4a9

    .line 560
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48a

    .line 562
    :cond_4a9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_48a

    .line 563
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48a

    .line 576
    .end local v12           #nextSmartAlert:J
    :cond_4bf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5b4

    .line 578
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xf

    add-int/lit8 v18, v18, -0x1

    if-nez v18, :cond_525

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_520

    .line 580
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 581
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 582
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 583
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 584
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v18, "AlarmItem"

    const-string v19, "snooze done. inactive alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 593
    :cond_520
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 615
    :cond_525
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 616
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 617
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 618
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 620
    .restart local v12       #nextSmartAlert:J
    :goto_55d
    cmp-long v18, v6, v12

    if-lez v18, :cond_595

    .line 621
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 622
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 623
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_55d

    .line 626
    :cond_595
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 628
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 629
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v18, "AlarmItem"

    const-string v19, "snooze done. set next smart alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 638
    .end local v12           #nextSmartAlert:J
    :cond_5b4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    if-lez v18, :cond_5ed

    .line 639
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 643
    :goto_5c4
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 644
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5f6

    .line 645
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_5dd
    :goto_5dd
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v18, "AlarmItem"

    const-string v19, "set new alarm as selected"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 641
    :cond_5ed
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    goto :goto_5c4

    .line 647
    :cond_5f6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5dd

    .line 648
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5dd

    .line 660
    .end local v16           #subdueMillis:J
    :cond_60c
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 661
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v16, v18, v20

    .line 665
    .restart local v16       #subdueMillis:J
    cmp-long v18, v16, v6

    if-lez v18, :cond_681

    .line 667
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 668
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 670
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 671
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_66b

    .line 672
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_65b
    :goto_65b
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v18, "AlarmItem"

    const-string v19, "set new smart alarm as selected"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 674
    :cond_66b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_65b

    .line 675
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65b

    .line 683
    :cond_681
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xf

    add-int/lit8 v18, v18, -0x1

    if-nez v18, :cond_6d1

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6cc

    .line 685
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 686
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 687
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 689
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 690
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v18, "AlarmItem"

    const-string v19, "snooze end up. set new smart alarm at next day. (2)"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 699
    :cond_6cc
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 702
    :cond_6d1
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 715
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 716
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 717
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 719
    .restart local v12       #nextSmartAlert:J
    :goto_709
    cmp-long v18, v6, v12

    if-lez v18, :cond_741

    .line 720
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 721
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 722
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_709

    .line 725
    :cond_741
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 727
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    if-nez v18, :cond_768

    .line 729
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string v18, "AlarmItem"

    const-string v19, "alarm done"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 735
    :cond_768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_786

    .line 736
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_77d
    :goto_77d
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 738
    :cond_786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_79c

    .line 739
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77d

    .line 741
    :cond_79c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_77d

    .line 742
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77d

    .line 755
    .end local v12           #nextSmartAlert:J
    .end local v16           #subdueMillis:J
    :cond_7b2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c01

    .line 757
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8de

    .line 758
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xe

    if-nez v18, :cond_842

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_83d

    .line 760
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 761
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 762
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 764
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_827

    .line 766
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_817
    :goto_817
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string v18, "AlarmItem"

    const-string v19, "all snooze had finished. clear alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 768
    :cond_827
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_817

    .line 769
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_817

    .line 778
    :cond_83d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 781
    :cond_842
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertDayOffset(Ljava/util/Calendar;)I

    move-result v8

    .line 782
    .local v8, dayOffset:I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 787
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 788
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 790
    :goto_864
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_886

    .line 791
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 794
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_864

    .line 797
    :cond_886
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 798
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8c8

    .line 799
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_89f
    :goto_89f
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v18, "AlarmItem"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "new alarm set as normal alarm with snooze on next ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") day"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 801
    :cond_8c8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_89f

    .line 802
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89f

    .line 813
    .end local v8           #dayOffset:I
    :cond_8de
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a7e

    .line 814
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-lez v18, :cond_93c

    .line 815
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    if-lez v18, :cond_921

    .line 816
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 818
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 819
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const-string v18, "AlarmItem"

    const-string v19, "active alarm changed as snooze"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 828
    :cond_921
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 829
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v18, "AlarmItem"

    const-string v19, "active alarm set"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 838
    :cond_93c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .restart local v9       #i:I
    :goto_940
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    if-ge v9, v0, :cond_988

    .line 839
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 840
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 841
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-lez v18, :cond_9b5

    .line 845
    :cond_988
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-lez v18, :cond_9b8

    .line 846
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 848
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 849
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v18, "AlarmItem"

    const-string v19, "found next snooze."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 838
    :cond_9b5
    add-int/lit8 v9, v9, 0x1

    goto :goto_940

    .line 857
    :cond_9b8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xe

    if-nez v18, :cond_a06

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a01

    .line 859
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 860
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 861
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 863
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 864
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v18, "AlarmItem"

    const-string v19, "alarm fired but no snooze can be alert."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 873
    :cond_a01
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 877
    :cond_a06
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 878
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 884
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertDayOffset(Ljava/util/Calendar;)I

    move-result v8

    .line 887
    .restart local v8       #dayOffset:I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 889
    :goto_a28
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_a4a

    .line 890
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 894
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_a28

    .line 897
    :cond_a4a
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 898
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v18, "AlarmItem"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "change to active. new alarm set as normal alarm with snooze on next ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") day"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 909
    .end local v8           #dayOffset:I
    .end local v9           #i:I
    :cond_a7e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_bc2

    .line 910
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-gez v18, :cond_ae2

    .line 911
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .restart local v9       #i:I
    :goto_a9a
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    if-ge v9, v0, :cond_ae2

    .line 912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 913
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 914
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-lez v18, :cond_b41

    .line 919
    .end local v9           #i:I
    :cond_ae2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_bc2

    .line 920
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xe

    if-nez v18, :cond_b4a

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b45

    .line 922
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 923
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 924
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 926
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 927
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v18, "AlarmItem"

    const-string v19, "snooze end. change as inactive alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 911
    .restart local v9       #i:I
    :cond_b41
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a9a

    .line 936
    .end local v9           #i:I
    :cond_b45
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 941
    :cond_b4a
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 943
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertDayOffset(Ljava/util/Calendar;)I

    move-result v8

    .line 944
    .restart local v8       #dayOffset:I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 946
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 948
    :goto_b6c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_b8e

    .line 949
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 953
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_b6c

    .line 956
    :cond_b8e
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 957
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const-string v18, "AlarmItem"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "change to active. new alarm set as normal alarm with snooze on next ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") day"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 969
    .end local v8           #dayOffset:I
    :cond_bc2
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 970
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_beb

    .line 971
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_bdb
    :goto_bdb
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze active, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v18, "AlarmItem"

    const-string v19, "set next snooze."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 973
    :cond_beb
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_bdb

    .line 974
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bdb

    .line 984
    :cond_c01
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_cf5

    .line 985
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xe

    if-nez v18, :cond_c59

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c54

    .line 987
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 988
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 989
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 991
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 992
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_INACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v18, "AlarmItem"

    const-string v19, "alarm set as tomorrow."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1000
    :cond_c54
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 1003
    :cond_c59
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1005
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertDayOffset(Ljava/util/Calendar;)I

    move-result v8

    .line 1006
    .restart local v8       #dayOffset:I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1008
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1010
    :goto_c7b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-lez v18, :cond_c9d

    .line 1011
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1014
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_c7b

    .line 1017
    :cond_c9d
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 1018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_cdf

    .line 1019
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_cb6
    :goto_cb6
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v18, "AlarmItem"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "new alarm set as normal alarm on next ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") day"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1021
    :cond_cdf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_cb6

    .line 1022
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb6

    .line 1033
    .end local v8           #dayOffset:I
    :cond_cf5
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 1034
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d1e

    .line 1035
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_ACTIVE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_d0e
    :goto_d0e
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze inactive, subdue inactive"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const-string v18, "AlarmItem"

    const-string v19, "valid alarm as one shot alert."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1037
    :cond_d1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d0e

    .line 1038
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SNOOZE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0e

    .line 1051
    :pswitch_d34
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-lez v18, :cond_d59

    .line 1053
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 1054
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string v18, "AlarmItem"

    const-string v19, "just let smart alarm alert."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1061
    :cond_d59
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v3, v18, v20

    .line 1063
    .local v3, activeAlertTime:J
    cmp-long v18, v3, v6

    if-lez v18, :cond_da0

    .line 1065
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1066
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1068
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 1069
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const-string v18, "AlarmItem"

    const-string v19, "smart alarm has gone but we got active."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1077
    :cond_da0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_eea

    .line 1079
    move-wide v14, v3

    .line 1080
    .local v14, snoozeTimeMillis:J
    :cond_da9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    sget-object v19, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    move/from16 v20, v0

    aget v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_de2

    .line 1081
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1082
    sget-object v18, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    move/from16 v19, v0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v14, v14, v18

    .line 1083
    cmp-long v18, v14, v6

    if-lez v18, :cond_da9

    .line 1087
    :cond_de2
    cmp-long v18, v14, v6

    if-gez v18, :cond_ec3

    .line 1088
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xe

    if-nez v18, :cond_e34

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e2f

    .line 1091
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1092
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1093
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1095
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 1096
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-string v18, "AlarmItem"

    const-string v19, "all snooze also useless. inactive this alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1105
    :cond_e2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 1112
    :cond_e34
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1113
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1114
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 1116
    .restart local v12       #nextSmartAlert:J
    :goto_e64
    cmp-long v18, v6, v12

    if-lez v18, :cond_e9c

    .line 1117
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1118
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1119
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v18, v0

    sget-object v20, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    move/from16 v21, v0

    aget v20, v20, v21

    const v21, 0xea60

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    goto :goto_e64

    .line 1122
    :cond_e9c
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1124
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1126
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 1127
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const-string v18, "AlarmItem"

    const-string v19, "find other day to alert smart alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1136
    .end local v12           #nextSmartAlert:J
    :cond_ec3
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1137
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1139
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 1140
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const-string v18, "AlarmItem"

    const-string v19, "found snooze to alert."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1149
    .end local v14           #snoozeTimeMillis:J
    :cond_eea
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1150
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1151
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1153
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 1154
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const-string v18, "AlarmItem"

    const-string v19, "go inactive."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1167
    .end local v3           #activeAlertTime:J
    :pswitch_f1d
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1169
    sget-boolean v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v18, :cond_11

    .line 1170
    const-string v18, "AlarmItem"

    const-string v19, "----------------- ALARM_SUBDUE_NEXT -----------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const-string v18, "AlarmItem"

    const-string v19, "next alert : snooze whatever, subdue active"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-string v18, "AlarmItem"

    const-string v19, "we are going to active cause get next alarm."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 323
    :pswitch_data_f40
    .packed-switch 0x0
        :pswitch_12
        :pswitch_23
        :pswitch_23
        :pswitch_d34
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_f1d
    .end packed-switch
.end method

.method public static final createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .registers 7
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1185
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    .line 1187
    .local v0, item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    .line 1188
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1189
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 1190
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1191
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    .line 1192
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1193
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    .line 1194
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_ae

    move v1, v2

    :goto_3e
    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 1196
    const/16 v1, 0x8

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 1197
    const/16 v1, 0x9

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 1198
    const/16 v1, 0xa

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1199
    const/16 v1, 0xb

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_b0

    move v1, v2

    :goto_61
    iput-boolean v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 1201
    const/16 v1, 0xc

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_b2

    :goto_6b
    iput-boolean v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 1203
    const/16 v1, 0xd

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    .line 1204
    const/16 v1, 0xe

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    .line 1205
    const/16 v1, 0xf

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 1206
    const/16 v1, 0x10

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 1207
    const/16 v1, 0x11

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    .line 1208
    const/16 v1, 0x12

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    .line 1209
    const/16 v1, 0x13

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 1210
    const/16 v1, 0x14

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 1212
    return-object v0

    :cond_ae
    move v1, v3

    .line 1194
    goto :goto_3e

    :cond_b0
    move v1, v3

    .line 1199
    goto :goto_61

    :cond_b2
    move v2, v3

    .line 1201
    goto :goto_6b
.end method

.method private getNextAlertTime(Ljava/util/Calendar;)J
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 142
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_25

    const-string v0, "AlarmItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 getNextAlertTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_25
    const/4 v0, 0x6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertDayOffset(Ljava/util/Calendar;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 144
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_51

    const-string v0, "AlarmItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2 getNextAlertTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_51
    const/16 v0, 0xb

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 147
    const/16 v0, 0xc

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 148
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 149
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 151
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_91

    const-string v0, "AlarmItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3 getNextAlertTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_91
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public calculateFirstAlertTime()V
    .registers 13

    .prologue
    const v11, 0xea60

    .line 159
    const-string v7, "AlarmItem"

    const-string v8, "calculateFirstAlertTime"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 162
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 164
    .local v3, currentMillis:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 165
    .local v1, c1:Ljava/util/Calendar;
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    if-nez v7, :cond_47

    .line 167
    const-string v7, "AlarmItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calendar:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "system:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_47
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    if-nez v7, :cond_71

    .line 172
    const-string v7, "AlarmItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alarmAlertTime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "currentMillis:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 178
    .local v2, cr:Ljava/util/Calendar;
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 179
    const/4 v7, 0x6

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 181
    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 183
    iget v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_cc

    .line 184
    const-wide/16 v5, 0x0

    .line 185
    .local v5, subdueTime:J
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v9, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v9, v9, v10

    mul-int/2addr v9, v11

    int-to-long v9, v9

    sub-long v5, v7, v9

    .line 188
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    cmp-long v7, v7, v3

    if-lez v7, :cond_a6

    cmp-long v7, v5, v3

    if-gez v7, :cond_a6

    .line 189
    const/4 v7, 0x1

    iput v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 211
    .end local v5           #subdueTime:J
    :cond_a5
    :goto_a5
    return-void

    .line 190
    .restart local v5       #subdueTime:J
    :cond_a6
    cmp-long v7, v5, v3

    if-lez v7, :cond_ad

    .line 191
    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_a5

    .line 192
    :cond_ad
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_a5

    .line 196
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 197
    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 198
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v9, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v10, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v9, v9, v10

    mul-int/2addr v9, v11

    int-to-long v9, v9

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_a5

    .line 201
    .end local v5           #subdueTime:J
    :cond_cc
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v7

    if-nez v7, :cond_f6

    .line 202
    const-string v7, "AlarmItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "alarmAlertTime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "currentMillis:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_f6
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_a5

    .line 206
    iget-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 208
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_a5
.end method

.method public calculateNextAlertTime()V
    .registers 6

    .prologue
    const v4, 0xea60

    .line 267
    const-string v0, "AlarmItem"

    const-string v1, "calculateNextAlertTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    packed-switch v0, :pswitch_data_3e

    .line 289
    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateAlertTime()V

    .line 290
    return-void

    .line 272
    :pswitch_13
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v0, :cond_f

    .line 273
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 274
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    aget v2, v2, v3

    mul-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_f

    .line 280
    :pswitch_2b
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 281
    iget-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v2, v2, v3

    mul-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    goto :goto_f

    .line 269
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_2b
    .end packed-switch
.end method

.method public calculateNextSmartAlertTime()V
    .registers 11

    .prologue
    const v9, 0xea60

    const/4 v7, 0x1

    .line 214
    const-string v5, "AlarmItem"

    const-string v6, "calculateNextSmartAlertTime"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateOriginalAlertTime()V

    .line 217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 218
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 220
    .local v1, currentMillis:J
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    and-int/lit8 v5, v5, 0xf

    if-ne v5, v7, :cond_25

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v5

    if-ne v5, v7, :cond_72

    .line 222
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 227
    :cond_25
    :goto_25
    const-string v5, "AlarmItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "active : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 229
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 230
    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v7, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v7, v7, v8

    mul-int/2addr v7, v9

    int-to-long v7, v7

    sub-long v3, v5, v7

    .line 232
    .local v3, nextSmartAlert:J
    :goto_56
    cmp-long v5, v1, v3

    if-lez v5, :cond_76

    .line 233
    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 234
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getNextAlertTime(Ljava/util/Calendar;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 235
    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v7, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v7, v7, v8

    mul-int/2addr v7, v9

    int-to-long v7, v7

    sub-long v3, v5, v7

    goto :goto_56

    .line 224
    .end local v3           #nextSmartAlert:J
    :cond_72
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    goto :goto_25

    .line 238
    .restart local v3       #nextSmartAlert:J
    :cond_76
    iput-wide v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 254
    return-void
.end method

.method public calculateOriginalAlertTime()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 258
    .local v0, c:Ljava/util/Calendar;
    const/16 v1, 0xb

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 259
    const/16 v1, 0xc

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 260
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 261
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 263
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 264
    return-void
.end method

.method public clearRepeatDay(Ljava/util/Calendar;)V
    .registers 8
    .parameter "c"

    .prologue
    .line 1328
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1329
    .local v1, offset:I
    const/4 v2, 0x1

    .line 1330
    .local v2, operator:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    rsub-int/lit8 v3, v1, 0x7

    if-gt v0, v3, :cond_10

    .line 1331
    shl-int/lit8 v2, v2, 0x4

    .line 1330
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1333
    :cond_10
    sget-boolean v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v3, :cond_9b

    .line 1334
    const-string v3, "AlarmItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const-string v3, "AlarmItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "repeat type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string v3, "AlarmItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operator : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n~operator : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    xor-int/lit8 v5, v2, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    xor-int/lit8 v4, v2, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 1339
    const-string v3, "AlarmItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "repeat type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_9b
    return-void
.end method

.method public getAlertDayCount()I
    .registers 7

    .prologue
    .line 1313
    const/4 v1, 0x0

    .line 1314
    .local v1, nCount:I
    const/4 v2, 0x1

    .line 1315
    .local v2, operator:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    const/4 v3, 0x7

    if-ge v0, v3, :cond_12

    .line 1316
    shl-int/lit8 v2, v2, 0x4

    .line 1317
    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    and-int/2addr v3, v2

    if-lez v3, :cond_f

    .line 1318
    add-int/lit8 v1, v1, 0x1

    .line 1315
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1321
    :cond_12
    sget-boolean v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->DEBUG:Z

    if-eqz v3, :cond_2e

    .line 1322
    const-string v3, "AlarmItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_2e
    return v1
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v1, value:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 109
    .local v0, alarmType:I
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v2, :cond_e

    .line 110
    or-int/lit16 v0, v0, 0x100

    .line 111
    :cond_e
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v2, :cond_14

    .line 112
    or-int/lit8 v0, v0, 0x10

    .line 113
    :cond_14
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v2, :cond_1a

    .line 114
    or-int/lit8 v0, v0, 0x1

    .line 116
    :cond_1a
    const-string v2, "active"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v2, "createtime"

    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    const-string v2, "alerttime"

    iget-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v2, "alarmtime"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v2, "repeattype"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v2, "notitype"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v5, "snzactive"

    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v2, :cond_f2

    move v2, v3

    :goto_61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v2, "snzduration"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v2, "snzrepeat"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v2, "snzcount"

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v2, "dailybrief"

    iget-boolean v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 127
    const-string v2, "sbdactive"

    iget-boolean v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v5, :cond_f5

    :goto_9a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v2, "sbdduration"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v2, "sbdtone"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v2, "alarmsound"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v2, "alarmtone"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v2, "volume"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v2, "sbduri"

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v2, "alarmuri"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v2, "name"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-object v1

    :cond_f2
    move v2, v4

    .line 122
    goto/16 :goto_61

    :cond_f5
    move v3, v4

    .line 127
    goto :goto_9a
.end method

.method public getNextAlertDayOffset(Ljava/util/Calendar;)I
    .registers 9
    .parameter "c"

    .prologue
    const/4 v6, 0x7

    .line 1296
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1297
    .local v0, day:I
    const/high16 v1, 0x1000

    .line 1298
    .local v1, dayOffset:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_8
    if-gt v2, v6, :cond_1f

    .line 1299
    add-int v3, v0, v2

    .line 1300
    .local v3, nextDay:I
    if-le v3, v6, :cond_10

    .line 1301
    add-int/lit8 v3, v3, -0x7

    .line 1303
    :cond_10
    mul-int/lit8 v5, v3, 0x4

    shr-int v4, v1, v5

    .line 1304
    .local v4, operator:I
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    shr-int/lit8 v5, v5, 0x4

    and-int/2addr v5, v4

    if-lez v5, :cond_1c

    .line 1309
    .end local v2           #i:I
    .end local v3           #nextDay:I
    .end local v4           #operator:I
    :goto_1b
    return v2

    .line 1298
    .restart local v2       #i:I
    .restart local v3       #nextDay:I
    .restart local v4       #operator:I
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1309
    .end local v3           #nextDay:I
    .end local v4           #operator:I
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public readFromIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 75
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 76
    .local v0, alarmData:[B
    if-eqz v0, :cond_9b

    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 78
    .local v1, in:Landroid/os/Parcel;
    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 79
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    .line 82
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 83
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 84
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 85
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    .line 86
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 87
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    .line 88
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_9c

    move v2, v3

    :goto_46
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 92
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_9e

    move v2, v3

    :goto_61
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_a0

    :goto_69
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    .line 95
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 103
    .end local v1           #in:Landroid/os/Parcel;
    :cond_9b
    return-void

    .restart local v1       #in:Landroid/os/Parcel;
    :cond_9c
    move v2, v4

    .line 88
    goto :goto_46

    :cond_9e
    move v2, v4

    .line 92
    goto :goto_61

    :cond_a0
    move v3, v4

    .line 93
    goto :goto_69
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1218
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1219
    .local v0, c:Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1221
    const-string v2, "id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1223
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    const-string v2, "activate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1226
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    const-string v2, "createTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1229
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    const-string v2, "AlertTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    iget-wide v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1232
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    const-string v2, "AlertT___ (at cal) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->digitToAlphabetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    const-string v2, "alarmT___ : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->digitToAlphabetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    const-string v2, "repeatType : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    const-string v2, "notificationType : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    const-string v2, "snoozeActivate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1249
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    const-string v2, "snoozeDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1252
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    const-string v2, "snoozeRepeat : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1255
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    const-string v2, "snoozeDoneCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1258
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    const-string v2, "dailyBriefing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1261
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    const-string v2, "subdueActivate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1264
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    const-string v2, "subdueDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1267
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    const-string v2, "subdueTone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1270
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    const-string v2, "alarmSoundType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1273
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    const-string v2, "alarmSoundTone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1276
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    const-string v2, "alarmVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1279
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    const-string v2, "subdueUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1282
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    sget-boolean v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v2, :cond_17e

    .line 1284
    const-string v2, "soundUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    const-string v2, "alarmName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    const-string v2, ", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    :cond_17e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 7
    .parameter "dest"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-wide v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-wide v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    if-eqz v0, :cond_74

    move v0, v1

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->dailyBriefing:Z

    if-eqz v0, :cond_76

    move v0, v1

    :goto_41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v0, :cond_78

    :goto_48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueUri:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return-void

    :cond_74
    move v0, v2

    .line 58
    goto :goto_2a

    :cond_76
    move v0, v2

    .line 62
    goto :goto_41

    :cond_78
    move v1, v2

    .line 63
    goto :goto_48
.end method

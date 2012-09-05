.class public Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;
.super Landroid/app/Activity;
.source "HandleSetAlarm.java"


# static fields
.field private static alarmogg:Ljava/lang/String;


# instance fields
.field mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "content%3A%2F%2Fmedia%2Finternal%2Faudio%2Fmedia%2F12"

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->alarmogg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    return-void
.end method

.method private saveMsg()V
    .registers 26

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    move/from16 v19, v0

    if-lez v19, :cond_be

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    move-wide/from16 v21, v0

    const-wide/32 v23, 0xea60

    div-long v21, v21, v23

    const-wide/32 v23, 0xea60

    mul-long v21, v21, v23

    sub-long v6, v19, v21

    .line 117
    .local v6, delta:J
    const-wide/32 v19, 0x36ee80

    div-long v13, v6, v19

    .line 118
    .local v13, hours:J
    const-wide/32 v19, 0xea60

    div-long v19, v6, v19

    const-wide/16 v21, 0x3c

    rem-long v17, v19, v21

    .line 119
    .local v17, minutes:J
    const-wide/16 v19, 0x18

    div-long v4, v13, v19

    .line 120
    .local v4, days:J
    const-wide/16 v19, 0x18

    rem-long v13, v13, v19

    .line 121
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-nez v19, :cond_bf

    const-string v3, ""

    .line 123
    .local v3, daySeq:Ljava/lang/String;
    :goto_50
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-nez v19, :cond_f0

    const-string v16, ""

    .line 125
    .local v16, minSeq:Ljava/lang/String;
    :goto_58
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-nez v19, :cond_122

    const-string v12, ""

    .line 127
    .local v12, hourSeq:Ljava/lang/String;
    :goto_60
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-lez v19, :cond_154

    const/4 v8, 0x1

    .line 128
    .local v8, dispDays:Z
    :goto_67
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-lez v19, :cond_157

    const/4 v9, 0x1

    .line 129
    .local v9, dispHour:Z
    :goto_6e
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-lez v19, :cond_15a

    const/4 v10, 0x1

    .line 130
    .local v10, dispMinute:Z
    :goto_75
    if-eqz v8, :cond_15d

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_7b
    if-eqz v9, :cond_163

    const/16 v19, 0x2

    :goto_7f
    or-int v20, v20, v19

    if-eqz v10, :cond_167

    const/16 v19, 0x4

    :goto_85
    or-int v15, v20, v19

    .line 131
    .local v15, index:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f07000f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 132
    .local v11, formats:[Ljava/lang/String;
    aget-object v19, v11, v15

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    aput-object v12, v20, v21

    const/16 v21, 0x2

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->finish()V

    .line 135
    .end local v3           #daySeq:Ljava/lang/String;
    .end local v4           #days:J
    .end local v6           #delta:J
    .end local v8           #dispDays:Z
    .end local v9           #dispHour:Z
    .end local v10           #dispMinute:Z
    .end local v11           #formats:[Ljava/lang/String;
    .end local v12           #hourSeq:Ljava/lang/String;
    .end local v13           #hours:J
    .end local v15           #index:I
    .end local v16           #minSeq:Ljava/lang/String;
    .end local v17           #minutes:J
    :cond_be
    return-void

    .line 121
    .restart local v4       #days:J
    .restart local v6       #delta:J
    .restart local v13       #hours:J
    .restart local v17       #minutes:J
    :cond_bf
    const-wide/16 v19, 0x1

    cmp-long v19, v4, v19

    if-nez v19, :cond_d1

    const v19, 0x7f0b0042

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_50

    :cond_d1
    const v19, 0x7f0b0043

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_50

    .line 123
    .restart local v3       #daySeq:Ljava/lang/String;
    :cond_f0
    const-wide/16 v19, 0x1

    cmp-long v19, v17, v19

    if-nez v19, :cond_103

    const v19, 0x7f0b0046

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_58

    :cond_103
    const v19, 0x7f0b0047

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_58

    .line 125
    .restart local v16       #minSeq:Ljava/lang/String;
    :cond_122
    const-wide/16 v19, 0x1

    cmp-long v19, v13, v19

    if-nez v19, :cond_135

    const v19, 0x7f0b0044

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_60

    :cond_135
    const v19, 0x7f0b0045

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_60

    .line 127
    .restart local v12       #hourSeq:Ljava/lang/String;
    :cond_154
    const/4 v8, 0x0

    goto/16 :goto_67

    .line 128
    .restart local v8       #dispDays:Z
    :cond_157
    const/4 v9, 0x0

    goto/16 :goto_6e

    .line 129
    .restart local v9       #dispHour:Z
    :cond_15a
    const/4 v10, 0x0

    goto/16 :goto_75

    .line 130
    .restart local v10       #dispMinute:Z
    :cond_15d
    const/16 v19, 0x0

    move/from16 v20, v19

    goto/16 :goto_7b

    :cond_163
    const/16 v19, 0x0

    goto/16 :goto_7f

    :cond_167
    const/16 v19, 0x0

    goto/16 :goto_85
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter

    .prologue
    const/16 v11, 0xb

    const/4 v10, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1b

    const-string v1, "android.intent.action.SET_ALARM"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 35
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->finish()V

    .line 112
    :goto_1e
    return-void

    .line 39
    :cond_1f
    const-string v1, "android.intent.extra.alarm.HOUR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->finish()V

    goto :goto_1e

    .line 46
    :cond_35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 48
    const-string v2, "android.intent.extra.alarm.HOUR"

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 50
    const-string v3, "android.intent.extra.alarm.MINUTES"

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 52
    const-string v4, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0002

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_73
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 60
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput-object v0, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    mul-int/lit8 v4, v2, 0x64

    add-int/2addr v4, v3

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-wide v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    iput-wide v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v7, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v8, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    const/4 v4, 0x6

    iput v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundTone:I

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x4

    invoke-static {v0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_15c

    .line 70
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    .line 74
    :goto_b2
    invoke-virtual {v1, v11, v2}, Ljava/util/Calendar;->set(II)V

    .line 75
    const/16 v0, 0xc

    invoke-virtual {v1, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 76
    const/16 v0, 0xd

    invoke-virtual {v1, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 77
    const/16 v0, 0xe

    invoke-virtual {v1, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 79
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-wide v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_d3

    .line 80
    invoke-virtual {v1, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 82
    :cond_d3
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    rsub-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    shl-int v0, v8, v0

    and-int/lit8 v0, v0, -0x10

    or-int/2addr v0, v2

    iput v0, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 94
    :try_start_10a
    const-string v0, "alarm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 95
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11a
    .catchall {:try_start_10a .. :try_end_11a} :catchall_168

    .line 97
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 100
    const-string v0, "Alarm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SET_ALARM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_151

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    :cond_151
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->saveMsg()V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->finish()V

    goto/16 :goto_1e

    .line 72
    :cond_15c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    sget-object v4, Lcom/sec/android/app/clockpackage/alarm/HandleSetAlarm;->alarmogg:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    goto/16 :goto_b2

    .line 97
    :catchall_168
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.class public Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;
    }
.end annotation


# static fields
.field private static ALARM_IGNORE_DEADLINE_SEC:I

.field private static final DEBUG:Z


# instance fields
.field private intentActionName:Ljava/lang/String;

.field private mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

.field private mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    .line 66
    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->ALARM_IGNORE_DEADLINE_SEC:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mHandler:Landroid/os/Handler;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->intentActionName:Ljava/lang/String;

    .line 1249
    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchSmartAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAndEnableNextAlarm(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->destroyListener(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchInfoAlarm(Landroid/content/Context;)V

    return-void
.end method

.method private destroyListener(I)V
    .registers 6
    .parameter "pendingEvent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 972
    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    if-eqz v0, :cond_22

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;
    invoke-static {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Intent;)Landroid/content/Intent;

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$302(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Context;)Landroid/content/Context;

    .line 987
    :cond_22
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    .line 1008
    :cond_24
    :goto_24
    return-void

    .line 989
    :cond_25
    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    .line 991
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    if-eqz v0, :cond_45

    .line 993
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 998
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;
    invoke-static {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Intent;)Landroid/content/Intent;

    .line 1000
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$302(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Context;)Landroid/content/Context;

    .line 1004
    :cond_45
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    goto :goto_24
.end method

.method private getAlarmCount(Landroid/content/Context;)I
    .registers 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 564
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 566
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 567
    .local v7, itemCount:I
    if-eqz v6, :cond_34

    .line 568
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 569
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v1, :cond_31

    .line 570
    const-string v1, "AlarmReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlarmCount() itemCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 573
    :cond_34
    const/4 v6, 0x0

    .line 574
    return v7
.end method

.method private getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 901
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private isInCallState(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 924
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 930
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-ne v2, v1, :cond_c

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private launchAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 504
    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 507
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 510
    const/high16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 513
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 515
    return-void
.end method

.method private launchInfoAlarm(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 479
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 480
    const-string v1, "AlarmReceiver"

    const-string v2, "..startInfoAlarm.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, intentInfoAlarm:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.widgetapp.infoalarm"

    const-string v3, "com.sec.android.widgetapp.infoalarm.activity.InfoAlarm"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 489
    const-string v1, "UpdateMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const/high16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 494
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 496
    return-void
.end method

.method private launchSetAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 538
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 539
    const-string v0, "AlarmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchAlarmDetail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_1c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 544
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 546
    const-class v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 549
    const-string v2, "alarm_create_direct"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ID"

    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getAlarmCount(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 552
    const-string v2, "android.intent.extra.alarm.HOUR"

    const-string v3, "android.intent.extra.alarm.HOUR"

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    const-string v2, "android.intent.extra.alarm.MINUTES"

    const-string v3, "android.intent.extra.alarm.MINUTES"

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    const-string v0, "android.intent.extra.alarm.MESSAGE"

    const-string v2, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const/high16 v0, 0x1404

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 559
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 560
    return-void
.end method

.method private launchSmartAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 521
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 523
    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 526
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 529
    const/high16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 532
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 534
    return-void
.end method

.method private updateAlarmAfterBoot(Landroid/content/Context;)V
    .registers 22
    .parameter "context"

    .prologue
    .line 715
    sget-boolean v3, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v3, :cond_b

    .line 717
    const-string v3, "AlarmReceiver"

    const-string v4, "updateSnoozeAfterBoot called."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 721
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "active > 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 733
    .local v14, cursor:Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 735
    .local v16, itemCount:I
    if-gtz v16, :cond_49

    .line 737
    sget-boolean v3, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v3, :cond_44

    .line 739
    const-string v3, "AlarmReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSnoozeAfterBoot item count ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", just return."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_44
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 744
    const/4 v14, 0x0

    .line 897
    :cond_48
    return-void

    .line 750
    :cond_49
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v17, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/alarm/AlarmItem;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 754
    .local v9, c:Ljava/util/Calendar;
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 756
    .local v12, currentMillis:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .local v8, builder:Ljava/lang/StringBuilder;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 760
    const/4 v15, 0x0

    .local v15, i:I
    :goto_5f
    move/from16 v0, v16

    if-ge v15, v0, :cond_114

    .line 762
    invoke-static {v14}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v19

    .line 764
    .local v19, updateItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    sget-boolean v3, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v3, :cond_8e

    .line 766
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_79

    .line 768
    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 770
    :cond_79
    const-string v3, "updateSnoozeAfterBoot item id -> "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    move-object/from16 v0, v19

    iget v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 774
    const-string v3, "AlarmReceiver"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_8e
    move-object/from16 v0, v19

    iget v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-lez v3, :cond_df

    .line 823
    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 825
    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 827
    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v3, :cond_a7

    .line 829
    const/4 v3, 0x3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 831
    :cond_a7
    const/16 v3, 0xb

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v9, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 833
    const/16 v3, 0xc

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v4, v4, 0x64

    invoke-virtual {v9, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 835
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 837
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    move-object/from16 v0, v19

    iput-wide v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 839
    const/4 v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 841
    move-object/from16 v0, v19

    iget-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 843
    .local v10, createTimeBackup:J
    move-object/from16 v0, v19

    iput-wide v12, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 845
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 847
    move-object/from16 v0, v19

    iput-wide v10, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 854
    .end local v10           #createTimeBackup:J
    :cond_df
    sget-boolean v3, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v3, :cond_106

    .line 856
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_f1

    .line 858
    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 860
    :cond_f1
    const-string v3, "updateSnoozeAfterBoot updated......"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    const-string v3, "AlarmReceiver"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_106
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 760
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5f

    .line 874
    .end local v19           #updateItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    :cond_114
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 876
    const/4 v14, 0x0

    .line 878
    const/4 v15, 0x0

    :goto_119
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_48

    .line 880
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 882
    .local v18, saveItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_135

    .line 884
    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 886
    :cond_135
    const-string v3, "_id"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    const-string v3, " = "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    move-object/from16 v0, v18

    iget v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 892
    sget-object v3, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 878
    add-int/lit8 v15, v15, 0x1

    goto :goto_119
.end method

.method private updateAlarmAsNewTime(Landroid/content/Context;)I
    .registers 20
    .parameter "context"

    .prologue
    .line 1042
    const/16 v16, 0x0

    .line 1044
    .local v16, updateCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1046
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1048
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1050
    .local v6, alarmCount:I
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v1, :cond_36

    .line 1052
    const-string v1, "AlarmReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlarmAsNewTime queried "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_36
    if-gtz v6, :cond_3f

    .line 1056
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1058
    const/4 v8, 0x0

    move/from16 v17, v16

    .line 1157
    .end local v16           #updateCount:I
    .local v17, updateCount:I
    :goto_3e
    return v17

    .line 1064
    .end local v17           #updateCount:I
    .restart local v16       #updateCount:I
    :cond_3f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 1066
    .local v9, calendar:Ljava/util/Calendar;
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 1068
    .local v12, currentTimeMillies:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1070
    .local v7, builder:Ljava/lang/StringBuilder;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1072
    const/4 v14, 0x0

    .local v14, i:I
    :goto_50
    if-ge v14, v6, :cond_103

    .line 1074
    invoke-static {v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v15

    .line 1076
    .local v15, item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v1, :cond_76

    .line 1078
    const-string v1, "AlarmReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item befor update : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_76
    iget v1, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-lez v1, :cond_fc

    .line 1104
    const/4 v1, 0x1

    iput v1, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1106
    iget-boolean v1, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v1, :cond_84

    .line 1108
    const/4 v1, 0x3

    iput v1, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 1112
    :cond_84
    const/16 v1, 0xb

    iget v2, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1114
    const/16 v1, 0xc

    iget v2, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v2, v2, 0x64

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1116
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1118
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    .line 1120
    const/4 v1, 0x0

    iput v1, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    .line 1122
    iget-wide v10, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 1124
    .local v10, createTimeBackup:J
    iput-wide v12, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 1126
    invoke-virtual {v15}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 1128
    iput-wide v10, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 1130
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v1, :cond_ce

    .line 1132
    const-string v1, "AlarmReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item after update : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_ce
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_dc

    .line 1136
    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1138
    :cond_dc
    const-string v1, "_id"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const-string v1, " = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    iget v1, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1144
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int v16, v16, v1

    .line 1149
    .end local v10           #createTimeBackup:J
    :cond_fc
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1072
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_50

    .line 1153
    .end local v15           #item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    :cond_103
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1155
    const/4 v8, 0x0

    move/from16 v17, v16

    .line 1157
    .end local v16           #updateCount:I
    .restart local v17       #updateCount:I
    goto/16 :goto_3e
.end method

.method private updateAlarmOnTime(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V
    .registers 20
    .parameter "context"
    .parameter "item"

    .prologue
    .line 579
    sget-boolean v2, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v2, :cond_20

    .line 581
    const-string v2, "AlarmReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAlarmOnTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 585
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alerttime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 597
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 599
    .local v11, itemCount:I
    if-gtz v11, :cond_4f

    .line 601
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 603
    const/4 v8, 0x0

    .line 711
    :cond_4e
    :goto_4e
    return-void

    .line 609
    :cond_4f
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v12, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/alarm/AlarmItem;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .local v7, builder:Ljava/lang/StringBuilder;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 615
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5d
    if-ge v10, v11, :cond_ab

    .line 617
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    if-eq v2, v3, :cond_a5

    .line 619
    invoke-static {v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v15

    .line 621
    .local v15, updateItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    sget-boolean v2, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v2, :cond_9f

    .line 623
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_80

    .line 625
    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 627
    :cond_80
    const-string v2, "updateAlarmOnTime ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    move-object/from16 v0, p2

    iget v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 631
    const-string v2, ") : match and update item id -> "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget v2, v15, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    const-string v2, "AlarmReceiver"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_9f
    invoke-virtual {v15}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateNextAlertTime()V

    .line 641
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v15           #updateItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    :cond_a5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 615
    add-int/lit8 v10, v10, 0x1

    goto :goto_5d

    .line 649
    :cond_ab
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 651
    const/4 v8, 0x0

    .line 653
    sget-boolean v2, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v2, :cond_ba

    .line 655
    const-string v2, "AlarmReceiver"

    const-string v3, "updateAlarmOnTime start update DB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_ba
    const-string v2, "alarm.db"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 660
    .local v13, path:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v13, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 663
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 667
    const/4 v10, 0x0

    :goto_d0
    :try_start_d0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_10c

    .line 669
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 671
    .local v14, saveItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-virtual {v14}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v16

    .line 673
    .local v16, value:Landroid/content/ContentValues;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_ee

    .line 675
    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 677
    :cond_ee
    const-string v2, "_id"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const-string v2, " = "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget v2, v14, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 683
    const-string v2, "alarm"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 667
    add-int/lit8 v10, v10, 0x1

    goto :goto_d0

    .line 688
    .end local v14           #saveItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .end local v16           #value:Landroid/content/ContentValues;
    :cond_10c
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10f
    .catchall {:try_start_d0 .. :try_end_10f} :catchall_140

    .line 692
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 696
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 698
    if-eqz v12, :cond_133

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_133

    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 703
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 707
    :cond_133
    sget-boolean v2, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v2, :cond_4e

    .line 709
    const-string v2, "AlarmReceiver"

    const-string v3, "updateAlarmOnTime update DB done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 692
    :catchall_140
    move-exception v2

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private updateAndEnableNextAlarm(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V
    .registers 8
    .parameter "context"
    .parameter "item"

    .prologue
    .line 1012
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 1014
    const-string v0, "AlarmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAndEnableNextAlarm alarm("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_2a
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAlarmOnTime(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V

    .line 1019
    invoke-virtual {p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateNextAlertTime()V

    .line 1021
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v0, :cond_5a

    .line 1023
    const-string v0, "AlarmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAndEnableNextAlarm updated alarm("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_5a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1036
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 1038
    return-void
.end method

.method private waitForCallEnd(Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 7
    .parameter "context"
    .parameter "intent"
    .parameter "pendingEvent"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x20

    .line 936
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2a

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    if-nez v0, :cond_11

    .line 940
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    .line 942
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mPendingEvent:I
    invoke-static {v0, p3}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$102(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;I)I

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;
    invoke-static {v0, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Intent;)Landroid/content/Intent;

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$302(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Context;)Landroid/content/Context;

    .line 948
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 968
    :cond_29
    :goto_29
    return-void

    .line 951
    :cond_2a
    const/4 v0, 0x2

    if-ne p3, v0, :cond_29

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    if-nez v0, :cond_38

    .line 955
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    .line 957
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mPendingEvent:I
    invoke-static {v0, p3}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$102(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;I)I

    .line 959
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;
    invoke-static {v0, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Intent;)Landroid/content/Intent;

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->access$302(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Context;)Landroid/content/Context;

    .line 963
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mCallPendingInfoAlarmListener:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_29
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 30
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    sget-boolean v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v4, :cond_24

    .line 90
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive() : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->removeClockPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_24
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->acquire(Landroid/content/Context;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 100
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAlarmAfterBoot(Landroid/content/Context;)V

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 106
    const/4 v11, 0x0

    .line 108
    .local v11, autotime:Z
    :try_start_3a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_bb

    const/4 v11, 0x1

    .line 109
    :goto_47
    sget-boolean v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v4, :cond_63

    .line 110
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: ACTION_BOOT_COMPLETED, autotime = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3a .. :try_end_63} :catch_bd

    .line 116
    :cond_63
    :goto_63
    if-nez v11, :cond_aa

    .line 117
    const-string v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, current:Ljava/lang/String;
    if-eqz v12, :cond_8e

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8e

    .line 119
    const-string v4, "persist.sys.timezone"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    .line 120
    .local v26, zone:Ljava/util/TimeZone;
    const-string v4, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 121
    .local v10, alarm:Landroid/app/AlarmManager;
    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 123
    .end local v10           #alarm:Landroid/app/AlarmManager;
    .end local v26           #zone:Ljava/util/TimeZone;
    :cond_8e
    sget-boolean v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v4, :cond_aa

    .line 124
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: ACTION_BOOT_COMPLETED, current = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v11           #autotime:Z
    .end local v12           #current:Ljava/lang/String;
    :cond_aa
    :goto_aa
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;)V

    const-wide/16 v7, 0xbb8

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    :goto_ba
    return-void

    .line 108
    .restart local v11       #autotime:Z
    :cond_bb
    const/4 v11, 0x0

    goto :goto_47

    .line 112
    :catch_bd
    move-exception v22

    .line 113
    .local v22, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v11, 0x1

    goto :goto_63

    .line 128
    .end local v11           #autotime:Z
    .end local v22           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_c0
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 131
    const-string v4, "android.intent.action.TIME_SET"

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->intentActionName:Ljava/lang/String;

    .line 132
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAlarmAsNewTime(Landroid/content/Context;)I

    move-result v24

    .line 134
    .local v24, update:I
    sget-boolean v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v4, :cond_f0

    .line 136
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_TIME_CHANGED:: updateAlarmAsNewTime returns "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_f0
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    goto :goto_aa

    .line 143
    .end local v24           #update:I
    :cond_f4
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 148
    sget-boolean v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v4, :cond_107

    .line 149
    const-string v4, "AlarmReceiver"

    const-string v5, "ACTION_LOCALE_CHANGED:: updateAlarmAsNewTime returns "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_107
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    goto :goto_aa

    .line 153
    :cond_10b
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 157
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAlarmAsNewTime(Landroid/content/Context;)I

    move-result v24

    .line 159
    .restart local v24       #update:I
    sget-boolean v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v4, :cond_135

    .line 161
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_TIMEZONE_CHANGED:: updateAlarmAsNewTime returns "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_135
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    goto/16 :goto_aa

    .line 167
    .end local v24           #update:I
    :cond_13a
    const-string v4, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_330

    .line 169
    new-instance v19, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct/range {v19 .. v19}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    .line 171
    .local v19, item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->readFromIntent(Landroid/content/Intent;)V

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 175
    .local v13, currentTime:J
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget v7, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->ALARM_IGNORE_DEADLINE_SEC:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v4, v7

    cmp-long v4, v13, v4

    if-lez v4, :cond_195

    .line 177
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAlarmAsNewTime(Landroid/content/Context;)I

    move-result v24

    .line 179
    .restart local v24       #update:I
    sget-boolean v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v4, :cond_190

    .line 181
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received alarm is old one. get next alarm. currentTime:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " update:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_190
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    goto/16 :goto_aa

    .line 191
    .end local v24           #update:I
    :cond_195
    sget-boolean v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v4, :cond_1b5

    .line 193
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received alarm. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1b5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "createtime DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 201
    .local v15, cursor:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 203
    .local v20, itemCount:I
    if-gtz v20, :cond_1f1

    .line 205
    sget-boolean v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v4, :cond_1e8

    .line 206
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "return itemCount = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1e8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 209
    const/4 v15, 0x0

    .line 211
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->release()V

    goto/16 :goto_ba

    .line 216
    :cond_1f1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 218
    const/16 v18, 0x0

    .line 219
    .local v18, isSameID:Z
    const/16 v17, 0x1

    .line 221
    .local v17, isActivate:Z
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1fa
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_21d

    .line 223
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v19

    iget v5, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    if-ne v4, v5, :cond_24a

    .line 224
    const/16 v18, 0x1

    .line 227
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_21d

    .line 228
    const-string v4, "AlarmReceiver"

    const-string v5, "isActive = false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/16 v17, 0x0

    .line 237
    :cond_21d
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 238
    const/4 v15, 0x0

    .line 240
    if-eqz v18, :cond_225

    if-nez v17, :cond_250

    .line 241
    :cond_225
    sget-boolean v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->DEBUG:Z

    if-eqz v4, :cond_245

    .line 242
    const-string v4, "AlarmReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "it doesn\'t have same ID or deactivate(id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget v7, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_245
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$WakeLock;->release()V

    goto/16 :goto_ba

    .line 234
    :cond_24a
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 221
    add-int/lit8 v16, v16, 0x1

    goto :goto_1fa

    .line 253
    :cond_250
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->isInCallState(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2a8

    .line 257
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    move-result-object v3

    .line 260
    .local v3, helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    const/4 v6, 0x0

    .line 262
    .local v6, notificationType:I
    const/16 v21, 0x0

    .line 264
    .local v21, notificationDuration:I
    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_26b

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_290

    .line 268
    :cond_26b
    const v6, 0x10001000

    .line 270
    const v21, 0xea60

    .line 281
    :cond_271
    :goto_271
    move/from16 v0, v21

    int-to-long v7, v0

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->notify(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;IJ)V

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAndEnableNextAlarm(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V

    .line 286
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->waitForCallEnd(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_aa

    .line 272
    :cond_290
    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_271

    .line 274
    const v6, 0x10002000

    .line 276
    const v4, 0xea60

    sget-object v5, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v5, v5, v7

    mul-int v21, v4, v5

    goto :goto_271

    .line 374
    .end local v3           #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .end local v6           #notificationType:I
    .end local v21           #notificationDuration:I
    :cond_2a8
    const-string v4, "true"

    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c1

    .line 377
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 378
    sget v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->ALARM_IGNORE_DEADLINE_SEC:I

    add-int/lit8 v4, v4, 0x2

    sput v4, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->ALARM_IGNORE_DEADLINE_SEC:I

    goto/16 :goto_aa

    .line 403
    :cond_2c1
    new-instance v25, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicecommand"

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v25, vci:Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "stop"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_314

    .line 407
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchSmartAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    .line 411
    :goto_2e4
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    move-result-object v3

    .line 413
    .restart local v3       #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    const/4 v6, 0x0

    .line 414
    .restart local v6       #notificationType:I
    const/16 v21, 0x0

    .line 415
    .restart local v21       #notificationDuration:I
    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2f9

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_318

    .line 417
    :cond_2f9
    const v6, 0x10001000

    .line 418
    const v21, 0xea60

    .line 425
    :cond_2ff
    :goto_2ff
    move/from16 v0, v21

    int-to-long v7, v0

    move-object/from16 v4, p1

    move-object/from16 v5, v19

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->notify(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;IJ)V

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAndEnableNextAlarm(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V

    goto/16 :goto_aa

    .line 409
    .end local v3           #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .end local v6           #notificationType:I
    .end local v21           #notificationDuration:I
    :cond_314
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2e4

    .line 419
    .restart local v3       #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .restart local v6       #notificationType:I
    .restart local v21       #notificationDuration:I
    :cond_318
    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2ff

    .line 420
    const v6, 0x10002000

    .line 421
    const v4, 0xea60

    sget-object v5, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v5, v5, v7

    mul-int v21, v4, v5

    goto :goto_2ff

    .line 435
    .end local v3           #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .end local v6           #notificationType:I
    .end local v13           #currentTime:J
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v16           #i:I
    .end local v17           #isActivate:Z
    .end local v18           #isSameID:Z
    .end local v19           #item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .end local v20           #itemCount:I
    .end local v21           #notificationDuration:I
    .end local v25           #vci:Landroid/content/Intent;
    :cond_330
    const-string v4, "android.intent.action.SET_ALARM"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_354

    .line 437
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->getAlarmCount(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_345

    .line 438
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchSetAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_aa

    .line 440
    :cond_345
    const v4, 0x7f0b0069

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_aa

    .line 442
    :cond_354
    const-string v4, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_DIRECTSAVED"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 444
    const-string v4, "save_msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 446
    .local v23, str:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_aa
.end method

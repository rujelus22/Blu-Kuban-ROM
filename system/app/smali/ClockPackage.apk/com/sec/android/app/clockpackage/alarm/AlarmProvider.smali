.class public Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;
.super Landroid/content/ContentProvider;
.source "AlarmProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEBUG:Z

.field private static mPendingIntent:Landroid/app/PendingIntent;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->DEBUG:Z

    .line 123
    const-string v0, "content://com.samsung.sec.android.clockpackage/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 514
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->DEBUG:Z

    return v0
.end method

.method public static enableNextAlert(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/high16 v10, 0x1000

    const/4 v9, 0x0

    .line 763
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->getNextAlarm(Landroid/content/Context;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v3

    .line 765
    .local v3, item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    sget-boolean v6, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->DEBUG:Z

    if-eqz v6, :cond_27

    .line 767
    const-string v7, "AlarmProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableNextAlert next alarm : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v3, :cond_a4

    const-string v6, "null"

    :goto_1c
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_27
    if-eqz v3, :cond_aa

    .line 772
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 775
    .local v0, am:Landroid/app/AlarmManager;
    sget-object v6, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_3a

    .line 777
    sget-object v6, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 779
    :cond_3a
    sget-boolean v6, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v6, :cond_60

    .line 780
    const-string v6, "AlarmProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableNextAlert. t___ : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->digitToAlphabetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_60
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 788
    .local v4, out:Landroid/os/Parcel;
    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->writeToParcel(Landroid/os/Parcel;)V

    .line 790
    invoke-virtual {v4, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 792
    const-string v6, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 794
    invoke-static {p0, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mPendingIntent:Landroid/app/PendingIntent;

    .line 798
    iget-wide v6, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    sget-object v8, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v9, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 800
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 802
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 804
    .local v1, c:Ljava/util/Calendar;
    new-instance v6, Ljava/util/Date;

    iget-wide v7, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 806
    invoke-static {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    .line 808
    .local v5, timeString:Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 846
    .end local v1           #c:Ljava/util/Calendar;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #out:Landroid/os/Parcel;
    .end local v5           #timeString:Ljava/lang/String;
    :goto_a0
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->updateIndicatorAlarm(Landroid/content/Context;)V

    .line 848
    return-void

    .line 767
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_a4
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1c

    .line 816
    :cond_aa
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 819
    .restart local v0       #am:Landroid/app/AlarmManager;
    sget-object v6, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_c7

    .line 821
    sget-object v6, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 835
    :goto_bb
    const/4 v6, 0x0

    sput-object v6, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mPendingIntent:Landroid/app/PendingIntent;

    .line 837
    invoke-static {p0, v9}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 839
    const-string v6, ""

    invoke-static {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a0

    .line 826
    :cond_c7
    const-string v6, "TAG"

    const-string v7, "mPendingIntent == null am.cancel"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {p0, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mPendingIntent:Landroid/app/PendingIntent;

    .line 831
    sget-object v6, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_bb
.end method

.method private static formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "c"

    .prologue
    .line 302
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "E k:mm"

    .line 304
    .local v0, format:Ljava/lang/String;
    :goto_8
    if-nez p1, :cond_10

    const-string v1, ""

    :goto_c
    return-object v1

    .line 302
    .end local v0           #format:Ljava/lang/String;
    :cond_d
    const-string v0, "E h:mm aa"

    goto :goto_8

    .line 304
    .restart local v0       #format:Ljava/lang/String;
    :cond_10
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_c
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 332
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static final getNextAlarm(Landroid/content/Context;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .registers 16
    .parameter "context"

    .prologue
    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 577
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "active > 0"

    const/4 v4, 0x0

    const-string v5, "alerttime ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 582
    .local v6, c1:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 584
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1f

    .line 586
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 588
    const/4 v6, 0x0

    .line 590
    const/4 v1, 0x0

    .line 702
    :goto_1e
    return-object v1

    .line 594
    :cond_1f
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->DEBUG:Z

    if-eqz v1, :cond_40

    .line 596
    const-string v1, "AlarmProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextAlarm time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_40
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 602
    .local v13, time:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 604
    const/4 v6, 0x0

    .line 606
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alerttime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "createtime DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 611
    .local v7, c2:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 613
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 615
    .local v9, itemCount:I
    new-array v10, v9, [Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 617
    .local v10, items:[Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_70
    if-ge v8, v9, :cond_7e

    .line 619
    invoke-static {v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v1

    aput-object v1, v10, v8

    .line 621
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 617
    add-int/lit8 v8, v8, 0x1

    goto :goto_70

    .line 625
    :cond_7e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 627
    const/4 v7, 0x0

    .line 629
    const/4 v11, -0x1

    .line 631
    .local v11, next:I
    const/16 v12, 0x100

    .line 633
    .local v12, nextNotiType:I
    add-int/lit8 v8, v9, -0x1

    :goto_87
    if-ltz v8, :cond_ca

    .line 635
    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-lez v1, :cond_9f

    .line 637
    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    if-eqz v1, :cond_9d

    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_a2

    .line 641
    :cond_9d
    const/4 v12, 0x0

    .line 643
    move v11, v8

    .line 633
    :cond_9f
    :goto_9f
    add-int/lit8 v8, v8, -0x1

    goto :goto_87

    .line 645
    :cond_a2
    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b1

    .line 649
    if-eqz v12, :cond_9f

    .line 653
    const/16 v12, 0x100

    .line 655
    move v11, v8

    goto :goto_9f

    .line 657
    :cond_b1
    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->notificationType:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9f

    .line 661
    aget-object v1, v10, v8

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    if-nez v1, :cond_c4

    .line 663
    const/4 v12, 0x0

    .line 665
    move v11, v8

    goto :goto_9f

    .line 669
    :cond_c4
    if-eqz v12, :cond_9f

    .line 673
    const/16 v12, 0x100

    .line 675
    move v11, v8

    goto :goto_9f

    .line 685
    :cond_ca
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->DEBUG:Z

    if-eqz v1, :cond_fd

    .line 687
    const-string v1, "AlarmProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextAlarm select item at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    if-ltz v11, :cond_fd

    .line 692
    const-string v1, "AlarmProvider"

    aget-object v2, v10, v11

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_fd
    if-ltz v11, :cond_103

    .line 698
    aget-object v1, v10, v11

    goto/16 :goto_1e

    .line 702
    :cond_103
    const/4 v1, 0x0

    goto/16 :goto_1e
.end method

.method static saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "timeString"

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v0, :cond_25

    .line 326
    const-string v0, "AlarmProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tw843\tsaveNextAlarm() timeString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_25
    return-void
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 284
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 288
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 292
    :cond_1c
    return-void
.end method

.method private static setStatusBarIcon(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 858
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 860
    .local v0, alarmChanged:Landroid/content/Intent;
    const-string v1, "alarmSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 862
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 864
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 181
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    .local v0, args:Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 185
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, count:I
    if-lez v1, :cond_1a

    .line 189
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->sendNotify(Landroid/net/Uri;)V

    .line 191
    :cond_1a
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 198
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 200
    .local v0, args:Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;
    iget-object v1, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    :goto_23
    return-object v1

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 215
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 217
    .local v0, args:Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 219
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 221
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_19

    .line 229
    :goto_18
    return-object v4

    .line 225
    :cond_19
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 227
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 229
    goto :goto_18
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 236
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 247
    new-instance v8, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 249
    .local v8, args:Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 251
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 255
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 258
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 260
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 268
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 270
    .local v0, args:Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 272
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 274
    .local v1, count:I
    if-lez v1, :cond_1a

    .line 276
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->sendNotify(Landroid/net/Uri;)V

    .line 278
    :cond_1a
    return v1
.end method

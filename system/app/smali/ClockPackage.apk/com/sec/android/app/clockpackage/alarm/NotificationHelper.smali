.class public Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static mInstance:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;


# instance fields
.field private normalTimer:Ljava/util/Timer;

.field private normalTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

.field private subdueTimer:Ljava/util/Timer;

.field private subdueTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->DEBUG:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->mInstance:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimer:Ljava/util/Timer;

    .line 48
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimer:Ljava/util/Timer;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    .line 348
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "c"

    .prologue
    const/16 v7, 0xc

    .line 310
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->get24HourMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5d

    const-string v4, "kk:mm"

    .line 312
    .local v4, format:Ljava/lang/String;
    :goto_a
    const-string v5, "h:mm aa"

    if-ne v4, v5, :cond_6e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 315
    if-eqz p1, :cond_6b

    .line 317
    const/16 v5, 0xb

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 318
    .local v1, currentHour:I
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 319
    .local v2, currentMinute:I
    const/4 v0, 0x0

    .line 321
    .local v0, ampm:Ljava/lang/String;
    if-lt v1, v7, :cond_35

    const/16 v5, 0x18

    if-ne v1, v5, :cond_60

    .line 322
    :cond_35
    const v5, 0x7f0b0026

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_3c
    rem-int/lit8 v5, v1, 0xc

    if-nez v5, :cond_68

    .line 328
    const/16 v1, 0xc

    .line 333
    :goto_42
    const-string v5, "%s %02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .end local v0           #ampm:Ljava/lang/String;
    .end local v1           #currentHour:I
    .end local v2           #currentMinute:I
    :goto_5c
    return-object v3

    .line 310
    .end local v4           #format:Ljava/lang/String;
    :cond_5d
    const-string v4, "h:mm aa"

    goto :goto_a

    .line 324
    .restart local v0       #ampm:Ljava/lang/String;
    .restart local v1       #currentHour:I
    .restart local v2       #currentMinute:I
    .restart local v4       #format:Ljava/lang/String;
    :cond_60
    const v5, 0x7f0b0027

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 330
    :cond_68
    rem-int/lit8 v1, v1, 0xc

    goto :goto_42

    .line 338
    .end local v0           #ampm:Ljava/lang/String;
    .end local v1           #currentHour:I
    .end local v2           #currentMinute:I
    :cond_6b
    const-string v3, ""

    goto :goto_5c

    .line 342
    :cond_6e
    if-nez p1, :cond_74

    const-string v5, ""

    :goto_72
    move-object v3, v5

    goto :goto_5c

    :cond_74
    invoke-static {v4, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_72
.end method

.method public static getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->mInstance:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->mInstance:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    .line 62
    :cond_b
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->mInstance:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    return-object v0
.end method

.method private static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 303
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public cancel(Landroid/content/Context;I)V
    .registers 10
    .parameter "context"
    .parameter "id"

    .prologue
    const v6, 0x10002000

    const v5, 0x10001000

    const/4 v4, 0x0

    .line 245
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->DEBUG:Z

    if-eqz v1, :cond_27

    .line 247
    const-string v1, "NotificationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel notification : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_27
    if-ne p2, v5, :cond_54

    .line 251
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->DEBUG:Z

    if-eqz v1, :cond_34

    .line 253
    const-string v1, "NotificationHelper"

    const-string v2, "Delete normal timer task."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_34
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimer:Ljava/util/Timer;

    if-eqz v1, :cond_4a

    .line 257
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->DEBUG:Z

    if-eqz v1, :cond_43

    .line 259
    const-string v1, "NotificationHelper"

    const-string v2, "Delete normal timer."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_43
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 263
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimer:Ljava/util/Timer;

    .line 267
    :cond_4a
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    .line 269
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 271
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 299
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_53
    :goto_53
    return-void

    .line 273
    :cond_54
    if-ne p2, v6, :cond_53

    .line 275
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->DEBUG:Z

    if-eqz v1, :cond_61

    .line 277
    const-string v1, "NotificationHelper"

    const-string v2, "Delete smart timer task."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_61
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimer:Ljava/util/Timer;

    if-eqz v1, :cond_77

    .line 281
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->DEBUG:Z

    if-eqz v1, :cond_70

    .line 283
    const-string v1, "NotificationHelper"

    const-string v2, "Delete smart timer."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_70
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 287
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimer:Ljava/util/Timer;

    .line 291
    :cond_77
    iput-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    .line 293
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 295
    .restart local v0       #nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_53
.end method

.method public notify(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;IJ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 147
    iget-wide v2, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 149
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 151
    const v3, 0x10001000

    if-ne p3, v3, :cond_95

    .line 153
    const-class v3, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 167
    invoke-virtual {p2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->writeToParcel(Landroid/os/Parcel;)V

    .line 169
    const-string v4, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 171
    iget v3, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    const/4 v4, 0x0

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 174
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f0201f8

    iget-object v5, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    iget-wide v6, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmAlertTime:J

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 177
    iget-object v4, p2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    const v5, 0x7f0b006a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v4, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 181
    iget v1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 183
    invoke-virtual {v0, p3, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 185
    const v0, 0x10001000

    if-ne p3, v0, :cond_a1

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    if-eqz v0, :cond_76

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_73

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimer:Ljava/util/Timer;

    .line 197
    :cond_73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    .line 201
    :cond_76
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_94

    .line 203
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    const v1, 0x10001000

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;-><init>(Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    .line 206
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimer:Ljava/util/Timer;

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->normalTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    invoke-virtual {v0, v1, p4, p5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 241
    :cond_94
    :goto_94
    return-void

    .line 156
    :cond_95
    const v3, 0x10002000

    if-ne p3, v3, :cond_1c

    .line 158
    const-class v3, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_1c

    .line 212
    :cond_a1
    const v0, 0x10002000

    if-ne p3, v0, :cond_94

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    if-eqz v0, :cond_b9

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimer:Ljava/util/Timer;

    if-eqz v0, :cond_b6

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimer:Ljava/util/Timer;

    .line 224
    :cond_b6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    .line 228
    :cond_b9
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_94

    .line 230
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    const v1, 0x10002000

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;-><init>(Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    .line 233
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimer:Ljava/util/Timer;

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->subdueTimerTask:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;

    invoke-virtual {v0, v1, p4, p5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_94
.end method

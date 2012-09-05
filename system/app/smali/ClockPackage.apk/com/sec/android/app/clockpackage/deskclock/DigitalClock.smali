.class public Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$FormatChangeObserver;,
        Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;
    }
.end annotation


# instance fields
.field private mAmPm:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;

.field private mAttached:Z

.field private mBigNumbers_night:[I

.field private mCalendar:Ljava/util/Calendar;

.field private mDate:Ljava/util/Date;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHour1:Landroid/view/View;

.field private mHour2:Landroid/view/View;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mMin1:Landroid/view/View;

.field private mMin2:Landroid/view/View;

.field private mScreenDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mLive:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mBigNumbers_night:[I

    .line 127
    return-void

    .line 247
    :array_1e
    .array-data 0x4
        0x5ft 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)Ljava/util/Date;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;Ljava/util/Date;)Ljava/util/Date;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->setDateFormat()V

    return-void
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 258
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private setDateFormat()V
    .registers 4

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "kkmm"

    :goto_c
    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mFormat:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mAmPm:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "hhmm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 237
    return-void

    .line 234
    :cond_1c
    const-string v0, "hhmm"

    goto :goto_c
.end method

.method private updateTime()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 199
    iget-boolean v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mLive:Z

    if-eqz v5, :cond_12

    .line 200
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 202
    :cond_12
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 204
    .local v0, newTime:Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mDate:Ljava/util/Date;

    .line 205
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 206
    .local v1, time:J
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->setDateText(J)V

    .line 208
    const-string v5, "DIGITALCLOCK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->get24HourMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_ae

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_ae

    .line 212
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mHour1:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :goto_5f
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mHour2:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mBigNumbers_night:[I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 224
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mMin1:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mBigNumbers_night:[I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 226
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mMin2:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mBigNumbers_night:[I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mAmPm:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_c9

    :goto_aa
    invoke-virtual {v5, v3}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 230
    return-void

    .line 214
    :cond_ae
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mHour1:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mBigNumbers_night:[I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 216
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mHour1:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5f

    :cond_c9
    move v3, v4

    .line 229
    goto :goto_aa
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 151
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 155
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mAttached:Z

    if-eqz v1, :cond_9

    .line 175
    :goto_8
    return-void

    .line 157
    :cond_9
    iput-boolean v4, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mAttached:Z

    .line 159
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mLive:Z

    if-eqz v1, :cond_31

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_31
    new-instance v1, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$FormatChangeObserver;-><init>(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->updateTime()V

    goto :goto_8
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 181
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mAttached:Z

    if-nez v0, :cond_8

    .line 190
    :goto_7
    return-void

    .line 183
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mAttached:Z

    .line 185
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mLive:Z

    if-eqz v0, :cond_18

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_7
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 136
    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mHour1:Landroid/view/View;

    .line 137
    const v0, 0x7f0e00ba

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mHour2:Landroid/view/View;

    .line 138
    const v0, 0x7f0e00bc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mMin1:Landroid/view/View;

    .line 139
    const v0, 0x7f0e00bd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mMin2:Landroid/view/View;

    .line 140
    const v0, 0x7f0e00bf

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mScreenDate:Landroid/widget/TextView;

    .line 143
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mAmPm:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->setDateFormat()V

    .line 147
    return-void
.end method

.method public setDateText(J)V
    .registers 9
    .parameter "time"

    .prologue
    .line 264
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 268
    :cond_28
    const-string v4, "MMMM d"

    invoke-static {v4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, dayValue1:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 272
    const-string v4, " (EEEE)"

    invoke-static {v4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, dayValue2:Ljava/lang/String;
    :goto_50
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, dayValue3:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mScreenDate:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .end local v1           #dayValue1:Ljava/lang/String;
    .end local v2           #dayValue2:Ljava/lang/String;
    .end local v3           #dayValue3:Ljava/lang/String;
    :goto_75
    return-void

    .line 275
    .restart local v1       #dayValue1:Ljava/lang/String;
    :cond_76
    const-string v4, ", EEEE"

    invoke-static {v4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #dayValue2:Ljava/lang/String;
    goto :goto_50

    .line 283
    .end local v1           #dayValue1:Ljava/lang/String;
    .end local v2           #dayValue2:Ljava/lang/String;
    :cond_81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 285
    const-string v4, ", E"

    invoke-static {v4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    .restart local v1       #dayValue1:Ljava/lang/String;
    const-string v4, "MMM d"

    invoke-static {v4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .restart local v2       #dayValue2:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 288
    .restart local v3       #dayValue3:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mScreenDate:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_75

    .line 292
    .end local v1           #dayValue1:Ljava/lang/String;
    .end local v2           #dayValue2:Ljava/lang/String;
    .end local v3           #dayValue3:Ljava/lang/String;
    :cond_cf
    const-string v4, "E. MMM. d"

    invoke-static {v4, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, dayValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mScreenDate:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_75
.end method

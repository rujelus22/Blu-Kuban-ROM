.class public Lcom/google/android/apps/plus/util/EventDateUtils;
.super Ljava/lang/Object;
.source "EventDateUtils.java"


# static fields
.field private static sToday:Ljava/lang/String;

.field private static sTodayMsec:J

.field private static sTomorrow:Ljava/lang/String;

.field private static sTomorrowMsec:J

.field private static sYesterday:Ljava/lang/String;

.field private static sYesterdayMsec:J


# direct methods
.method public static getDateRange(Landroid/content/Context;Lcom/google/api/services/plusi/model/EventTime;Lcom/google/api/services/plusi/model/EventTime;Z)Ljava/lang/String;
    .registers 15
    .parameter "context"
    .parameter "start"
    .parameter "end"
    .parameter "abbreviated"

    .prologue
    .line 103
    invoke-static {p0}, Lcom/google/android/apps/plus/util/EventDateUtils;->initializeStrings(Landroid/content/Context;)V

    .line 105
    iget-object v8, p1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 106
    .local v5, startMsec:J
    invoke-static {p0, v5, v6, p3}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDisplayDate(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, startDate:Ljava/lang/String;
    invoke-static {p0, v5, v6, p3}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDisplayTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, startTime:Ljava/lang/String;
    if-nez p2, :cond_28

    .line 110
    if-eqz p3, :cond_25

    const-string v8, "%s %s"

    :goto_17
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 123
    :goto_24
    return-object v8

    .line 110
    :cond_25
    const-string v8, "%s, %s"

    goto :goto_17

    .line 114
    :cond_28
    iget-object v8, p2, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 115
    .local v1, endMsec:J
    invoke-static {p0, v1, v2, p3}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDisplayDate(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, endDate:Ljava/lang/String;
    invoke-static {p0, v1, v2, p3}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDisplayTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, endTime:Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 120
    const-string v8, "%s, %s - %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_24

    .line 123
    :cond_4f
    const-string v8, "%s, %s - %s, %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    const/4 v10, 0x2

    aput-object v0, v9, v10

    const/4 v10, 0x3

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_24
.end method

.method private static getDisplayDate(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "dateMsec"
    .parameter "abbreviated"

    .prologue
    const-wide/32 v4, 0x5265c00

    .line 197
    if-eqz p3, :cond_1c

    const v2, 0x10018

    :goto_8
    invoke-static {p0, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, endDate:Ljava/lang/String;
    sget-wide v2, Lcom/google/android/apps/plus/util/EventDateUtils;->sTodayMsec:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_20

    sget-wide v2, Lcom/google/android/apps/plus/util/EventDateUtils;->sTodayMsec:J

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_20

    .line 201
    sget-object v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sToday:Ljava/lang/String;

    .line 210
    .local v1, returnText:Ljava/lang/String;
    :goto_1b
    return-object v1

    .line 197
    .end local v0           #endDate:Ljava/lang/String;
    .end local v1           #returnText:Ljava/lang/String;
    :cond_1c
    const v2, 0x8012

    goto :goto_8

    .line 202
    .restart local v0       #endDate:Ljava/lang/String;
    :cond_20
    sget-wide v2, Lcom/google/android/apps/plus/util/EventDateUtils;->sTomorrowMsec:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_30

    sget-wide v2, Lcom/google/android/apps/plus/util/EventDateUtils;->sTomorrowMsec:J

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_30

    .line 203
    sget-object v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sTomorrow:Ljava/lang/String;

    .restart local v1       #returnText:Ljava/lang/String;
    goto :goto_1b

    .line 204
    .end local v1           #returnText:Ljava/lang/String;
    :cond_30
    sget-wide v2, Lcom/google/android/apps/plus/util/EventDateUtils;->sYesterdayMsec:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_40

    sget-wide v2, Lcom/google/android/apps/plus/util/EventDateUtils;->sYesterdayMsec:J

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_40

    .line 205
    sget-object v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sYesterday:Ljava/lang/String;

    .restart local v1       #returnText:Ljava/lang/String;
    goto :goto_1b

    .line 207
    .end local v1           #returnText:Ljava/lang/String;
    :cond_40
    move-object v1, v0

    .restart local v1       #returnText:Ljava/lang/String;
    goto :goto_1b
.end method

.method private static getDisplayTime(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "dateMsec"
    .parameter "abbreviated"

    .prologue
    .line 184
    if-eqz p3, :cond_9

    const/16 v0, 0x4b41

    :goto_4
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/16 v0, 0xb01

    goto :goto_4
.end method

.method public static getEndDisplayLine(Landroid/content/Context;Lcom/google/api/services/plusi/model/EventTime;Z)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "endTime"
    .parameter "abbreviated"

    .prologue
    .line 152
    iget-object v4, p1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 153
    .local v1, dateMsec:J
    invoke-static {p0, v1, v2, p2}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDisplayDate(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, date:Ljava/lang/String;
    invoke-static {p0, v1, v2, p2}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDisplayTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, time:Ljava/lang/String;
    const-string v4, "%s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getSingleDisplayLine(Landroid/content/Context;Lcom/google/api/services/plusi/model/EventTime;Z)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "inTime"
    .parameter "abbreviated"

    .prologue
    .line 168
    iget-object v4, p1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 169
    .local v1, dateMsec:J
    invoke-static {p0, v1, v2, p2}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDisplayDate(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, date:Ljava/lang/String;
    invoke-static {p0, v1, v2, p2}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDisplayTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, time:Ljava/lang/String;
    const-string v4, "%s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getStartDisplayLine(Landroid/content/Context;Lcom/google/api/services/plusi/model/EventTime;Z)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "startTime"
    .parameter "abbreviated"

    .prologue
    .line 135
    iget-object v4, p1, Lcom/google/api/services/plusi/model/EventTime;->timeMs:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 136
    .local v1, dateMsec:J
    invoke-static {p0, v1, v2, p2}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDisplayDate(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, date:Ljava/lang/String;
    invoke-static {p0, v1, v2, p2}, Lcom/google/android/apps/plus/util/EventDateUtils;->getDisplayTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, time:Ljava/lang/String;
    const-string v4, "%s, %s -"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static initializeStrings(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const-wide/32 v6, 0x5265c00

    const/4 v5, 0x0

    .line 215
    sget-object v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sToday:Ljava/lang/String;

    if-nez v1, :cond_23

    .line 216
    const v1, 0x7f080423

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sToday:Ljava/lang/String;

    .line 217
    const v1, 0x7f080424

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sTomorrow:Ljava/lang/String;

    .line 218
    const v1, 0x7f080425

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sYesterday:Ljava/lang/String;

    .line 222
    :cond_23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 223
    .local v0, today:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/google/android/apps/plus/util/EventDateUtils;->sTomorrowMsec:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_55

    .line 224
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 225
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 226
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 227
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 229
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sTodayMsec:J

    .line 230
    sget-wide v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sTodayMsec:J

    add-long/2addr v1, v6

    sput-wide v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sTomorrowMsec:J

    .line 231
    sget-wide v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sTodayMsec:J

    sub-long/2addr v1, v6

    sput-wide v1, Lcom/google/android/apps/plus/util/EventDateUtils;->sYesterdayMsec:J

    .line 233
    :cond_55
    return-void
.end method

.class public Lcom/sec/android/app/clockpackage/alarm/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static mBuilder:Ljava/lang/StringBuilder;

.field private static mFmt:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/Utilities;->mBuilder:Ljava/lang/StringBuilder;

    .line 15
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Utilities;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/Utilities;->mFmt:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAmPmHour(I)I
    .registers 3
    .parameter "h"

    .prologue
    .line 92
    const/4 v0, 0x1

    .line 94
    .local v0, mul:I
    const/16 v1, 0xc

    if-ge p0, v1, :cond_6

    .line 96
    const/4 v0, -0x1

    .line 100
    :cond_6
    rem-int/lit8 p0, p0, 0xc

    .line 102
    if-nez p0, :cond_c

    .line 104
    const/16 p0, 0xc

    .line 106
    :cond_c
    mul-int v1, v0, p0

    return v1
.end method

.method public static final toDigitString(I)Ljava/lang/String;
    .registers 5
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 37
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 39
    .local v0, mArgs:[Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 41
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Utilities;->mBuilder:Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Utilities;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 43
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Utilities;->mFmt:Ljava/util/Formatter;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 45
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Utilities;->mFmt:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final toTwoDigitString(I)Ljava/lang/String;
    .registers 5
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 23
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 25
    .local v0, mArgs:[Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 27
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Utilities;->mBuilder:Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Utilities;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 29
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Utilities;->mFmt:Ljava/util/Formatter;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%02d"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 31
    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Utilities;->mFmt:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final updateIndicatorAlarm(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "active > 0"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 57
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 59
    .local v7, alarmCount:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 61
    const/4 v8, 0x0

    .line 63
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v6, alarmChanged:Landroid/content/Intent;
    const-string v1, "alarmSet"

    if-lez v7, :cond_2a

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    return-void

    .line 65
    :cond_2a
    const/4 v0, 0x0

    goto :goto_23
.end method

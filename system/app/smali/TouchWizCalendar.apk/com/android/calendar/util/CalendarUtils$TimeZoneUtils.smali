.class public Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/util/CalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    }
.end annotation


# static fields
.field private static final DAY_VIEW_ARGS:[Ljava/lang/String;

.field private static final FIRSTDAY_OF_WEEK_ARGS:[Ljava/lang/String;

.field private static final TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

.field private static final TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

.field private static mF:Ljava/util/Formatter;

.field private static volatile mFirstTZRequest:Z

.field private static mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

.field private static volatile mHomeTZ:Ljava/lang/String;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static mTZCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mTZQueryInProgress:Z

.field private static mToken:I

.field private static volatile mUseHomeTZ:Z


# instance fields
.field private final mPrefsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "timezoneType"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    .line 59
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "timezoneInstances"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    .line 63
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "firstdayOfWeek"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->FIRSTDAY_OF_WEEK_ARGS:[Ljava/lang/String;

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dayView"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->DAY_VIEW_ARGS:[Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    .line 73
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    .line 75
    sput-boolean v4, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 77
    sput-boolean v3, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 79
    sput-boolean v3, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 81
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    .line 85
    sput v4, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "prefsName"

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    sput-boolean p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    sput-object p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    sput-boolean p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    return p0
.end method


# virtual methods
.method public format(Landroid/content/Context;Ljava/lang/CharSequence;J)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "inFormat"
    .parameter "inTimeInMillis"

    .prologue
    .line 212
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, tz:Ljava/lang/String;
    sget-object v3, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    monitor-enter v3

    .line 216
    :try_start_8
    sget-object v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 217
    invoke-static {p2, p3, p4, v1}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, date:Ljava/lang/String;
    monitor-exit v3

    .line 219
    return-object v0

    .line 218
    .end local v0           #date:Ljava/lang/String;
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .registers 18
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 198
    move/from16 v0, p6

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_32

    .line 199
    const-string v8, "UTC"

    .line 203
    .local v8, tz:Ljava/lang/String;
    :goto_8
    sget-object v10, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    monitor-enter v10

    .line 204
    :try_start_b
    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 205
    sget-object v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    invoke-static/range {v1 .. v8}, Lcom/android/calendar/util/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 207
    .local v9, date:Ljava/lang/String;
    monitor-exit v10
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_38

    .line 208
    const-string v1, "pm"

    const-string v2, " PM"

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "am"

    const-string v3, " AM"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 201
    .end local v8           #tz:Ljava/lang/String;
    .end local v9           #date:Ljava/lang/String;
    :cond_32
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #tz:Ljava/lang/String;
    goto :goto_8

    .line 207
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v10
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 344
    sget-object v10, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v10

    .line 345
    :try_start_3
    sget-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    if-eqz v0, :cond_48

    .line 346
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 347
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 349
    iget-object v0, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/calendar/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 350
    .local v9, prefs:Landroid/content/SharedPreferences;
    const-string v0, "preferences_home_tz_enabled"

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 351
    const-string v0, "preferences_home_tz"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 358
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_5e

    if-nez v0, :cond_37

    .line 360
    :try_start_2c
    new-instance v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_5e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_59

    .line 365
    :cond_37
    :goto_37
    :try_start_37
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v0, :cond_48

    .line 366
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .end local v9           #prefs:Landroid/content/SharedPreferences;
    :cond_48
    sget-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz v0, :cond_51

    .line 371
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_51
    monitor-exit v10
    :try_end_52
    .catchall {:try_start_37 .. :try_end_52} :catchall_5e

    .line 374
    sget-boolean v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v0, :cond_61

    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    :goto_58
    return-object v0

    .line 361
    .restart local v9       #prefs:Landroid/content/SharedPreferences;
    :catch_59
    move-exception v8

    .line 362
    .local v8, e:Ljava/lang/Exception;
    :try_start_5a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37

    .line 373
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #prefs:Landroid/content/SharedPreferences;
    :catchall_5e
    move-exception v0

    monitor-exit v10
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_5e

    throw v0

    .line 374
    :cond_61
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    goto :goto_58
.end method

.method public setDayView(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "dayView"

    .prologue
    .line 223
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 224
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v0, :cond_10

    .line 225
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->cancelOperation(I)V

    .line 228
    :cond_10
    new-instance v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 231
    sget v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez v0, :cond_26

    .line 232
    const/4 v0, 0x1

    sput v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    .line 235
    :cond_26
    sget-object v0, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v7, v0, v1

    .line 237
    .local v7, dayViewClassName:Ljava/lang/String;
    const-string v0, "value"

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v5, "key=?"

    sget-object v6, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->DAY_VIEW_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setFirstDayOfWeek(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "firstdayOfWeek"

    .prologue
    .line 243
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v0, :cond_10

    .line 245
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->cancelOperation(I)V

    .line 248
    :cond_10
    new-instance v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 251
    sget v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez v0, :cond_26

    .line 252
    const/4 v0, 0x1

    sput v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    .line 255
    :cond_26
    const-string v0, "value"

    invoke-virtual {v4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v5, "key=?"

    sget-object v6, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->FIRSTDAY_OF_WEEK_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .registers 18
    .parameter "context"
    .parameter "timeZone"

    .prologue
    .line 271
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 325
    :cond_6
    :goto_6
    return-void

    .line 277
    :cond_7
    const/4 v14, 0x0

    .line 278
    .local v14, updatePrefs:Z
    sget-object v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v2

    .line 279
    :try_start_b
    const-string v1, "auto"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 280
    sget-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_1a

    .line 281
    const/4 v14, 0x1

    .line 283
    :cond_1a
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 291
    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_ab

    .line 292
    if-eqz v14, :cond_6

    .line 294
    iget-object v1, p0, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/calendar/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 295
    .local v13, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_home_tz_enabled"

    sget-boolean v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    invoke-static {v13, v1, v2}, Lcom/android/calendar/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 296
    const-string v1, "preferences_home_tz"

    sget-object v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-static {v13, v1, v2}, Lcom/android/calendar/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v5, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v1, :cond_46

    .line 301
    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->cancelOperation(I)V

    .line 304
    :cond_46
    new-instance v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 307
    sget v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez v1, :cond_5c

    .line 308
    const/4 v1, 0x1

    sput v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    .line 312
    :cond_5c
    const-string v2, "value"

    sget-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_ae

    const-string v1, "home"

    :goto_64
    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v6, "key=?"

    sget-object v7, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 318
    sget-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_6

    .line 319
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 320
    .local v10, values2:Landroid/content/ContentValues;
    const-string v1, "value"

    sget-object v2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v6, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v7, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v8, 0x0

    sget-object v9, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v11, "key=?"

    sget-object v12, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v6 .. v12}, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_6

    .line 285
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v10           #values2:Landroid/content/ContentValues;
    .end local v13           #prefs:Landroid/content/SharedPreferences;
    :cond_95
    :try_start_95
    sget-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_a3

    sget-object v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 286
    :cond_a3
    const/4 v14, 0x1

    .line 288
    :cond_a4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 289
    sput-object p2, Lcom/android/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    goto/16 :goto_1d

    .line 291
    :catchall_ab
    move-exception v1

    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_ab

    throw v1

    .line 312
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v13       #prefs:Landroid/content/SharedPreferences;
    :cond_ae
    const-string v1, "auto"

    goto :goto_64
.end method

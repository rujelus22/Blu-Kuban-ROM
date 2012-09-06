.class public Lcom/android/calendar/CalendarUtils$TimeZoneUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    }
.end annotation


# static fields
.field public static final CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

.field private static final TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

.field private static final TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

.field private static mF:Ljava/util/Formatter;

.field private static volatile mFirstTZRequest:Z

.field private static mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

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

    .line 49
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "timezoneType"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    .line 50
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "timezoneInstances"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    .line 57
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    .line 58
    sput-boolean v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 59
    sput-boolean v3, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 61
    sput-boolean v3, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 62
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    .line 65
    sput v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "prefsName"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    .line 151
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    return p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    sput-object p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/calendar/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .registers 18
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 173
    move/from16 v0, p6

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_22

    .line 174
    const-string v8, "UTC"

    .line 178
    .local v8, tz:Ljava/lang/String;
    :goto_8
    sget-object v10, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    monitor-enter v10

    .line 179
    :try_start_b
    sget-object v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 180
    sget-object v2, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, date:Ljava/lang/String;
    monitor-exit v10
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_28

    .line 183
    return-object v9

    .line 176
    .end local v8           #tz:Ljava/lang/String;
    .end local v9           #date:Ljava/lang/String;
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #tz:Ljava/lang/String;
    goto :goto_8

    .line 182
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v10
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 270
    sget-object v9, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v9

    .line 271
    :try_start_3
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    if-eqz v0, :cond_45

    .line 272
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 273
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 275
    iget-object v0, p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/calendar/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 276
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v0, "preferences_home_tz_enabled"

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 277
    const-string v0, "preferences_home_tz"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 283
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-nez v0, :cond_37

    .line 284
    new-instance v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 286
    :cond_37
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    :cond_45
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz v0, :cond_4e

    .line 290
    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_4e
    monitor-exit v9
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_56

    .line 293
    sget-boolean v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v0, :cond_59

    sget-object v0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    :goto_55
    return-object v0

    .line 292
    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit v9
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0

    .line 293
    :cond_59
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    goto :goto_55
.end method

.method public setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .registers 18
    .parameter "context"
    .parameter "timeZone"

    .prologue
    .line 199
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 253
    :cond_6
    :goto_6
    return-void

    .line 205
    :cond_7
    const/4 v14, 0x0

    .line 206
    .local v14, updatePrefs:Z
    sget-object v2, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v2

    .line 207
    :try_start_b
    const-string v1, "auto"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 208
    sget-boolean v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_1a

    .line 209
    const/4 v14, 0x1

    .line 211
    :cond_1a
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 219
    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_ab

    .line 220
    if-eqz v14, :cond_6

    .line 222
    iget-object v1, p0, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 223
    .local v13, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_home_tz_enabled"

    sget-boolean v2, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    invoke-static {v13, v1, v2}, Lcom/android/calendar/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 224
    const-string v1, "preferences_home_tz"

    sget-object v2, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-static {v13, v1, v2}, Lcom/android/calendar/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v5, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v1, :cond_46

    .line 229
    sget-object v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v2, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->cancelOperation(I)V

    .line 232
    :cond_46
    new-instance v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcom/android/calendar/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 235
    sget v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez v1, :cond_5c

    .line 236
    const/4 v1, 0x1

    sput v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    .line 240
    :cond_5c
    const-string v2, "value"

    sget-boolean v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_ae

    const-string v1, "home"

    :goto_64
    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v2, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v6, "key=?"

    sget-object v7, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 246
    sget-boolean v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_6

    .line 247
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 248
    .local v10, values2:Landroid/content/ContentValues;
    const-string v1, "value"

    sget-object v2, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v6, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHandler:Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v7, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v8, 0x0

    sget-object v9, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v11, "key=?"

    sget-object v12, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v6 .. v12}, Lcom/android/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_6

    .line 213
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v10           #values2:Landroid/content/ContentValues;
    .end local v13           #prefs:Landroid/content/SharedPreferences;
    :cond_95
    :try_start_95
    sget-boolean v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_a3

    sget-object v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 214
    :cond_a3
    const/4 v14, 0x1

    .line 216
    :cond_a4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 217
    sput-object p2, Lcom/android/calendar/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    goto/16 :goto_1d

    .line 219
    :catchall_ab
    move-exception v1

    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_ab

    throw v1

    .line 240
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v13       #prefs:Landroid/content/SharedPreferences;
    :cond_ae
    const-string v1, "auto"

    goto :goto_64
.end method

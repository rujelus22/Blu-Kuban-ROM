.class public Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;
.super Landroid/app/Activity;
.source "DigitalDualClockView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;,
        Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;,
        Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClock;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;


# instance fields
.field private date_format_observer:Landroid/database/ContentObserver;

.field private evt_receiver:Landroid/content/BroadcastReceiver;

.field private mCityID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

.field private mHandler:Landroid/os/Handler;

.field private mSecTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    .line 53
    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityList:Ljava/util/ArrayList;

    .line 54
    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityID:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mHandler:Landroid/os/Handler;

    .line 524
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$1;-><init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->evt_receiver:Landroid/content/BroadcastReceiver;

    .line 559
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$2;-><init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->date_format_observer:Landroid/database/ContentObserver;

    .line 989
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$5;-><init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mSecTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->updateDualView(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getDelayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createDualView()V
    .registers 4

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 205
    .local v0, rotate:I
    packed-switch v0, :pswitch_data_22

    .line 209
    :pswitch_f
    new-instance v1, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;-><init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;I)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    .line 216
    :goto_17
    return-void

    .line 213
    :pswitch_18
    new-instance v1, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;-><init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;I)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    goto :goto_17

    .line 205
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
        :pswitch_f
        :pswitch_18
    .end packed-switch
.end method

.method private finiDigitalDualClock()V
    .registers 2

    .prologue
    .line 182
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    if-eqz v0, :cond_9

    .line 183
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->destory()Z

    .line 186
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->unregisterEVTReceiver()V

    .line 187
    return-void
.end method

.method private getContentValues(Lcom/sec/android/widgetapp/dualclock/City$CityInfo;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .parameter "city"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 346
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v0, value:Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getRawOffsetMillis()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    const-string v1, "insert"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 351
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 355
    :cond_42
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getUniqueID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    return-object v0
.end method

.method private getDBAll()Landroid/database/Cursor;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 331
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->DATA_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getDelayTime()J
    .registers 9

    .prologue
    .line 975
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 976
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 977
    .local v4, sec:I
    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 979
    .local v3, millisec:I
    const-string v5, "haeju"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     sec = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/dualclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v5, "haeju"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "millisec = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/dualclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const v5, 0xea60

    mul-int/lit16 v6, v4, 0x3e8

    add-int/2addr v6, v3

    sub-int/2addr v5, v6

    int-to-long v1, v5

    .line 984
    .local v1, delayTime:J
    const-string v5, "haeju"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delayTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/dualclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    return-wide v1
.end method

.method private initDigitalDualClock()V
    .registers 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->createDualView()V

    .line 176
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->registerCityInfo()V

    .line 177
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->updateCurrentLocationTime()V

    .line 178
    return-void
.end method

.method private pauseDigitalDualClock()V
    .registers 1

    .prologue
    .line 200
    return-void
.end method

.method private registerCityInfo()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 251
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 252
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/sec/android/widgetapp/dualclock/DualClockUtils;->getAddedCityListCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v5

    .line 254
    .local v5, cursor:Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_48

    .line 256
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 258
    .local v4, curr_time_zone:Ljava/util/TimeZone;
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4c

    .line 259
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 260
    .local v10, tmp:[Ljava/lang/String;
    aget-object v2, v10, v13

    .line 265
    .end local v10           #tmp:[Ljava/lang/String;
    .local v2, city_name:Ljava/lang/String;
    :goto_33
    sget-object v1, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    .line 266
    .local v1, cityI:Lcom/sec/android/widgetapp/dualclock/City;
    invoke-static {v3, v2}, Lcom/sec/android/widgetapp/dualclock/DualClockUtils;->getIndexName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v0

    .line 270
    .local v0, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    :try_start_3d
    sget-object v11, Lcom/sec/android/widgetapp/dualclock/Const;->DATA_URI:Landroid/net/Uri;

    const-string v12, "insert"

    invoke-direct {p0, v0, v12}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getContentValues(Lcom/sec/android/widgetapp/dualclock/City$CityInfo;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_48
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_48} :catch_54
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3d .. :try_end_48} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_48} :catch_67

    .line 280
    .end local v0           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v1           #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .end local v2           #city_name:Ljava/lang/String;
    .end local v4           #curr_time_zone:Ljava/util/TimeZone;
    :cond_48
    :goto_48
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 281
    return-void

    .line 262
    .restart local v4       #curr_time_zone:Ljava/util/TimeZone;
    :cond_4c
    const v11, 0x7f080004

    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #city_name:Ljava/lang/String;
    goto :goto_33

    .line 272
    .restart local v0       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v1       #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    :catch_54
    move-exception v7

    .line 273
    .local v7, ne:Ljava/lang/NullPointerException;
    sget-object v11, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->TAG:Ljava/lang/String;

    const-string v12, "NullPointerException"

    invoke-static {v11, v12, v7}, Lcom/sec/android/widgetapp/dualclock/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_48

    .line 274
    .end local v7           #ne:Ljava/lang/NullPointerException;
    :catch_5d
    move-exception v9

    .line 275
    .local v9, se:Landroid/database/sqlite/SQLiteFullException;
    new-instance v11, Lcom/sec/android/widgetapp/dualclock/Messages;

    invoke-direct {v11}, Lcom/sec/android/widgetapp/dualclock/Messages;-><init>()V

    invoke-virtual {v11, v3, v13}, Lcom/sec/android/widgetapp/dualclock/Messages;->showTOAST(Landroid/content/Context;I)V

    goto :goto_48

    .line 276
    .end local v9           #se:Landroid/database/sqlite/SQLiteFullException;
    :catch_67
    move-exception v6

    .line 277
    .local v6, e:Ljava/lang/Exception;
    sget-object v11, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->TAG:Ljava/lang/String;

    const-string v12, "Exception"

    invoke-static {v11, v12, v6}, Lcom/sec/android/widgetapp/dualclock/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_48
.end method

.method private registerEVTReceiver()V
    .registers 5

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings/system/date_format"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->date_format_observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mSecTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    return-void
.end method

.method private resumeDigitalDualClock()V
    .registers 3

    .prologue
    .line 191
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    if-nez v0, :cond_f

    .line 192
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    .line 194
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->updateDualView(Z)V

    .line 196
    return-void
.end method

.method private unregisterEVTReceiver()V
    .registers 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->date_format_observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 244
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mSecTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method private updateCurrentLocationTime()V
    .registers 9

    .prologue
    .line 362
    sget-object v6, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    if-nez v6, :cond_f

    .line 363
    new-instance v6, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    .line 365
    :cond_f
    new-instance v4, Lcom/sec/android/widgetapp/dualclock/SharedPreference;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;-><init>(Landroid/content/Context;)V

    .line 367
    .local v4, sharedPreference:Lcom/sec/android/widgetapp/dualclock/SharedPreference;
    invoke-virtual {v4}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->getUserSettingFlag()Z

    move-result v6

    if-nez v6, :cond_26

    .line 368
    sget-object v6, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->updateCurrentTimeZoneAtWidget()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 410
    :cond_26
    :goto_26
    return-void

    .line 370
    :cond_27
    sget-object v6, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->isCurrentTimezoneCitiesExist()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 373
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 375
    .local v2, currentOffset:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityList:Ljava/util/ArrayList;

    .line 376
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityID:Ljava/util/ArrayList;

    .line 378
    sget-object v6, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getCurrentTimezoneCities()Ljava/util/Iterator;

    move-result-object v3

    .line 380
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_26

    .line 381
    :cond_51
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 382
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 383
    .local v5, uniqueID:I
    sget-object v6, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, cn:Ljava/lang/String;
    sget-object v6, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-virtual {v6, v1}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v0

    .line 388
    .local v0, ci:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    iget v6, v0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->rawOffset:I

    if-ne v2, v6, :cond_51

    .line 389
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityID:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 393
    .end local v0           #ci:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v1           #cn:Ljava/lang/String;
    .end local v5           #uniqueID:I
    :cond_84
    iget-object v6, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_26

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->getPOPUPFlag()Z

    move-result v6

    if-nez v6, :cond_26

    .line 395
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->displayMultiTimezoneDialog()V

    goto :goto_26
.end method

.method private updateDualView(Z)V
    .registers 3
    .parameter "forced"

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->updateTimezone()V

    .line 519
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->getUpperView()Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->update(Z)V

    .line 520
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->getLowerView()Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->update(Z)V

    .line 522
    return-void
.end method

.method private updateTimezone()V
    .registers 31

    .prologue
    .line 414
    const-string v8, "homezone asc"

    .line 415
    .local v8, orderBy:Ljava/lang/String;
    const-string v6, "homezone > 0"

    .line 416
    .local v6, whereClause:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    .line 417
    .local v13, context:Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/widgetapp/dualclock/Const;->DATA_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 419
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 421
    .local v14, count:I
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 423
    .local v18, mCountries:[Ljava/lang/String;
    const/16 v3, 0x39

    aget-object v9, v18, v3

    .line 426
    .local v9, Russia:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v14, v3, :cond_9d

    .line 427
    :try_start_2a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 428
    const/4 v3, 0x4

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8f

    .line 429
    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 430
    .local v25, mZoneUniqueId:I
    sget-object v12, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    .line 431
    .local v12, cityI:Lcom/sec/android/widgetapp/dualclock/City;
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v22

    .line 433
    .local v22, mZone:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v11

    .line 435
    .local v11, city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 436
    .local v19, mDST:I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_5e

    .line 437
    iget-object v3, v11, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->country:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 438
    const/16 v19, 0x0

    .line 444
    :cond_5e
    :goto_5e
    new-instance v20, Ljava/util/SimpleTimeZone;

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v4, 0x36ee80

    mul-int v4, v4, v19

    add-int/2addr v3, v4

    const-string v4, "GMT"

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 447
    .local v20, mTimeZone1:Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->getLowerView()Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->setVisibility(Z)V

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->getUpperView()Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    move-result-object v3

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->setDigitalClock(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 452
    .end local v11           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v12           #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .end local v19           #mDST:I
    .end local v20           #mTimeZone1:Ljava/util/TimeZone;
    .end local v22           #mZone:Ljava/lang/String;
    .end local v25           #mZoneUniqueId:I
    :cond_8f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_92
    .catchall {:try_start_2a .. :try_end_92} :catchall_1c2
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_92} :catch_192
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2a .. :try_end_92} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_92} :catch_1b9

    .line 511
    :goto_92
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 514
    :goto_95
    return-void

    .line 440
    .restart local v11       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v12       #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .restart local v19       #mDST:I
    .restart local v22       #mZone:Ljava/lang/String;
    .restart local v25       #mZoneUniqueId:I
    :cond_96
    :try_start_96
    iget-object v3, v11, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->timeZoneID:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/widgetapp/dualclock/DualClockUtils;->isAutoDST(Ljava/lang/String;)I

    move-result v19

    goto :goto_5e

    .line 454
    .end local v11           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v12           #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .end local v19           #mDST:I
    .end local v22           #mZone:Ljava/lang/String;
    .end local v25           #mZoneUniqueId:I
    :cond_9d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 455
    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 456
    .local v26, mZoneUniqueId1:I
    sget-object v12, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->cityManager:Lcom/sec/android/widgetapp/dualclock/City;

    .line 457
    .restart local v12       #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v23

    .line 458
    .local v23, mZone1:Ljava/lang/String;
    const-string v3, "St. John\'s"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    const/16 v3, 0x11f

    move/from16 v0, v26

    if-ne v0, v3, :cond_d4

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 461
    :cond_d4
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v11

    .line 463
    .restart local v11       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 464
    .local v15, dst1:I
    const/4 v3, -0x1

    if-ne v15, v3, :cond_eb

    .line 465
    iget-object v3, v11, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->country:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19b

    .line 466
    const/4 v15, 0x0

    .line 472
    :cond_eb
    :goto_eb
    new-instance v20, Ljava/util/SimpleTimeZone;

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v4, 0x36ee80

    mul-int/2addr v4, v15

    add-int/2addr v3, v4

    const-string v4, "GMT"

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 475
    .restart local v20       #mTimeZone1:Ljava/util/TimeZone;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 476
    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 477
    .local v27, mZoneUniqueId2:I
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v24

    .line 478
    .local v24, mZone2:Ljava/lang/String;
    const-string v3, "St. John\'s"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_133

    const/16 v3, 0x11f

    move/from16 v0, v27

    if-ne v0, v3, :cond_133

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 481
    :cond_133
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v11

    .line 483
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 484
    .local v16, dst2:I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_14d

    .line 485
    iget-object v3, v11, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->country:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a3

    .line 486
    const/16 v16, 0x0

    .line 492
    :cond_14d
    :goto_14d
    new-instance v21, Ljava/util/SimpleTimeZone;

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v4, 0x36ee80

    mul-int v4, v4, v16

    add-int/2addr v3, v4

    const-string v4, "GMT"

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 495
    .local v21, mTimeZone2:Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->getLowerView()Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->setVisibility(Z)V

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->getUpperView()Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v15, v1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->setDigitalClock(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;->getLowerView()Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;

    move-result-object v3

    move-object/from16 v0, v24

    move/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalClockView;->setDigitalClock(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 502
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_190
    .catchall {:try_start_96 .. :try_end_190} :catchall_1c2
    .catch Ljava/lang/NullPointerException; {:try_start_96 .. :try_end_190} :catch_192
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_96 .. :try_end_190} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_190} :catch_1b9

    goto/16 :goto_92

    .line 504
    .end local v11           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v12           #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .end local v15           #dst1:I
    .end local v16           #dst2:I
    .end local v20           #mTimeZone1:Ljava/util/TimeZone;
    .end local v21           #mTimeZone2:Ljava/util/TimeZone;
    .end local v23           #mZone1:Ljava/lang/String;
    .end local v24           #mZone2:Ljava/lang/String;
    .end local v26           #mZoneUniqueId1:I
    .end local v27           #mZoneUniqueId2:I
    :catch_192
    move-exception v28

    .line 505
    .local v28, ne:Ljava/lang/NullPointerException;
    :try_start_193
    invoke-virtual/range {v28 .. v28}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_196
    .catchall {:try_start_193 .. :try_end_196} :catchall_1c2

    .line 511
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_95

    .line 468
    .end local v28           #ne:Ljava/lang/NullPointerException;
    .restart local v11       #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .restart local v12       #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .restart local v15       #dst1:I
    .restart local v23       #mZone1:Ljava/lang/String;
    .restart local v26       #mZoneUniqueId1:I
    :cond_19b
    :try_start_19b
    iget-object v3, v11, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->timeZoneID:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/widgetapp/dualclock/DualClockUtils;->isAutoDST(Ljava/lang/String;)I

    move-result v15

    goto/16 :goto_eb

    .line 488
    .restart local v16       #dst2:I
    .restart local v20       #mTimeZone1:Ljava/util/TimeZone;
    .restart local v24       #mZone2:Ljava/lang/String;
    .restart local v27       #mZoneUniqueId2:I
    :cond_1a3
    iget-object v3, v11, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->timeZoneID:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/widgetapp/dualclock/DualClockUtils;->isAutoDST(Ljava/lang/String;)I
    :try_end_1a8
    .catchall {:try_start_19b .. :try_end_1a8} :catchall_1c2
    .catch Ljava/lang/NullPointerException; {:try_start_19b .. :try_end_1a8} :catch_192
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19b .. :try_end_1a8} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1a8} :catch_1b9

    move-result v16

    goto :goto_14d

    .line 506
    .end local v11           #city:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v12           #cityI:Lcom/sec/android/widgetapp/dualclock/City;
    .end local v15           #dst1:I
    .end local v16           #dst2:I
    .end local v20           #mTimeZone1:Ljava/util/TimeZone;
    .end local v23           #mZone1:Ljava/lang/String;
    .end local v24           #mZone2:Ljava/lang/String;
    .end local v26           #mZoneUniqueId1:I
    .end local v27           #mZoneUniqueId2:I
    :catch_1aa
    move-exception v29

    .line 507
    .local v29, se:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1ab
    new-instance v3, Lcom/sec/android/widgetapp/dualclock/Messages;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/dualclock/Messages;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v13, v4}, Lcom/sec/android/widgetapp/dualclock/Messages;->showTOAST(Landroid/content/Context;I)V
    :try_end_1b4
    .catchall {:try_start_1ab .. :try_end_1b4} :catchall_1c2

    .line 511
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_95

    .line 508
    .end local v29           #se:Landroid/database/sqlite/SQLiteFullException;
    :catch_1b9
    move-exception v17

    .line 509
    .local v17, e:Ljava/lang/Exception;
    :try_start_1ba
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1bd
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_1c2

    .line 511
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_95

    .end local v17           #e:Ljava/lang/Exception;
    :catchall_1c2
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3
.end method


# virtual methods
.method public displayMultiTimezoneDialog()V
    .registers 6

    .prologue
    .line 936
    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityList:Ljava/util/ArrayList;

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_51

    .line 937
    new-instance v3, Lcom/sec/android/widgetapp/dualclock/SharedPreference;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/dualclock/SharedPreference;->setPOPUPFlag(Z)V

    .line 938
    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 939
    .local v1, cityList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_22
    array-length v3, v1

    if-ge v2, v3, :cond_32

    .line 940
    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 939
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 943
    :cond_32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 944
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08000e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 945
    const/4 v3, 0x0

    new-instance v4, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$3;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$3;-><init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 962
    new-instance v3, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$4;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$4;-><init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 970
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 972
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #cityList:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_51
    return-void
.end method

.method public fireOnPause()V
    .registers 1

    .prologue
    .line 154
    return-void
.end method

.method public fireOnResume()V
    .registers 1

    .prologue
    .line 164
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged...."

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->setContentView(I)V

    .line 116
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->initDigitalDualClock()V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->onResume()V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->TAG:Ljava/lang/String;

    const-string v1, "onCreate...."

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->setContentView(I)V

    .line 71
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mTimeZoneFinder:Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    .line 73
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->initDigitalDualClock()V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 78
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy...."

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->finiDigitalDualClock()V

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 100
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->unregisterEVTReceiver()V

    .line 103
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->pauseDigitalDualClock()V

    .line 105
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->registerEVTReceiver()V

    .line 92
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->resumeDigitalDualClock()V

    .line 93
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 138
    sget-object v0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->TAG:Ljava/lang/String;

    const-string v1, "UncaughtException: Oops~~!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public updateDBCityCountry(Lcom/sec/android/widgetapp/dualclock/City;)V
    .registers 13
    .parameter "city"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 289
    invoke-direct {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getDBAll()Landroid/database/Cursor;

    move-result-object v0

    .line 290
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_10

    .line 291
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 320
    :goto_f
    return-void

    .line 295
    :cond_10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 305
    :goto_13
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_9d

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, whereClause:Ljava/lang/String;
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 308
    .local v2, cityUnqID:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, cityname:Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/widgetapp/dualclock/City$CityInfo;

    move-result-object v1

    .line 310
    .local v1, cityInfo:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v4, value:Landroid/content/ContentValues;
    sget-object v6, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v6, Lcom/sec/android/widgetapp/dualclock/Const;->WC_COLUMNS:[Ljava/lang/String;

    aget-object v6, v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->getUniqueID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/android/widgetapp/dualclock/DataContentProvider;->DATA_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 316
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_13

    .line 318
    .end local v1           #cityInfo:Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
    .end local v2           #cityUnqID:I
    .end local v3           #cityname:Ljava/lang/String;
    .end local v4           #value:Landroid/content/ContentValues;
    .end local v5           #whereClause:Ljava/lang/String;
    :cond_9d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f
.end method

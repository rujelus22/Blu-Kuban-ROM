.class public Lcom/google/mobile/googlenav/common/Config;
.super Ljava/lang/Object;


# static fields
.field private static DISTRIBUTION_CHANNEL:Ljava/lang/String;

.field private static instance:Lcom/google/mobile/googlenav/common/Config;

.field private static uiThread:Ljava/lang/Thread;


# instance fields
.field private final clock:Lcom/google/mobile/googlenav/common/Clock;

.field protected connectionFactory:Lcom/google/mobile/googlenav/common/io/HttpConnectionFactory;

.field protected final context:Landroid/content/Context;

.field private volatile enableUIThreadCheckForUnitTest:Z

.field protected fontFactory:Lcom/google/mobile/googlenav/common/graphics/FontFactory;

.field private i18n:Lcom/google/mobile/googlenav/common/I18n;

.field protected imageFactory:Lcom/google/mobile/googlenav/common/graphics/ImageFactory;

.field protected persistentStore:Lcom/google/mobile/googlenav/common/io/PersistentStore;

.field private final pixelsPerInch:I

.field private final xdpi:F

.field private final ydpi:F


# direct methods
.method public constructor <init>()V
    .registers 3

    const/high16 v1, 0x4320

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mobile/googlenav/common/Config;->enableUIThreadCheckForUnitTest:Z

    new-instance v0, Lcom/google/mobile/googlenav/common/android/AndroidClock;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/android/AndroidClock;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->clock:Lcom/google/mobile/googlenav/common/Clock;

    invoke-static {}, Lcom/google/mobile/googlenav/common/util/RuntimeCheck;->checkTest()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->context:Landroid/content/Context;

    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/mobile/googlenav/common/Config;->pixelsPerInch:I

    iput v1, p0, Lcom/google/mobile/googlenav/common/Config;->xdpi:F

    iput v1, p0, Lcom/google/mobile/googlenav/common/Config;->ydpi:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide/high16 v4, 0x3fd0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mobile/googlenav/common/Config;->enableUIThreadCheckForUnitTest:Z

    new-instance v0, Lcom/google/mobile/googlenav/common/android/AndroidClock;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/android/AndroidClock;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->clock:Lcom/google/mobile/googlenav/common/Clock;

    iput-object p1, p0, Lcom/google/mobile/googlenav/common/Config;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/mobile/googlenav/common/Config;->uiThread:Ljava/lang/Thread;

    invoke-static {p0}, Lcom/google/mobile/googlenav/common/Config;->setConfig(Lcom/google/mobile/googlenav/common/Config;)V

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/Config;->init()V

    if-eqz p1, :cond_62

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/google/mobile/googlenav/common/Config;->pixelsPerInch:I

    :goto_2b
    iget v0, p0, Lcom/google/mobile/googlenav/common/Config;->pixelsPerInch:I

    int-to-float v0, v0

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_52

    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_67

    :cond_52
    iput v0, p0, Lcom/google/mobile/googlenav/common/Config;->xdpi:F

    iput v0, p0, Lcom/google/mobile/googlenav/common/Config;->ydpi:F

    :goto_56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/mobile/googlenav/common/Config;->initPortabilityFields(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/mobile/googlenav/common/Config;->initLocale(Ljava/util/Locale;)V

    return-void

    :cond_62
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/mobile/googlenav/common/Config;->pixelsPerInch:I

    goto :goto_2b

    :cond_67
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/google/mobile/googlenav/common/Config;->xdpi:F

    iget v0, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/google/mobile/googlenav/common/Config;->ydpi:F

    goto :goto_56

    :cond_70
    iput v0, p0, Lcom/google/mobile/googlenav/common/Config;->xdpi:F

    iput v0, p0, Lcom/google/mobile/googlenav/common/Config;->ydpi:F

    goto :goto_56
.end method

.method public static getBestUiLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1}, Lcom/google/mobile/googlenav/common/I18n;->getBestLocaleMatch(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/mobile/googlenav/common/I18n;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/mobile/googlenav/common/I18n;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/mobile/googlenav/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {v1}, Lcom/google/mobile/googlenav/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2f
    return-object v0
.end method

.method public static getDistributionChannel()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/mobile/googlenav/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/google/mobile/googlenav/common/Config;
    .registers 1

    sget-object v0, Lcom/google/mobile/googlenav/common/Config;->instance:Lcom/google/mobile/googlenav/common/Config;

    return-object v0
.end method

.method public static declared-synchronized getLocale()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/google/mobile/googlenav/common/Config;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/mobile/googlenav/common/Config;->instance:Lcom/google/mobile/googlenav/common/Config;

    iget-object v1, v1, Lcom/google/mobile/googlenav/common/Config;->i18n:Lcom/google/mobile/googlenav/common/I18n;

    invoke-virtual {v1}, Lcom/google/mobile/googlenav/common/I18n;->getUiLocale()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPlatformID()Ljava/lang/String;
    .registers 7

    const/16 v6, 0x5f

    const/16 v5, 0x2d

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_56
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_33} :catch_4d

    move-result-object v0

    if-eqz v0, :cond_69

    :try_start_36
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_69

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_5e
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_45} :catch_63

    move-result-object v1

    :goto_46
    if-eqz v0, :cond_67

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_4c
    return-object v0

    :catch_4d
    move-exception v0

    move-object v0, v6

    :goto_4f
    if-eqz v0, :cond_65

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_4c

    :catchall_56
    move-exception v0

    move-object v1, v6

    :goto_58
    if-eqz v1, :cond_5d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5d
    throw v0

    :catchall_5e
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_58

    :catch_63
    move-exception v1

    goto :goto_4f

    :cond_65
    move-object v0, v6

    goto :goto_4c

    :cond_67
    move-object v0, v1

    goto :goto_4c

    :cond_69
    move-object v1, v6

    goto :goto_46
.end method

.method private static getSupportedLocales()[Ljava/lang/String;
    .registers 2

    const-string v0, "en bg ca cs da de el en_GB es es_MX fi fr hr hu it ja ko lt lv nl no pl pt_BR pt_PT ro ru sk sl sr sv tl tr uk vi zh_TW zh_CN"

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/google/mobile/googlenav/common/util/text/TextUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setConfig(Lcom/google/mobile/googlenav/common/Config;)V
    .registers 1

    sput-object p0, Lcom/google/mobile/googlenav/common/Config;->instance:Lcom/google/mobile/googlenav/common/Config;

    return-void
.end method


# virtual methods
.method public getClock()Lcom/google/mobile/googlenav/common/Clock;
    .registers 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->clock:Lcom/google/mobile/googlenav/common/Clock;

    return-object v0
.end method

.method public getConnectionFactory()Lcom/google/mobile/googlenav/common/io/HttpConnectionFactory;
    .registers 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->connectionFactory:Lcom/google/mobile/googlenav/common/io/HttpConnectionFactory;

    return-object v0
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .registers 4

    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Lcom/google/mobile/googlenav/common/Config;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0}, Lcom/google/mobile/googlenav/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v0, "Web"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_16
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16
.end method

.method protected getI18n()Lcom/google/mobile/googlenav/common/I18n;
    .registers 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->i18n:Lcom/google/mobile/googlenav/common/I18n;

    return-object v0
.end method

.method public getPersistentStore()Lcom/google/mobile/googlenav/common/io/PersistentStore;
    .registers 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->persistentStore:Lcom/google/mobile/googlenav/common/io/PersistentStore;

    return-object v0
.end method

.method protected init()V
    .registers 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->i18n:Lcom/google/mobile/googlenav/common/I18n;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/mobile/googlenav/common/I18n;->init(Ljava/lang/String;)Lcom/google/mobile/googlenav/common/I18n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->i18n:Lcom/google/mobile/googlenav/common/I18n;

    :cond_b
    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/Config;->getDistributionChannelInternal()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/mobile/googlenav/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    sget-object v0, Lcom/google/mobile/googlenav/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    if-nez v0, :cond_19

    const-string v0, "unknown"

    sput-object v0, Lcom/google/mobile/googlenav/common/Config;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    :cond_19
    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/Config;->setupGzipper()V

    return-void
.end method

.method public initLocale(Ljava/util/Locale;)V
    .registers 5

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/Config;->getI18n()Lcom/google/mobile/googlenav/common/I18n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/mobile/googlenav/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/Config;->getI18n()Lcom/google/mobile/googlenav/common/I18n;

    move-result-object v1

    invoke-static {}, Lcom/google/mobile/googlenav/common/Config;->getSupportedLocales()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/mobile/googlenav/common/Config;->getBestUiLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/mobile/googlenav/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method

.method protected initPortabilityFields(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->context:Landroid/content/Context;

    if-nez v0, :cond_25

    new-instance v0, Lcom/google/mobile/googlenav/common/io/InMemoryPersistentStore;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/InMemoryPersistentStore;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->persistentStore:Lcom/google/mobile/googlenav/common/io/PersistentStore;

    :goto_b
    new-instance v0, Lcom/google/mobile/googlenav/common/io/android/AndroidHttpConnectionFactory;

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/Config;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/mobile/googlenav/common/io/android/AndroidHttpConnectionFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->connectionFactory:Lcom/google/mobile/googlenav/common/io/HttpConnectionFactory;

    new-instance v0, Lcom/google/mobile/googlenav/common/graphics/android/AndroidFontFactory;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/graphics/android/AndroidFontFactory;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->fontFactory:Lcom/google/mobile/googlenav/common/graphics/FontFactory;

    new-instance v0, Lcom/google/mobile/googlenav/common/graphics/android/AndroidAshmemImageFactory;

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/Config;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/mobile/googlenav/common/graphics/android/AndroidAshmemImageFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->imageFactory:Lcom/google/mobile/googlenav/common/graphics/ImageFactory;

    return-void

    :cond_25
    if-eqz p1, :cond_2f

    new-instance v0, Lcom/google/mobile/googlenav/common/io/android/AndroidFixedPersistentStore;

    invoke-direct {v0, p1}, Lcom/google/mobile/googlenav/common/io/android/AndroidFixedPersistentStore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->persistentStore:Lcom/google/mobile/googlenav/common/io/PersistentStore;

    goto :goto_b

    :cond_2f
    new-instance v0, Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStore;

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/Config;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/Config;->persistentStore:Lcom/google/mobile/googlenav/common/io/PersistentStore;

    goto :goto_b
.end method

.method protected setupGzipper()V
    .registers 2

    new-instance v0, Lcom/google/mobile/googlenav/common/Config$1;

    invoke-direct {v0, p0}, Lcom/google/mobile/googlenav/common/Config$1;-><init>(Lcom/google/mobile/googlenav/common/Config;)V

    invoke-static {v0}, Lcom/google/mobile/googlenav/common/io/Gunzipper;->setImplementation(Lcom/google/mobile/googlenav/common/io/Gunzipper$GunzipInterface;)V

    return-void
.end method

.class public Lcom/google/common/android/AndroidConfig;
.super Lcom/google/common/Config;


# static fields
.field private static uiThread:Ljava/lang/Thread;


# instance fields
.field private final clock:Lcom/google/common/Clock;

.field protected connectionFactory:Lcom/google/common/io/android/AndroidHttpConnectionFactory;

.field protected final context:Landroid/content/Context;

.field private volatile enableUIThreadCheckForUnitTest:Z

.field protected fontFactory:Lcom/google/common/graphics/FontFactory;

.field protected imageFactory:Lcom/google/common/graphics/android/AndroidImageFactory;

.field protected persistentStore:Lcom/google/common/io/PersistentStore;

.field private final pixelsPerInch:I

.field private final xdpi:F

.field private final ydpi:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/android/AndroidConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x1

    const-wide/high16 v4, 0x3fd0

    invoke-direct {p0}, Lcom/google/common/Config;-><init>()V

    new-instance v0, Lcom/google/common/android/AndroidClock;

    invoke-direct {v0}, Lcom/google/common/android/AndroidClock;-><init>()V

    iput-object v0, p0, Lcom/google/common/android/AndroidConfig;->clock:Lcom/google/common/Clock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/android/AndroidConfig;->enableUIThreadCheckForUnitTest:Z

    iput-object p1, p0, Lcom/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/common/android/AndroidConfig;->uiThread:Ljava/lang/Thread;

    invoke-static {p0}, Lcom/google/common/android/AndroidConfig;->setConfig(Lcom/google/common/Config;)V

    invoke-virtual {p0}, Lcom/google/common/android/AndroidConfig;->init()V

    sput-boolean v1, Lcom/google/common/android/AndroidConfig;->USE_NATIVE_COMMANDS:Z

    sput-boolean v1, Lcom/google/common/android/AndroidConfig;->USE_NATIVE_MENUS:Z

    const/4 v0, 0x4

    sput v0, Lcom/google/common/android/AndroidConfig;->KEY_BACK:I

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/google/common/android/AndroidConfig;->pixelsPerInch:I

    :goto_33
    iget v0, p0, Lcom/google/common/android/AndroidConfig;->pixelsPerInch:I

    int-to-float v0, v0

    if-eqz p1, :cond_77

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

    if-gtz v2, :cond_5a

    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6e

    :cond_5a
    iput v0, p0, Lcom/google/common/android/AndroidConfig;->xdpi:F

    iput v0, p0, Lcom/google/common/android/AndroidConfig;->ydpi:F

    :goto_5e
    invoke-virtual {p0, p2}, Lcom/google/common/android/AndroidConfig;->initPortabilityFields(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/android/AndroidConfig;->initLocale(Ljava/util/Locale;)V

    return-void

    :cond_69
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/common/android/AndroidConfig;->pixelsPerInch:I

    goto :goto_33

    :cond_6e
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/google/common/android/AndroidConfig;->xdpi:F

    iget v0, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/google/common/android/AndroidConfig;->ydpi:F

    goto :goto_5e

    :cond_77
    iput v0, p0, Lcom/google/common/android/AndroidConfig;->xdpi:F

    iput v0, p0, Lcom/google/common/android/AndroidConfig;->ydpi:F

    goto :goto_5e
.end method

.method public static getBestUiLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1}, Lcom/google/common/android/AndroidConfig;->getRemoteStringLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/I18n;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/I18n;->getCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {v1}, Lcom/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

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

.method private static getRemoteStringLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/common/I18n;->getBestLocaleMatch(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/android/AndroidConfig;->context:Landroid/content/Context;

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

    move-result-object v1

    if-eqz v1, :cond_65

    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_5d
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_45} :catch_60

    move-result-object v6

    move-object v0, v6

    :goto_47
    if-eqz v1, :cond_4c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4c
    :goto_4c
    return-object v0

    :catch_4d
    move-exception v0

    move-object v0, v6

    :goto_4f
    if-eqz v0, :cond_63

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_4c

    :catchall_56
    move-exception v0

    :goto_57
    if-eqz v6, :cond_5c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v0

    :catchall_5d
    move-exception v0

    move-object v6, v1

    goto :goto_57

    :catch_60
    move-exception v0

    move-object v0, v1

    goto :goto_4f

    :cond_63
    move-object v0, v6

    goto :goto_4c

    :cond_65
    move-object v0, v6

    goto :goto_47
.end method

.method private static getSupportedLocales()[Ljava/lang/String;
    .registers 2

    const-string v0, "en"

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/google/common/util/text/TextUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClock()Lcom/google/common/Clock;
    .registers 2

    iget-object v0, p0, Lcom/google/common/android/AndroidConfig;->clock:Lcom/google/common/Clock;

    return-object v0
.end method

.method public bridge synthetic getConnectionFactory()Lcom/google/common/io/HttpConnectionFactory;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/android/AndroidConfig;->getConnectionFactory()Lcom/google/common/io/android/AndroidHttpConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionFactory()Lcom/google/common/io/android/AndroidHttpConnectionFactory;
    .registers 2

    iget-object v0, p0, Lcom/google/common/android/AndroidConfig;->connectionFactory:Lcom/google/common/io/android/AndroidHttpConnectionFactory;

    return-object v0
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .registers 4

    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Lcom/google/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "client_id"

    invoke-direct {p0, v0}, Lcom/google/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v0, "Web"

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gmm-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public getPersistentStore()Lcom/google/common/io/PersistentStore;
    .registers 2

    iget-object v0, p0, Lcom/google/common/android/AndroidConfig;->persistentStore:Lcom/google/common/io/PersistentStore;

    return-object v0
.end method

.method public initLocale(Ljava/util/Locale;)V
    .registers 5

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/android/AndroidConfig;->getI18n()Lcom/google/common/I18n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/common/android/AndroidConfig;->getI18n()Lcom/google/common/I18n;

    move-result-object v1

    invoke-static {}, Lcom/google/common/android/AndroidConfig;->getSupportedLocales()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/android/AndroidConfig;->getBestUiLocale(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method

.method protected initPortabilityFields(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    if-nez v0, :cond_25

    new-instance v0, Lcom/google/common/io/InMemoryPersistentStore;

    invoke-direct {v0}, Lcom/google/common/io/InMemoryPersistentStore;-><init>()V

    iput-object v0, p0, Lcom/google/common/android/AndroidConfig;->persistentStore:Lcom/google/common/io/PersistentStore;

    :goto_b
    new-instance v0, Lcom/google/common/io/android/AndroidHttpConnectionFactory;

    iget-object v1, p0, Lcom/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/common/io/android/AndroidHttpConnectionFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/common/android/AndroidConfig;->connectionFactory:Lcom/google/common/io/android/AndroidHttpConnectionFactory;

    new-instance v0, Lcom/google/common/graphics/android/AndroidFontFactory;

    invoke-direct {v0}, Lcom/google/common/graphics/android/AndroidFontFactory;-><init>()V

    iput-object v0, p0, Lcom/google/common/android/AndroidConfig;->fontFactory:Lcom/google/common/graphics/FontFactory;

    new-instance v0, Lcom/google/common/graphics/android/AndroidAshmemImageFactory;

    iget-object v1, p0, Lcom/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/common/graphics/android/AndroidAshmemImageFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/common/android/AndroidConfig;->imageFactory:Lcom/google/common/graphics/android/AndroidImageFactory;

    return-void

    :cond_25
    if-eqz p1, :cond_2f

    new-instance v0, Lcom/google/common/io/android/AndroidFixedPersistentStore;

    invoke-direct {v0, p1}, Lcom/google/common/io/android/AndroidFixedPersistentStore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/common/android/AndroidConfig;->persistentStore:Lcom/google/common/io/PersistentStore;

    goto :goto_b

    :cond_2f
    new-instance v0, Lcom/google/common/io/android/AndroidPersistentStore;

    iget-object v1, p0, Lcom/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/common/io/android/AndroidPersistentStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/common/android/AndroidConfig;->persistentStore:Lcom/google/common/io/PersistentStore;

    goto :goto_b
.end method

.method protected setupGzipper()V
    .registers 2

    new-instance v0, Lcom/google/common/android/AndroidConfig$1;

    invoke-direct {v0, p0}, Lcom/google/common/android/AndroidConfig$1;-><init>(Lcom/google/common/android/AndroidConfig;)V

    invoke-static {v0}, Lcom/google/common/io/Gunzipper;->setImplementation(Lcom/google/common/io/Gunzipper$GunzipInterface;)V

    return-void
.end method

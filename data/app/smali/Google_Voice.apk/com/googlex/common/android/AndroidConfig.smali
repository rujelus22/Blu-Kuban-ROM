.class public Lcom/googlex/common/android/AndroidConfig;
.super Lcom/googlex/common/Config;

# interfaces
.implements Lcom/googlex/common/DateFormatter;


# static fields
.field public static final LOCALE_SEPARATOR:Ljava/lang/String; = " "

.field public static final SUPPORTED_LOCALES:Ljava/lang/String; = "en"

.field private static stringResourceContext:Landroid/content/Context;

.field private static uiThread:Ljava/lang/Thread;


# instance fields
.field private final clock:Lcom/googlex/common/Clock;

.field protected connectionFactory:Lcom/googlex/common/io/android/AndroidHttpConnectionFactory;

.field protected final context:Landroid/content/Context;

.field protected fontFactory:Lcom/googlex/common/graphics/FontFactory;

.field protected imageFactory:Lcom/googlex/common/graphics/android/AndroidImageFactory;

.field protected persistentStore:Lcom/googlex/common/io/PersistentStore;

.field private final pixelsPerInch:I

.field protected tcpConnFactory:Lcom/googlex/common/io/TcpConnectionFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/googlex/common/android/AndroidConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/googlex/common/Config;-><init>()V

    new-instance v0, Lcom/googlex/common/android/AndroidClock;

    invoke-direct {v0}, Lcom/googlex/common/android/AndroidClock;-><init>()V

    iput-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->clock:Lcom/googlex/common/Clock;

    iput-object p1, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/googlex/common/android/AndroidConfig;->uiThread:Ljava/lang/Thread;

    invoke-static {p0}, Lcom/googlex/common/android/AndroidConfig;->setConfig(Lcom/googlex/common/Config;)V

    invoke-virtual {p0}, Lcom/googlex/common/android/AndroidConfig;->init()V

    sput-boolean v1, Lcom/googlex/common/android/AndroidConfig;->USE_NATIVE_COMMANDS:Z

    sput-boolean v1, Lcom/googlex/common/android/AndroidConfig;->USE_NATIVE_MENUS:Z

    const/4 v0, 0x4

    sput v0, Lcom/googlex/common/android/AndroidConfig;->KEY_BACK:I

    const/16 v0, 0xa0

    iput v0, p0, Lcom/googlex/common/android/AndroidConfig;->pixelsPerInch:I

    invoke-virtual {p0, p2}, Lcom/googlex/common/android/AndroidConfig;->initPortabilityFields(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlex/common/android/AndroidConfig;->initLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public static androidString(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/googlex/common/android/AndroidConfig;->stringResourceContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBestSupportedLocale(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/googlex/common/util/text/TextUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/googlex/common/I18n;->getBestLocaleMatch(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

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

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_45} :catch_47

    move-result-object v0

    :goto_46
    return-object v0

    :catch_47
    move-exception v0

    move-object v0, v6

    goto :goto_46

    :cond_4a
    move-object v0, v6

    goto :goto_46
.end method

.method private initLocale(Ljava/util/Locale;)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlex/common/android/AndroidConfig;->getI18n()Lcom/googlex/common/I18n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlex/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/googlex/common/android/AndroidConfig;->getI18n()Lcom/googlex/common/I18n;

    move-result-object v1

    invoke-static {v0}, Lcom/googlex/common/android/AndroidConfig;->getBestSupportedLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/googlex/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public assertNotOnUiThread()V
    .registers 1

    return-void
.end method

.method public assertOnUiThread()V
    .registers 1

    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/googlex/common/android/AndroidConfig;->initLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public formatRelativeTime(JJ)Ljava/lang/String;
    .registers 11

    const-wide/32 v4, 0xea60

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClock()Lcom/googlex/common/Clock;
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->clock:Lcom/googlex/common/Clock;

    return-object v0
.end method

.method public bridge synthetic getConnectionFactory()Lcom/googlex/common/io/HttpConnectionFactory;
    .registers 2

    invoke-virtual {p0}, Lcom/googlex/common/android/AndroidConfig;->getConnectionFactory()Lcom/googlex/common/io/android/AndroidHttpConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionFactory()Lcom/googlex/common/io/android/AndroidHttpConnectionFactory;
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->connectionFactory:Lcom/googlex/common/io/android/AndroidHttpConnectionFactory;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDateFormatter()Lcom/googlex/common/DateFormatter;
    .registers 1

    return-object p0
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .registers 4

    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Lcom/googlex/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "client_id"

    invoke-direct {p0, v0}, Lcom/googlex/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

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

.method public getFontFactory()Lcom/googlex/common/graphics/FontFactory;
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->fontFactory:Lcom/googlex/common/graphics/FontFactory;

    return-object v0
.end method

.method public getGameAction(Ljava/lang/Object;I)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getImageFactory()Lcom/googlex/common/graphics/ImageFactory;
    .registers 2

    invoke-virtual {p0}, Lcom/googlex/common/android/AndroidConfig;->getImageFactory()Lcom/googlex/common/graphics/android/AndroidImageFactory;

    move-result-object v0

    return-object v0
.end method

.method public getImageFactory()Lcom/googlex/common/graphics/android/AndroidImageFactory;
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->imageFactory:Lcom/googlex/common/graphics/android/AndroidImageFactory;

    return-object v0
.end method

.method public getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, p1, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .registers 3

    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method public getMinTouchablePixels()I
    .registers 2

    const/16 v0, 0x22

    return v0
.end method

.method public getNativeDateTimeFieldFactory()Lcom/googlex/common/ui/NativeDateTimeFieldFactory;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Native DateTime Fields not used on Android."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNativeTextFieldFactory()Lcom/googlex/common/ui/NativeTextFieldFactory;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Native Text Fields not used on Android."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    :cond_17
    :goto_17
    const-string v0, "Unknown"

    :goto_19
    return-object v0

    :pswitch_1a
    const-string v0, "WiFi"

    goto :goto_19

    :pswitch_1d
    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    goto :goto_17

    :pswitch_2f
    const-string v0, "GPRS"

    goto :goto_19

    :pswitch_32
    const-string v0, "UMTS"

    goto :goto_19

    :pswitch_35
    const-string v0, "EDGE"

    goto :goto_19

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method

.method public getPersistentStore()Lcom/googlex/common/io/PersistentStore;
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->persistentStore:Lcom/googlex/common/io/PersistentStore;

    return-object v0
.end method

.method public getPixelsPerInch()I
    .registers 2

    iget v0, p0, Lcom/googlex/common/android/AndroidConfig;->pixelsPerInch:I

    return v0
.end method

.method public getScreenDensityScale()D
    .registers 3

    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public declared-synchronized getTcpConnectionFactory()Lcom/googlex/common/io/TcpConnectionFactory;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->tcpConnFactory:Lcom/googlex/common/io/TcpConnectionFactory;

    if-nez v0, :cond_e

    new-instance v0, Lcom/googlex/common/io/android/AndroidTcpConnectionFactory;

    iget-object v1, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/googlex/common/io/android/AndroidTcpConnectionFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->tcpConnFactory:Lcom/googlex/common/io/TcpConnectionFactory;

    :cond_e
    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->tcpConnFactory:Lcom/googlex/common/io/TcpConnectionFactory;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "0.0.0"

    return-object v0
.end method

.method protected initPortabilityFields(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

    if-nez v0, :cond_25

    new-instance v0, Lcom/googlex/common/io/InMemoryPersistentStore;

    invoke-direct {v0}, Lcom/googlex/common/io/InMemoryPersistentStore;-><init>()V

    iput-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->persistentStore:Lcom/googlex/common/io/PersistentStore;

    :goto_b
    new-instance v0, Lcom/googlex/common/io/android/AndroidHttpConnectionFactory;

    iget-object v1, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/googlex/common/io/android/AndroidHttpConnectionFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->connectionFactory:Lcom/googlex/common/io/android/AndroidHttpConnectionFactory;

    new-instance v0, Lcom/googlex/common/graphics/android/AndroidFontFactory;

    invoke-direct {v0}, Lcom/googlex/common/graphics/android/AndroidFontFactory;-><init>()V

    iput-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->fontFactory:Lcom/googlex/common/graphics/FontFactory;

    new-instance v0, Lcom/googlex/common/graphics/android/AndroidAshmemImageFactory;

    iget-object v1, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/googlex/common/graphics/android/AndroidAshmemImageFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->imageFactory:Lcom/googlex/common/graphics/android/AndroidImageFactory;

    return-void

    :cond_25
    if-eqz p1, :cond_2f

    new-instance v0, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;

    invoke-direct {v0, p1}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->persistentStore:Lcom/googlex/common/io/PersistentStore;

    goto :goto_b

    :cond_2f
    new-instance v0, Lcom/googlex/common/io/android/AndroidPersistentStore;

    iget-object v1, p0, Lcom/googlex/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/googlex/common/io/android/AndroidPersistentStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/googlex/common/android/AndroidConfig;->persistentStore:Lcom/googlex/common/io/PersistentStore;

    goto :goto_b
.end method

.method public isFire(Ljava/lang/Object;I)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public setFontFactory(Lcom/googlex/common/graphics/FontFactory;)V
    .registers 2

    iput-object p1, p0, Lcom/googlex/common/android/AndroidConfig;->fontFactory:Lcom/googlex/common/graphics/FontFactory;

    return-void
.end method

.method public setStringResourceContext(Landroid/content/Context;)V
    .registers 2

    sput-object p1, Lcom/googlex/common/android/AndroidConfig;->stringResourceContext:Landroid/content/Context;

    return-void
.end method

.method protected setupGzipper()V
    .registers 2

    new-instance v0, Lcom/googlex/common/android/AndroidConfig$1;

    invoke-direct {v0, p0}, Lcom/googlex/common/android/AndroidConfig$1;-><init>(Lcom/googlex/common/android/AndroidConfig;)V

    invoke-static {v0}, Lcom/googlex/common/io/Gunzipper;->setImplementation(Lcom/googlex/common/io/Gunzipper$GunzipInterface;)V

    return-void
.end method

.method public supportsTranslucency()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected testSupportsJpeg()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public useNativeTextButtons()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

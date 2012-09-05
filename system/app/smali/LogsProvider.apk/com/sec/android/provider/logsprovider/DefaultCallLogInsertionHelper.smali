.class Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;
.super Ljava/lang/Object;
.source "DefaultCallLogInsertionHelper.java"

# interfaces
.implements Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;


# static fields
.field private static sInstance:Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;


# instance fields
.field private final mCountryMonitor:Lcom/sec/android/provider/logsprovider/CountryMonitor;

.field private final mLocale:Ljava/util/Locale;

.field private mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

.field private mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/sec/android/provider/logsprovider/CountryMonitor;

    invoke-direct {v0, p1}, Lcom/sec/android/provider/logsprovider/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/sec/android/provider/logsprovider/CountryMonitor;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    .line 57
    return-void
.end method

.method private getCurrentCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/sec/android/provider/logsprovider/CountryMonitor;

    invoke-virtual {v0}, Lcom/sec/android/provider/logsprovider/CountryMonitor;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 48
    const-class v1, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->sInstance:Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;

    if-nez v0, :cond_e

    .line 49
    new-instance v0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->sInstance:Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;

    .line 51
    :cond_e
    sget-object v0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->sInstance:Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .registers 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_b

    .line 90
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 92
    :cond_b
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 89
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .registers 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_b

    .line 75
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 77
    :cond_b
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 74
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 5
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_7
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 84
    :goto_8
    return-object v1

    .line 83
    :catch_9
    move-exception v0

    .line 84
    .local v0, e:Lcom/android/i18n/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    goto :goto_8
.end method


# virtual methods
.method public addComputedValues(Landroid/content/ContentValues;)V
    .registers 5
    .parameter "values"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, countryIso:Ljava/lang/String;
    const-string v1, "countryiso"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "geocoded_location"

    const-string v2, "number"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 98
    .local v0, structuredPhoneNumber:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    if-eqz v0, :cond_11

    .line 99
    invoke-direct {p0}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

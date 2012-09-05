.class public Lcom/android/providers/contacts/CountryMonitor;
.super Ljava/lang/Object;
.source "CountryMonitor.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/providers/contacts/CountryMonitor;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/android/providers/contacts/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/providers/contacts/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized getCountryIso()Ljava/lang/String;
    .registers 4

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/providers/contacts/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    if-nez v1, :cond_2b

    .line 48
    iget-object v1, p0, Lcom/android/providers/contacts/CountryMonitor;->mContext:Landroid/content/Context;

    const-string v2, "country_detector"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 50
    .local v0, countryDetector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 51
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    .line 52
    new-instance v1, Lcom/android/providers/contacts/CountryMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/CountryMonitor$1;-><init>(Lcom/android/providers/contacts/CountryMonitor;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 62
    .end local v0           #countryDetector:Landroid/location/CountryDetector;
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/android/providers/contacts/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_3e

    monitor-exit p0

    return-object v1

    .line 59
    .restart local v0       #countryDetector:Landroid/location/CountryDetector;
    :cond_2f
    :try_start_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_3e

    goto :goto_2b

    .line 47
    .end local v0           #countryDetector:Landroid/location/CountryDetector;
    :catchall_3e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

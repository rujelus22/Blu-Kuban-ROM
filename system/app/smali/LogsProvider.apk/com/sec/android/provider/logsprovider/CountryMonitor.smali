.class public Lcom/sec/android/provider/logsprovider/CountryMonitor;
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
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/provider/logsprovider/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized getCountryIso()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    if-nez v1, :cond_25

    .line 46
    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mContext:Landroid/content/Context;

    const-string v2, "country_detector"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 48
    .local v0, countryDetector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;

    .line 49
    new-instance v1, Lcom/sec/android/provider/logsprovider/CountryMonitor$1;

    invoke-direct {v1, p0}, Lcom/sec/android/provider/logsprovider/CountryMonitor$1;-><init>(Lcom/sec/android/provider/logsprovider/CountryMonitor;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 55
    .end local v0           #countryDetector:Landroid/location/CountryDetector;
    :cond_25
    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/CountryMonitor;->mCurrentCountryIso:Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-object v1

    .line 45
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.class public Ldbxyzptlk/k/a;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Ldbxyzptlk/k/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/k/a;->a:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Ldbxyzptlk/k/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Ldbxyzptlk/k/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 179
    const-string v1, ""

    .line 181
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_6
    :try_start_6
    array-length v2, p0

    if-ge v1, v2, :cond_54

    .line 182
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p0, v2

    if-eqz v2, :cond_4f

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p0, v1

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    aget-object v2, p0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_4e} :catch_52

    move-result-object v0

    .line 181
    :cond_4f
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    .line 188
    :catch_52
    move-exception v0

    .line 189
    const/4 v0, 0x0

    .line 191
    :cond_54
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .registers 7
    .parameter

    .prologue
    .line 137
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 140
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 141
    if-eqz v0, :cond_34

    .line 142
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_34

    .line 144
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_64

    const/4 v0, 0x1

    .line 145
    :goto_1c
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 147
    if-eqz v0, :cond_34

    if-eqz v2, :cond_34

    .line 148
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v3

    .line 151
    if-gez v3, :cond_66

    .line 152
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 156
    :goto_2f
    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 162
    :cond_34
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 163
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 165
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 168
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 170
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 172
    return-object v0

    .line 144
    :cond_64
    const/4 v0, 0x0

    goto :goto_1c

    .line 154
    :cond_66
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_2f
.end method

.method public static a(Landroid/content/Context;Ldbxyzptlk/k/e;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 59
    sget-boolean v0, Ldbxyzptlk/k/a;->b:Z

    if-nez v0, :cond_1e

    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->E()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Ldbxyzptlk/k/a;->b:Z

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 63
    new-instance v1, Ldbxyzptlk/k/b;

    invoke-direct {v1, p0, p1, v0}, Ldbxyzptlk/k/b;-><init>(Landroid/content/Context;Ldbxyzptlk/k/e;Landroid/os/Handler;)V

    .line 74
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 76
    :cond_1e
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Ldbxyzptlk/k/a;->b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1
    .parameter

    .prologue
    .line 40
    sput-boolean p0, Ldbxyzptlk/k/a;->b:Z

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 80
    const-string v1, "unknown"

    .line 82
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 84
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 87
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 88
    if-eqz v0, :cond_a5

    .line 89
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_15
    const-string v1, ""

    .line 94
    :try_start_17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 96
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_26} :catch_a3

    .line 100
    :goto_26
    const-string v4, "https://api.dropbox.com/1/report_host_info?"

    .line 102
    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "app_version"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    const-string v6, "client_locale"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    const-string v6, "carrier"

    aput-object v6, v5, v1

    const/4 v1, 0x5

    aput-object v0, v5, v1

    const/4 v0, 0x6

    const-string v1, "sys_model"

    aput-object v1, v5, v0

    const/4 v0, 0x7

    aput-object v2, v5, v0

    const/16 v0, 0x8

    const-string v1, "sys_version"

    aput-object v1, v5, v0

    const/16 v0, 0x9

    aput-object v3, v5, v0

    const/16 v0, 0xa

    const-string v1, "oem_info"

    aput-object v1, v5, v0

    const/16 v0, 0xb

    invoke-static {p0}, Lcom/dropbox/android/util/V;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 111
    invoke-static {v5}, Ldbxyzptlk/k/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {p0}, Ldbxyzptlk/k/a;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 114
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 116
    :try_start_8d
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 117
    new-instance v0, Ldbxyzptlk/k/c;

    invoke-direct {v0}, Ldbxyzptlk/k/c;-><init>()V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_98} :catch_99

    .line 132
    :goto_98
    return-void

    .line 124
    :catch_99
    move-exception v0

    .line 125
    new-instance v0, Ldbxyzptlk/k/d;

    invoke-direct {v0}, Ldbxyzptlk/k/d;-><init>()V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_98

    .line 98
    :catch_a3
    move-exception v4

    goto :goto_26

    :cond_a5
    move-object v0, v1

    goto/16 :goto_15
.end method

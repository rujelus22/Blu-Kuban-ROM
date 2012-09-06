.class public Lar/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .registers 3
    .parameter

    .prologue
    .line 130
    const/16 v0, 0x1388

    if-lt p1, v0, :cond_a

    const/16 v0, 0x1770

    if-gt p1, v0, :cond_a

    .line 131
    const/4 v0, 0x0

    .line 135
    :goto_9
    return v0

    .line 132
    :cond_a
    const/16 v0, 0x96c

    if-lt p1, v0, :cond_14

    const/16 v0, 0x9a8

    if-gt p1, v0, :cond_14

    .line 133
    const/4 v0, 0x2

    goto :goto_9

    .line 135
    :cond_14
    const/4 v0, -0x1

    goto :goto_9
.end method

.method private b(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 149
    :try_start_19
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_20
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_20} :catch_22

    move-result-object v0

    .line 152
    :goto_21
    return-object v0

    .line 151
    :catch_22
    move-exception v0

    .line 152
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method public a()Lar/c;
    .registers 11

    .prologue
    const/4 v5, -0x1

    .line 31
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    move-result-object v0

    .line 32
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 34
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 35
    if-eqz v4, :cond_21

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 36
    :cond_21
    invoke-static {}, Lar/c;->e()Lar/c;

    move-result-object v0

    .line 64
    :goto_25
    return-object v0

    .line 38
    :cond_26
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    .line 41
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-direct {p0, v4}, Lar/a;->b(I)Ljava/lang/String;

    move-result-object v7

    .line 44
    const/4 v8, 0x0

    .line 45
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 46
    if-eqz v9, :cond_81

    .line 47
    const/4 v0, 0x0

    move v4, v0

    :goto_47
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_81

    .line 48
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_7b

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 50
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 59
    :goto_6b
    if-eqz v0, :cond_7f

    .line 60
    iget v5, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 61
    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v0}, Lar/a;->a(I)I

    move-result v4

    .line 64
    :goto_75
    new-instance v0, Lar/c;

    invoke-direct/range {v0 .. v7}, Lar/c;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 47
    :cond_7b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_47

    :cond_7f
    move v4, v5

    goto :goto_75

    :cond_81
    move-object v0, v8

    goto :goto_6b
.end method

.method public a(Lar/e;)V
    .registers 5
    .parameter

    .prologue
    .line 161
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v1

    new-instance v2, Lar/b;

    invoke-direct {v2, p0, p1}, Lar/b;-><init>(Lar/a;Lar/e;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 177
    return-void
.end method

.method public b()[Lar/c;
    .registers 16

    .prologue
    .line 70
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    move-result-object v0

    .line 71
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 73
    invoke-virtual {p0}, Lar/a;->a()Lar/c;

    move-result-object v13

    .line 75
    const/4 v12, 0x0

    .line 76
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v14

    .line 77
    if-eqz v14, :cond_83

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_83

    .line 78
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v12, v0, [Lar/c;

    .line 79
    const/4 v0, 0x0

    aput-object v13, v12, v0

    .line 81
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    move-object v0, v12

    .line 118
    :cond_38
    :goto_38
    return-object v0

    .line 85
    :cond_39
    const/4 v1, 0x1

    .line 87
    const/4 v0, 0x0

    move v10, v0

    move v11, v1

    :goto_3d
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_81

    .line 88
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 90
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 91
    invoke-virtual {v13}, Lar/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    move v1, v11

    .line 87
    :cond_56
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    move v11, v1

    goto :goto_3d

    .line 95
    :cond_5b
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 96
    iget v5, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 98
    new-instance v0, Lar/c;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v13}, Lar/c;->h()J

    move-result-wide v8

    invoke-direct/range {v0 .. v9}, Lar/c;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V

    aput-object v0, v12, v11

    .line 107
    add-int/lit8 v1, v11, 0x1

    .line 108
    array-length v0, v12

    if-ne v1, v0, :cond_56

    move-object v0, v12

    .line 114
    :goto_74
    if-nez v0, :cond_38

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Lar/c;

    const/4 v1, 0x0

    invoke-static {}, Lar/c;->e()Lar/c;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_38

    :cond_81
    move-object v0, v12

    goto :goto_74

    :cond_83
    move-object v0, v12

    goto :goto_74
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 181
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    move-result-object v0

    .line 182
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 183
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 184
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

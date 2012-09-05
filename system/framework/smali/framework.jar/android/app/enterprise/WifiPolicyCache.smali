.class public Landroid/app/enterprise/WifiPolicyCache;
.super Ljava/lang/Object;
.source "WifiPolicyCache.java"


# static fields
.field public static final ACTION_WIFI_POLICY_STATE_CHANGED:Ljava/lang/String; = "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

.field public static final EXTRA_WIFI_TYPE_CHANGED:Ljava/lang/String; = "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

.field public static final TYPE_ALLOW_USER_CHANGES:Ljava/lang/String; = "ALLOW_USER_CHANGES"

.field public static final TYPE_ALLOW_USER_PROFILES:Ljava/lang/String; = "ALLOW_USER_PROFILES"

.field public static final TYPE_BLOCKED_NETWORKS:Ljava/lang/String; = "BLOCKED_NETWORKS"

.field public static final TYPE_ENTERPRISE_SSIDS:Ljava/lang/String; = "ENTERPRISE_SSIDS"

.field public static final TYPE_MINIMUM_SECURITY_LEVEL:Ljava/lang/String; = "MINIMUM_SECURITY_LEVEL"

.field public static final TYPE_PROMPT_CREDENTIALS_ENABLED:Ljava/lang/String; = "PROMPT_CREDENTIALS_ENABLED"

.field public static final TYPE_WIFI_ALLOWED:Ljava/lang/String; = "WIFI_ALLOWED"

.field private static sInstance:Landroid/app/enterprise/WifiPolicyCache;


# instance fields
.field private mAllowUserChanges:Z

.field private mAllowUserProfiles:Z

.field private mBlockedSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnterpriseSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimumSecurityLevel:I

.field private mPromptCredentialsEnabled:Z

.field private mWifiAllowed:Z

.field private mWifiPolicy:Landroid/app/enterprise/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Landroid/app/enterprise/WifiPolicyCache;->sInstance:Landroid/app/enterprise/WifiPolicyCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    .line 42
    iput-boolean v3, p0, Landroid/app/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    .line 43
    iput-boolean v3, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    .line 44
    iput-boolean v3, p0, Landroid/app/enterprise/WifiPolicyCache;->mAllowUserProfiles:Z

    .line 45
    iput-boolean v3, p0, Landroid/app/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    .line 46
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    .line 61
    const-string v2, "enterprise_policy"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 63
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    iput-object v2, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    .line 64
    iput-object p1, p0, Landroid/app/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    .line 66
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    new-instance v2, Landroid/app/enterprise/WifiPolicyCache$1;

    invoke-direct {v2, p0}, Landroid/app/enterprise/WifiPolicyCache$1;-><init>(Landroid/app/enterprise/WifiPolicyCache;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/app/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Landroid/app/enterprise/WifiPolicyCache;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/enterprise/WifiPolicyCache;
    .registers 2
    .parameter "context"

    .prologue
    .line 54
    sget-object v0, Landroid/app/enterprise/WifiPolicyCache;->sInstance:Landroid/app/enterprise/WifiPolicyCache;

    if-nez v0, :cond_b

    .line 55
    new-instance v0, Landroid/app/enterprise/WifiPolicyCache;

    invoke-direct {v0, p0}, Landroid/app/enterprise/WifiPolicyCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/app/enterprise/WifiPolicyCache;->sInstance:Landroid/app/enterprise/WifiPolicyCache;

    .line 57
    :cond_b
    sget-object v0, Landroid/app/enterprise/WifiPolicyCache;->sInstance:Landroid/app/enterprise/WifiPolicyCache;

    return-object v0
.end method

.method private declared-synchronized readVariables(Ljava/lang/String;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 89
    monitor-enter p0

    if-nez p1, :cond_3f

    .line 90
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    .line 91
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    .line 92
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    .line 93
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mAllowUserProfiles:Z

    .line 94
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    .line 95
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    .line 96
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_50

    .line 114
    :cond_3d
    :goto_3d
    monitor-exit p0

    return-void

    .line 99
    :cond_3f
    :try_start_3f
    const-string v0, "ENTERPRISE_SSIDS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 100
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_50

    goto :goto_3d

    .line 89
    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0

    .line 101
    :cond_53
    :try_start_53
    const-string v0, "BLOCKED_NETWORKS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 102
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    goto :goto_3d

    .line 103
    :cond_64
    const-string v0, "ALLOW_USER_CHANGES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 104
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    goto :goto_3d

    .line 105
    :cond_75
    const-string v0, "ALLOW_USER_PROFILES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 106
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mAllowUserProfiles:Z

    goto :goto_3d

    .line 107
    :cond_87
    const-string v0, "WIFI_ALLOWED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 108
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    goto :goto_3d

    .line 109
    :cond_99
    const-string v0, "PROMPT_CREDENTIALS_ENABLED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 110
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    goto :goto_3d

    .line 111
    :cond_aa
    const-string v0, "MINIMUM_SECURITY_LEVEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 112
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I
    :try_end_ba
    .catchall {:try_start_53 .. :try_end_ba} :catchall_50

    goto :goto_3d
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 177
    if-nez p1, :cond_7

    .line 178
    const/4 p1, 0x0

    .line 184
    .end local p1
    :cond_6
    :goto_6
    return-object p1

    .line 180
    .restart local p1
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 181
    .local v0, length:I
    if-le v0, v2, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    .line 182
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method private showMessage(I)V
    .registers 5
    .parameter "resId"

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v1, "message"

    iget-object v2, p0, Landroid/app/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    return-void
.end method


# virtual methods
.method public declared-synchronized getAllowUserChanges()Z
    .registers 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mAllowUserChanges:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUserProfiles()Z
    .registers 2

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mAllowUserProfiles:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_8

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_6
    monitor-exit p0

    return v0

    .line 136
    :cond_8
    const v0, 0x10401ac

    :try_start_b
    invoke-direct {p0, v0}, Landroid/app/enterprise/WifiPolicyCache;->showMessage(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 137
    const/4 v0, 0x0

    goto :goto_6

    .line 133
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPromptCredentialsEnabled()Z
    .registers 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnterpriseNetwork(Ljava/lang/String;)Z
    .registers 4
    .parameter "ssid"

    .prologue
    .line 117
    monitor-enter p0

    if-eqz p1, :cond_f

    .line 118
    :try_start_3
    iget-object v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/app/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    .line 120
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 117
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 7
    .parameter "config"
    .parameter "showMsg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    monitor-enter p0

    if-nez p1, :cond_7

    .line 155
    :cond_5
    :goto_5
    monitor-exit p0

    return v0

    .line 144
    :cond_7
    :try_start_7
    iget-object v2, p0, Landroid/app/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/app/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 145
    if-eqz p2, :cond_1d

    .line 146
    const v0, 0x10401a9

    invoke-direct {p0, v0}, Landroid/app/enterprise/WifiPolicyCache;->showMessage(I)V

    :cond_1d
    move v0, v1

    .line 148
    goto :goto_5

    .line 149
    :cond_1f
    invoke-static {p1}, Landroid/app/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    iget v3, p0, Landroid/app/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    if-ge v2, v3, :cond_5

    .line 150
    if-eqz p2, :cond_2f

    .line 151
    const v0, 0x10401ab

    invoke-direct {p0, v0}, Landroid/app/enterprise/WifiPolicyCache;->showMessage(I)V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_31

    :cond_2f
    move v0, v1

    .line 153
    goto :goto_5

    .line 142
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWifiAllowed(Z)Z
    .registers 3
    .parameter "showMsg"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/app/enterprise/WifiPolicyCache;->mWifiAllowed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_8

    .line 161
    const/4 v0, 0x1

    .line 166
    :goto_6
    monitor-exit p0

    return v0

    .line 163
    :cond_8
    if-eqz p1, :cond_10

    .line 164
    const v0, 0x10401aa

    :try_start_d
    invoke-direct {p0, v0}, Landroid/app/enterprise/WifiPolicyCache;->showMessage(I)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    .line 166
    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    .line 160
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

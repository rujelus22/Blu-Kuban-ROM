.class public Lcom/samsung/swift/service/network/MobileAp21NetworkInterface;
.super Lcom/samsung/swift/service/network/NetworkInterface;
.source "MobileAp21NetworkInterface.java"


# static fields
.field public static final INTERFACENAME:Ljava/lang/String; = "wl0.1"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 108
    const-string v0, "wl0.1"

    invoke-direct {p0, v0}, Lcom/samsung/swift/service/network/NetworkInterface;-><init>(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static getMobileApDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 158
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 159
    .local v0, model:Ljava/lang/String;
    const-string v1, "I9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "M110S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "M220L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 161
    :cond_1a
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v1

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/swift/R$string;->mobileap2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    :goto_30
    return-object v1

    :cond_31
    invoke-static {}, Lcom/samsung/swift/util/MarketSpecificModifier;->getInstance()Lcom/samsung/swift/util/MarketSpecificModifier;

    move-result-object v1

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/swift/R$string;->mobileap:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/swift/util/MarketSpecificModifier;->modifyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_30
.end method

.method private getMobileApIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MOBILEAP_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    return-object v0
.end method

.method public static getUpMobileApNetwork()Lcom/samsung/swift/security/Network;
    .registers 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 171
    const-string v4, "mobileap.enable.status"

    invoke-static {v4, v6}, Lcom/samsung/swift/util/AndroidSystemProperties;->getNativeProperty(Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, mobileAp:I
    if-eq v1, v5, :cond_d

    move-object v2, v3

    .line 195
    :goto_c
    return-object v2

    .line 179
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/samsung/swift/security/Network;->make()Lcom/samsung/swift/security/Network;

    move-result-object v2

    .line 180
    .local v2, network:Lcom/samsung/swift/security/Network;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/swift/security/Network;->setWiFi(Z)V

    .line 181
    const-string v4, "wl0.1"

    invoke-virtual {v2, v4}, Lcom/samsung/swift/security/Network;->setInterfaceId(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Lcom/samsung/swift/security/Network;->loadIpAddressMacAddress()Z

    move-result v4

    if-nez v4, :cond_22

    move-object v2, v3

    .line 185
    goto :goto_c

    .line 187
    :cond_22
    const-string v4, "mobileap.ssid.value"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/samsung/swift/util/AndroidSystemProperties;->getNativeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/swift/security/Network;->setSsid(Ljava/lang/String;)V

    .line 188
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/swift/security/Network;->setInsecureWifi(Z)V

    .line 189
    const/high16 v4, 0x4130

    invoke-virtual {v2, v4}, Lcom/samsung/swift/security/Network;->setWiFiSignalStrength(F)V

    .line 190
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/swift/security/Network;->setWiFiAssociated(Z)V
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_3a} :catch_3b

    goto :goto_c

    .line 193
    .end local v2           #network:Lcom/samsung/swift/security/Network;
    :catch_3b
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-object v2, v3

    .line 195
    goto :goto_c
.end method

.method public static isInstalled()Z
    .registers 3

    .prologue
    .line 152
    const-string v1, "mobileap.enable.status"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/swift/util/AndroidSystemProperties;->getNativeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, status:Ljava/lang/String;
    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method


# virtual methods
.method public connect()Z
    .registers 3

    .prologue
    .line 123
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/swift/service/network/MobileAp21NetworkInterface;->getMobileApIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    .line 131
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/swift/service/network/MobileAp21NetworkInterface;->getMobileApIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp21NetworkInterface;->getMobileApDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHotspot()Z
    .registers 2

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public needsAssociatedCheck()Z
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public postConnection()V
    .registers 5

    .prologue
    .line 144
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "press_back_return_webstudio"

    invoke-static {v2}, Lcom/samsung/swift/Swift;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 147
    .local v0, msg:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    return-void
.end method

.class public abstract Lcom/samsung/swift/service/network/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String;

.field private static list:[Lcom/samsung/swift/service/network/NetworkInterface;


# instance fields
.field protected final network:Lcom/samsung/swift/security/Network;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const-class v0, Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/network/NetworkInterface;->LOGTAG:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/swift/service/network/NetworkInterface;->list:[Lcom/samsung/swift/service/network/NetworkInterface;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "ifname"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {}, Lcom/samsung/swift/security/Network;->make()Lcom/samsung/swift/security/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    .line 107
    iget-object v0, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    invoke-virtual {v0, p1}, Lcom/samsung/swift/security/Network;->setInterfaceId(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static getList()[Lcom/samsung/swift/service/network/NetworkInterface;
    .registers 4

    .prologue
    .line 158
    sget-object v3, Lcom/samsung/swift/service/network/NetworkInterface;->list:[Lcom/samsung/swift/service/network/NetworkInterface;

    if-nez v3, :cond_3e

    .line 160
    invoke-static {}, Lcom/samsung/swift/Swift;->getSimState()I

    move-result v2

    .line 161
    .local v2, simState:I
    invoke-static {}, Lcom/samsung/swift/Swift;->isTelephonySupported()Z

    move-result v0

    .line 163
    .local v0, hasTelephony:Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/swift/service/network/NetworkInterface;>;"
    if-nez v0, :cond_15

    if-eqz v2, :cond_23

    .line 166
    :cond_15
    invoke-static {}, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 168
    new-instance v3, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;

    invoke-direct {v3}, Lcom/samsung/swift/service/network/VerizonHotspotNetworkInterface;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_23
    :goto_23
    invoke-static {}, Lcom/samsung/swift/service/network/WifiNetworkInterface;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 185
    new-instance v3, Lcom/samsung/swift/service/network/WifiNetworkInterface;

    invoke-direct {v3}, Lcom/samsung/swift/service/network/WifiNetworkInterface;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/samsung/swift/service/network/NetworkInterface;

    sput-object v3, Lcom/samsung/swift/service/network/NetworkInterface;->list:[Lcom/samsung/swift/service/network/NetworkInterface;

    .line 188
    sget-object v3, Lcom/samsung/swift/service/network/NetworkInterface;->list:[Lcom/samsung/swift/service/network/NetworkInterface;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 191
    :cond_3e
    sget-object v3, Lcom/samsung/swift/service/network/NetworkInterface;->list:[Lcom/samsung/swift/service/network/NetworkInterface;

    return-object v3

    .line 170
    :cond_41
    invoke-static {}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 172
    new-instance v3, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;

    invoke-direct {v3}, Lcom/samsung/swift/service/network/SprintHotspotNetworkInterface;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 174
    :cond_50
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp21NetworkInterface;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 176
    new-instance v3, Lcom/samsung/swift/service/network/MobileAp21NetworkInterface;

    invoke-direct {v3}, Lcom/samsung/swift/service/network/MobileAp21NetworkInterface;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 178
    :cond_5f
    invoke-static {}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 180
    new-instance v3, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;

    invoke-direct {v3}, Lcom/samsung/swift/service/network/MobileAp22NetworkInterface;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method public static selectByName(Ljava/lang/String;)Lcom/samsung/swift/service/network/NetworkInterface;
    .registers 6
    .parameter "name"

    .prologue
    .line 196
    invoke-static {}, Lcom/samsung/swift/service/network/NetworkInterface;->getList()[Lcom/samsung/swift/service/network/NetworkInterface;

    move-result-object v0

    .local v0, arr$:[Lcom/samsung/swift/service/network/NetworkInterface;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 198
    .local v3, ni:Lcom/samsung/swift/service/network/NetworkInterface;
    invoke-virtual {v3}, Lcom/samsung/swift/service/network/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 200
    .end local v3           #ni:Lcom/samsung/swift/service/network/NetworkInterface;
    :goto_14
    return-object v3

    .line 196
    .restart local v3       #ni:Lcom/samsung/swift/service/network/NetworkInterface;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 200
    .end local v3           #ni:Lcom/samsung/swift/service/network/NetworkInterface;
    :cond_18
    const/4 v3, 0x0

    goto :goto_14
.end method


# virtual methods
.method public abstract connect()Z
.end method

.method public abstract disconnect()Z
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public getInterfaceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->getInterfaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract isHotspot()Z
.end method

.method public isUp()Z
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->isUp()Z

    move-result v0

    return v0
.end method

.method public isUpAndAssociated()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, numOfRetries:I
    const/4 v2, 0x0

    .line 116
    .local v2, retValue:I
    :goto_3
    const/4 v4, 0x3

    if-ge v1, v4, :cond_e

    .line 118
    iget-object v4, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    invoke-virtual {v4}, Lcom/samsung/swift/security/Network;->refreshState()I

    move-result v2

    if-nez v2, :cond_11

    .line 128
    :cond_e
    if-eqz v2, :cond_1e

    .line 136
    :goto_10
    return v3

    .line 119
    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 121
    const-wide/16 v4, 0x32

    :try_start_15
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_3

    .line 122
    :catch_19
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10

    .line 132
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1e
    sget-object v4, Lcom/samsung/swift/service/network/NetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    invoke-virtual {v6}, Lcom/samsung/swift/security/Network;->getInterfaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isUp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/swift/service/network/NetworkInterface;->isUp()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v4, Lcom/samsung/swift/service/network/NetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    invoke-virtual {v6}, Lcom/samsung/swift/security/Network;->getInterfaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isWiFi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    invoke-virtual {v6}, Lcom/samsung/swift/security/Network;->isWiFi()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v4, Lcom/samsung/swift/service/network/NetworkInterface;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    invoke-virtual {v6}, Lcom/samsung/swift/security/Network;->getInterfaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isWiFiAssociated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    invoke-virtual {v6}, Lcom/samsung/swift/security/Network;->isWiFiAssociated()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/samsung/swift/service/network/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_b1

    iget-object v4, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    invoke-virtual {v4}, Lcom/samsung/swift/security/Network;->isWiFi()Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-virtual {p0}, Lcom/samsung/swift/service/network/NetworkInterface;->needsAssociatedCheck()Z

    move-result v4

    if-eqz v4, :cond_b0

    iget-object v4, p0, Lcom/samsung/swift/service/network/NetworkInterface;->network:Lcom/samsung/swift/security/Network;

    invoke-virtual {v4}, Lcom/samsung/swift/security/Network;->isWiFiAssociated()Z

    move-result v4

    if-eqz v4, :cond_b1

    :cond_b0
    const/4 v3, 0x1

    .line 136
    .local v3, state:Z
    :cond_b1
    goto/16 :goto_10
.end method

.method public abstract needsAssociatedCheck()Z
.end method

.method public postConnection()V
    .registers 4

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/swift/applet/AppletActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method

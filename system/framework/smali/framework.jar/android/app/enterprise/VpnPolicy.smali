.class public Landroid/app/enterprise/VpnPolicy;
.super Ljava/lang/Object;
.source "VpnPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field static final TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field static final TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field static final TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field static final TYPE_MAX:I = 0x5

.field static final TYPE_PPTP:I = 0x0

.field public static final VPN_NEW_PROFILE:Ljava/lang/String; = "com.android.server.enterprise.VPN_NEW_PROFILE"


# instance fields
.field public DomainSuffices:Ljava/lang/String;

.field private final PROFILES_ROOT:Ljava/lang/String;

.field private final PROFILE_OBJ_FILE:Ljava/lang/String;

.field private final lService:Landroid/app/enterprise/IVpnInfoPolicy;

.field public name:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "VpnPolicy"

    sput-object v0, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/vpn/VpnManager;->getProfilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/VpnPolicy;->PROFILES_ROOT:Ljava/lang/String;

    .line 30
    const-string v0, ".pobj"

    iput-object v0, p0, Landroid/app/enterprise/VpnPolicy;->PROFILE_OBJ_FILE:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnPolicy;->name:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/enterprise/VpnPolicy;->type:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Landroid/app/enterprise/VpnPolicy;->server:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IVpnInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    .line 48
    sget-object v0, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vpn policy API -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method private checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z
    .registers 6
    .parameter "dirName"
    .parameter "p"

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 66
    sget-object v0, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID inconsistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x1

    goto :goto_31
.end method

.method private deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;
    .registers 7
    .parameter "profileObjectFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v1, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 56
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 60
    .end local v1           #ois:Ljava/io/ObjectInputStream;
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_13
    return-object v2

    .line 58
    :catch_14
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/ClassNotFoundException;
    sget-object v3, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "deserialize a profile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v2, 0x0

    goto :goto_13
.end method


# virtual methods
.method public createProfile(Landroid/app/enterprise/VpnAdminProfile;)Z
    .registers 9
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 111
    :try_start_1
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v3, :cond_5e

    .line 114
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/app/enterprise/IVpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    .line 149
    :cond_14
    :goto_14
    return v1

    .line 118
    :cond_15
    const/4 v1, 0x1

    .line 119
    .local v1, success:Z
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->createProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 120
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 121
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 123
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "PPTP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 124
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z

    move-result v3

    and-int/2addr v1, v3

    .line 142
    :cond_4e
    :goto_4e
    if-nez v1, :cond_14

    .line 143
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/app/enterprise/VpnPolicy;->deleteProfile(Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_55} :catch_56

    goto :goto_14

    .line 146
    .end local v1           #success:Z
    :catch_56
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at Vpn policy API createProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5e
    move v1, v2

    .line 149
    goto :goto_14

    .line 126
    .restart local v1       #success:Z
    :cond_60
    :try_start_60
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "L2TP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 128
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_4e

    .line 130
    :cond_78
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "L2TP_IPSEC_PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 132
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 134
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_4e

    .line 135
    :cond_9b
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "L2TP_IPSEC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 137
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 139
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 140
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_c6} :catch_56

    move-result v3

    and-int/2addr v1, v3

    goto :goto_4e
.end method

.method public deleteProfile(Ljava/lang/String;)V
    .registers 5
    .parameter "profileName"

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_9

    .line 168
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->deleteProfile(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 173
    :cond_9
    :goto_9
    return-void

    .line 170
    :catch_a
    move-exception v0

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API deleteProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getIPSecCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "profileName"

    .prologue
    .line 412
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 413
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 418
    :goto_a
    return-object v1

    .line 415
    :catch_b
    move-exception v0

    .line 416
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getIPSecPreSharedKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "profileName"

    .prologue
    .line 355
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 356
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getPresharedKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 361
    :goto_a
    return-object v1

    .line 358
    :catch_b
    move-exception v0

    .line 359
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getSharedSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getIPSecUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "profileName"

    .prologue
    .line 470
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 471
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 476
    :goto_a
    return-object v1

    .line 473
    :catch_b
    move-exception v0

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "profileName"

    .prologue
    .line 606
    const/4 v1, 0x0

    .line 608
    .local v1, str:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_10

    .line 609
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    .line 610
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v1

    .line 615
    .end local v1           #str:Ljava/lang/String;
    :cond_10
    :goto_10
    return-object v1

    .line 612
    .restart local v1       #str:Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 613
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "profileName"

    .prologue
    .line 799
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 800
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 805
    :goto_a
    return-object v1

    .line 802
    :catch_b
    move-exception v0

    .line 803
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getL2TPSecret "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getServerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "profileName"

    .prologue
    .line 578
    const/4 v1, 0x0

    .line 580
    .local v1, str:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_10

    .line 581
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    .line 582
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getServerName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v1

    .line 587
    .end local v1           #str:Ljava/lang/String;
    :cond_10
    :goto_10
    return-object v1

    .line 584
    .restart local v1       #str:Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 585
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getServerName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getState(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "profileName"

    .prologue
    .line 634
    const/4 v1, 0x0

    .line 636
    .local v1, str:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_b

    .line 637
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 642
    .end local v1           #str:Ljava/lang/String;
    :cond_b
    :goto_b
    return-object v1

    .line 639
    .restart local v1       #str:Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 640
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "profileName"

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 552
    .local v1, str:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_10

    .line 553
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    .line 554
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v1

    .line 559
    .end local v1           #str:Ljava/lang/String;
    :cond_10
    :goto_10
    return-object v1

    .line 556
    .restart local v1       #str:Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 557
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public getUserName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "profileName"

    .prologue
    .line 662
    const/4 v1, 0x0

    .line 664
    .local v1, userName:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_b

    .line 665
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 670
    .end local v1           #userName:Ljava/lang/String;
    :cond_b
    :goto_b
    return-object v1

    .line 667
    .restart local v1       #userName:Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 668
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "id"

    .prologue
    .line 844
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 845
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 851
    :goto_a
    return-object v1

    .line 848
    :catch_b
    move-exception v0

    .line 849
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getUserPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "profileName"

    .prologue
    .line 689
    const/4 v1, 0x0

    .line 691
    .local v1, userPwd:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_b

    .line 692
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserPwd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 697
    .end local v1           #userPwd:Ljava/lang/String;
    :cond_b
    :goto_b
    return-object v1

    .line 694
    .restart local v1       #userPwd:Ljava/lang/String;
    :catch_c
    move-exception v0

    .line 695
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "id"

    .prologue
    .line 863
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 864
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 870
    :goto_a
    return-object v1

    .line 867
    :catch_b
    move-exception v0

    .line 868
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getVpnList()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 742
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 743
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IVpnInfoPolicy;->getVPNList()[Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 748
    :goto_a
    return-object v1

    .line 745
    :catch_b
    move-exception v0

    .line 746
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getVpnList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isAdminProfile(Ljava/lang/String;)Z
    .registers 6
    .parameter "profileName"

    .prologue
    .line 715
    const/4 v1, 0x0

    .line 717
    .local v1, isAdminProfile:Z
    :try_start_1
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_16

    .line 718
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    .line 719
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v3, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/enterprise/IVpnInfoPolicy;->isAdminProfile(Ljava/lang/String;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_17

    move-result v1

    .line 724
    .end local v1           #isAdminProfile:Z
    :cond_16
    :goto_16
    return v1

    .line 721
    .restart local v1       #isAdminProfile:Z
    :catch_17
    move-exception v0

    .line 722
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API isAdminProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public isL2TPSecretEnabled(Ljava/lang/String;)Z
    .registers 5
    .parameter "profileName"

    .prologue
    .line 825
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 826
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->isL2TPSecretEnabled(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 832
    :goto_a
    return v1

    .line 829
    :catch_b
    move-exception v0

    .line 830
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 832
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .registers 5
    .parameter "profileName"

    .prologue
    .line 524
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 525
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 530
    :goto_a
    return v1

    .line 527
    :catch_b
    move-exception v0

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public retrieveVpnFromStorageGB(Ljava/lang/String;Ljava/io/File;)V
    .registers 7
    .parameter "dir"
    .parameter "f"

    .prologue
    .line 74
    :try_start_0
    invoke-direct {p0, p2}, Landroid/app/enterprise/VpnPolicy;->deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;

    move-result-object v1

    .line 75
    .local v1, vpn:Landroid/net/vpn/VpnProfile;
    if-nez v1, :cond_7

    .line 90
    .end local v1           #vpn:Landroid/net/vpn/VpnProfile;
    :cond_6
    :goto_6
    return-void

    .line 76
    .restart local v1       #vpn:Landroid/net/vpn/VpnProfile;
    :cond_7
    invoke-direct {p0, p1, v1}, Landroid/app/enterprise/VpnPolicy;->checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 78
    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/enterprise/VpnPolicy;->name:Ljava/lang/String;

    .line 80
    sget-object v2, Landroid/net/vpn/VpnType;->PPTP:Landroid/net/vpn/VpnType;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v3

    if-ne v2, v3, :cond_35

    .line 81
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/enterprise/VpnPolicy;->type:I

    .line 85
    :goto_1e
    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getServerName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/enterprise/VpnPolicy;->server:Ljava/lang/String;

    .line 86
    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getDomainSuffices()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/enterprise/VpnPolicy;->DomainSuffices:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_6

    .line 87
    .end local v1           #vpn:Landroid/net/vpn/VpnProfile;
    :catch_2b
    move-exception v0

    .line 88
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "retrieveVpnListFromStorage()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 83
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #vpn:Landroid/net/vpn/VpnProfile;
    :cond_35
    const/4 v2, 0x2

    :try_start_36
    iput v2, p0, Landroid/app/enterprise/VpnPolicy;->type:I
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_38} :catch_2b

    goto :goto_1e
.end method

.method public setIPSecCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 386
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 387
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 392
    :goto_a
    return v1

    .line 389
    :catch_b
    move-exception v0

    .line 390
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setIPSecPreSharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "profileName"
    .parameter "psk"

    .prologue
    .line 329
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 330
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 335
    :goto_a
    return v1

    .line 332
    :catch_b
    move-exception v0

    .line 333
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setSharedSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setIPSecUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 444
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 445
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 450
    :goto_a
    return v1

    .line 447
    :catch_b
    move-exception v0

    .line 448
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "profileName"
    .parameter "id"

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_9

    .line 247
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setId(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 252
    :cond_9
    :goto_9
    return-void

    .line 249
    :catch_a
    move-exception v0

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 7
    .parameter "profileName"
    .parameter "enabled"
    .parameter "secret"

    .prologue
    .line 773
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 774
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 779
    :goto_a
    return v1

    .line 776
    :catch_b
    move-exception v0

    .line 777
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setL2TPSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setPPTPEncryptionEnabled(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "profileName"
    .parameter "enabled"

    .prologue
    .line 498
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 499
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 504
    :goto_a
    return v1

    .line 501
    :catch_b
    move-exception v0

    .line 502
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "oldProfileName"
    .parameter "newProfileName"

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_9

    .line 194
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 199
    :cond_9
    :goto_9
    return-void

    .line 196
    :catch_a
    move-exception v0

    .line 197
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setServerName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "profileName"
    .parameter "serverName"

    .prologue
    .line 219
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_9

    .line 220
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setServerName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 225
    :cond_9
    :goto_9
    return-void

    .line 222
    :catch_a
    move-exception v0

    .line 223
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "profileName"
    .parameter "userName"

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 274
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 279
    :goto_a
    return v1

    .line 276
    :catch_b
    move-exception v0

    .line 277
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "profileName"
    .parameter "userPassword"

    .prologue
    .line 301
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 302
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 307
    :goto_a
    return v1

    .line 304
    :catch_b
    move-exception v0

    .line 305
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setVpnProfile(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    .line 885
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_13

    .line 886
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 892
    :goto_a
    return v1

    .line 889
    :catch_b
    move-exception v0

    .line 890
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

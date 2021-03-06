.class public Landroid/app/enterprise/RoamingPolicy;
.super Ljava/lang/Object;
.source "RoamingPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IRoamingPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, "RoamingPolicy"

    sput-object v0, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "roaming_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRoamingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    .line 23
    return-void
.end method


# virtual methods
.method public isRoamingDataEnabled()Z
    .registers 4

    .prologue
    .line 149
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_13

    .line 151
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingDataEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 156
    :goto_a
    return v1

    .line 152
    :catch_b
    move-exception v0

    .line 153
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isRoamingPushEnabled()Z
    .registers 4

    .prologue
    .line 105
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_13

    .line 107
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingPushEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 112
    :goto_a
    return v1

    .line 108
    :catch_b
    move-exception v0

    .line 109
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public isRoamingSyncEnabled()Z
    .registers 4

    .prologue
    .line 59
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_13

    .line 61
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IRoamingPolicy;->isRoamingSyncEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 66
    :goto_a
    return v1

    .line 62
    :catch_b
    move-exception v0

    .line 63
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public setRoamingData(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 130
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 132
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingData(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 137
    :cond_9
    :goto_9
    return-void

    .line 133
    :catch_a
    move-exception v0

    .line 134
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRoamingPush(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 84
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 86
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingPush(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 91
    :cond_9
    :goto_9
    return-void

    .line 87
    :catch_a
    move-exception v0

    .line 88
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setRoamingSync(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 41
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    if-eqz v1, :cond_9

    .line 43
    :try_start_4
    iget-object v1, p0, Landroid/app/enterprise/RoamingPolicy;->mService:Landroid/app/enterprise/IRoamingPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IRoamingPolicy;->setRoamingSync(Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 48
    :cond_9
    :goto_9
    return-void

    .line 44
    :catch_a
    move-exception v0

    .line 45
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with roaming policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

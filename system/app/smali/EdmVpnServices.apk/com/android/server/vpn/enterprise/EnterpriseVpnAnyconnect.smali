.class public Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;
.super Landroid/app/Service;
.source "EnterpriseVpnAnyconnect.java"


# instance fields
.field private final mBinder:Landroid/app/enterprise/IEnterpriseVpnInterface$Stub;

.field private mCertHandler:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

.field private mCertInstallLock:Ljava/lang/Object;

.field private mCertList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private mCertListLock:Ljava/lang/Object;

.field private mCertSuccess:Z

.field private mLoadServiceSem:Ljava/util/concurrent/Semaphore;

.field private mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    new-instance v1, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$1;

    invoke-direct {v1, p0, p0}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$1;-><init>(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;)V

    iput-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    .line 85
    new-instance v0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$2;

    invoke-direct {v0, p0}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$2;-><init>(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)V

    iput-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertHandler:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    .line 343
    new-instance v0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$4;

    invoke-direct {v0, p0}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$4;-><init>(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)V

    iput-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mBinder:Landroid/app/enterprise/IEnterpriseVpnInterface$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertHandler:Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Ljava/util/concurrent/Semaphore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mLoadServiceSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertSuccess:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->loadService(Z)V

    return-void
.end method

.method private convertToCiscoVpnConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .registers 9
    .parameter "conn"
    .parameter "old"

    .prologue
    const/4 v3, 0x0

    .line 318
    if-nez p1, :cond_5

    move-object v2, v3

    .line 339
    :cond_4
    :goto_4
    return-object v2

    .line 322
    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v4

    invoke-interface {v4}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    .line 324
    .local v0, connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    if-nez p2, :cond_45

    .line 325
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->CreateNew()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    .line 329
    .local v2, ret:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :goto_15
    iget-object v4, p1, Landroid/app/enterprise/EnterpriseVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetName(Ljava/lang/String;)V

    .line 330
    iget-object v4, p1, Landroid/app/enterprise/EnterpriseVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetHost(Ljava/lang/String;)V

    .line 331
    iget-object v4, p1, Landroid/app/enterprise/EnterpriseVpnConnection;->certHash:[B

    invoke-virtual {v2, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertHash([B)V

    .line 332
    iget-object v4, p1, Landroid/app/enterprise/EnterpriseVpnConnection;->certCommonName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertCommonName(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseVpnConnection;->getCertAuthMode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 334
    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseVpnConnection;->getCertAuthMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->SetCertAuthMode(Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3a} :catch_3b

    goto :goto_4

    .line 337
    .end local v0           #connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .end local v2           #ret:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :catch_3b
    move-exception v1

    .line 338
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "EnterpriseVpnAnyconnect"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 339
    goto :goto_4

    .line 327
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    :cond_45
    move-object v2, p2

    .restart local v2       #ret:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    goto :goto_15
.end method

.method private convertToEdmVpnConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Landroid/app/enterprise/EnterpriseVpnConnection;
    .registers 4
    .parameter "conn"

    .prologue
    .line 301
    if-nez p1, :cond_4

    .line 302
    const/4 v0, 0x0

    .line 313
    :cond_3
    :goto_3
    return-object v0

    .line 304
    :cond_4
    new-instance v0, Landroid/app/enterprise/EnterpriseVpnConnection;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseVpnConnection;-><init>()V

    .line 305
    .local v0, ret:Landroid/app/enterprise/EnterpriseVpnConnection;
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/enterprise/EnterpriseVpnConnection;->name:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/enterprise/EnterpriseVpnConnection;->host:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertHash()[B

    move-result-object v1

    iput-object v1, v0, Landroid/app/enterprise/EnterpriseVpnConnection;->certHash:[B

    .line 308
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertCommonName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/enterprise/EnterpriseVpnConnection;->certCommonName:Ljava/lang/String;

    .line 309
    const-string v1, "anyconnect"

    iput-object v1, v0, Landroid/app/enterprise/EnterpriseVpnConnection;->type:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 311
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetCertAuthMode()Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseVpnConnection;->setCertAuthMode(Ljava/lang/String;)Z

    goto :goto_3
.end method

.method private declared-synchronized loadService(Z)V
    .registers 8
    .parameter "sync"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    if-nez v2, :cond_36

    .line 136
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_12

    .line 137
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 139
    :cond_12
    iget-object v2, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mLoadServiceSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 140
    iget-object v2, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Activate()Z

    move-result v1

    .line 141
    .local v1, stat:Z
    if-nez v1, :cond_2b

    .line 142
    const-string v2, "EnterpriseVpnAnyconnect"

    const-string v3, "ServiceConnMgr.Activate failed. Please make sure that the main AnyConnect APK has been installed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mLoadServiceSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_41

    .line 148
    :cond_2b
    if-eqz p1, :cond_36

    .line 149
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mLoadServiceSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_36} :catch_38

    .line 155
    .end local v1           #stat:Z
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    .line 151
    .restart local v1       #stat:Z
    :catch_38
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_39
    const-string v2, "EnterpriseVpnAnyconnect"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_41

    goto :goto_36

    .line 135
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #stat:Z
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public createConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Z
    .registers 9
    .parameter "conn"
    .parameter "oldName"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    invoke-direct {p0, v3}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->loadService(Z)V

    .line 159
    iget-object v5, p1, Landroid/app/enterprise/EnterpriseVpnConnection;->name:Ljava/lang/String;

    if-eqz v5, :cond_13

    iget-object v5, p1, Landroid/app/enterprise/EnterpriseVpnConnection;->host:Ljava/lang/String;

    if-eqz v5, :cond_13

    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseVpnConnection;->getCertAuthMode()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_15

    :cond_13
    move v3, v4

    .line 176
    :cond_14
    :goto_14
    return v3

    .line 163
    :cond_15
    :try_start_15
    iget-object v5, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v5

    invoke-interface {v5}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    .line 164
    .local v0, connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    const/4 v2, 0x0

    .line 165
    .local v2, vpnConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    if-eqz p2, :cond_26

    .line 166
    invoke-interface {v0, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    .line 168
    :cond_26
    invoke-direct {p0, p1, v2}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->convertToCiscoVpnConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2d} :catch_32

    move-result v5

    if-eqz v5, :cond_14

    move v3, v4

    .line 171
    goto :goto_14

    .line 173
    .end local v0           #connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .end local v2           #vpnConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :catch_32
    move-exception v1

    .line 174
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "EnterpriseVpnAnyconnect"

    const-string v5, ""

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 176
    goto :goto_14
.end method

.method public getAllConnections()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnterpriseVpnConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->loadService(Z)V

    .line 201
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v5, ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/EnterpriseVpnConnection;>;"
    :try_start_9
    iget-object v7, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v7}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v7

    invoke-interface {v7}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    .line 204
    .local v0, connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetAllNames()Ljava/util/List;

    move-result-object v4

    .line 205
    .local v4, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 206
    .local v3, name:Ljava/lang/String;
    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v6

    .line 207
    .local v6, vpnConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    if-eqz v6, :cond_1b

    .line 208
    invoke-direct {p0, v6}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->convertToEdmVpnConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Landroid/app/enterprise/EnterpriseVpnConnection;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_34} :catch_35

    goto :goto_1b

    .line 211
    .end local v0           #connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #vpnConn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :catch_35
    move-exception v1

    .line 212
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "EnterpriseVpnAnyconnect"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3d
    return-object v5
.end method

.method public declared-synchronized getCertificates()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    monitor-enter p0

    const/4 v5, 0x1

    :try_start_2
    invoke-direct {p0, v5}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->loadService(Z)V

    .line 273
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_46

    .line 276
    .local v4, ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :try_start_a
    iget-object v5, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v5

    invoke-interface {v5}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetClientCertificates()Z
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_46
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_49

    move-result v0

    .line 281
    .local v0, aux:Z
    if-eqz v0, :cond_51

    .line 283
    :try_start_16
    iget-object v6, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertListLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_46

    .line 285
    :try_start_19
    iget-object v5, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertListLock:Ljava/lang/Object;

    const-wide/16 v7, 0x2710

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_5c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_20} :catch_53

    .line 289
    :goto_20
    :try_start_20
    monitor-exit v6
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_5c

    .line 291
    :try_start_21
    iget-object v5, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    .line 292
    .local v1, cert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetX509()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_27

    .line 293
    new-instance v5, Landroid/app/enterprise/CertificateInfo;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;->GetX509()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_21 .. :try_end_45} :catchall_46

    goto :goto_27

    .line 272
    .end local v0           #aux:Z
    .end local v1           #cert:Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :catchall_46
    move-exception v5

    monitor-exit p0

    throw v5

    .line 277
    .restart local v4       #ret:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    :catch_49
    move-exception v2

    .line 278
    .local v2, e:Landroid/os/RemoteException;
    :try_start_4a
    const-string v5, "EnterpriseVpnAnyconnect"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_46

    .line 297
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_51
    monitor-exit p0

    return-object v4

    .line 286
    .restart local v0       #aux:Z
    :catch_53
    move-exception v2

    .line 287
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_54
    const-string v5, "EnterpriseVpnAnyconnect"

    const-string v7, ""

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 289
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_5c
    move-exception v5

    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v5
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_46
.end method

.method public getConnection(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseVpnConnection;
    .registers 6
    .parameter "connName"

    .prologue
    .line 218
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->loadService(Z)V

    .line 220
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    .line 221
    .local v0, connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->convertToEdmVpnConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Landroid/app/enterprise/EnterpriseVpnConnection;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_17

    move-result-object v2

    .line 224
    .end local v0           #connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    :goto_16
    return-object v2

    .line 222
    :catch_17
    move-exception v1

    .line 223
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "EnterpriseVpnAnyconnect"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public declared-synchronized installCertificate([BLjava/lang/String;)Z
    .registers 10
    .parameter "pkcs12Blob"
    .parameter "password"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 232
    monitor-enter p0

    const/4 v5, 0x1

    :try_start_4
    invoke-direct {p0, v5}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->loadService(Z)V

    .line 233
    iget-object v5, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v2

    .line 236
    .local v2, vpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_54

    move-result v5

    if-nez v5, :cond_2c

    .line 239
    :try_start_13
    invoke-interface {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->ImportPKCS12WithPassword([BLjava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_54
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_20

    move-result-object v1

    .line 244
    .local v1, res:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :goto_17
    if-eqz v1, :cond_2a

    :try_start_19
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_54

    if-ne v1, v5, :cond_2a

    :goto_1d
    move v4, v3

    .line 267
    .end local v1           #res:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :cond_1e
    :goto_1e
    monitor-exit p0

    return v4

    .line 240
    :catch_20
    move-exception v0

    .line 241
    .local v0, e:Landroid/os/RemoteException;
    :try_start_21
    const-string v5, "EnterpriseVpnAnyconnect"

    const-string v6, "AnyConnect died?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, 0x0

    .restart local v1       #res:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    goto :goto_17

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2a
    move v3, v4

    .line 244
    goto :goto_1d

    .line 247
    .end local v1           #res:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :cond_2c
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertSuccess:Z
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_54

    .line 250
    :try_start_2f
    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->RequestImportPKCS12([B)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_54
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_4b

    move-result-object v1

    .line 255
    .restart local v1       #res:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    if-eqz v1, :cond_3d

    :try_start_35
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 259
    :cond_3d
    iget-object v4, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertInstallLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_54

    .line 261
    :try_start_40
    iget-object v3, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertInstallLock:Ljava/lang/Object;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_60
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_47} :catch_57

    .line 265
    :goto_47
    :try_start_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_60

    .line 267
    :try_start_48
    iget-boolean v4, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertSuccess:Z

    goto :goto_1e

    .line 251
    .end local v1           #res:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :catch_4b
    move-exception v0

    .line 252
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v3, "EnterpriseVpnAnyconnect"

    const-string v5, ""

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_54

    goto :goto_1e

    .line 232
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #vpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    :catchall_54
    move-exception v3

    monitor-exit p0

    throw v3

    .line 262
    .restart local v1       #res:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .restart local v2       #vpnService:Lcom/cisco/anyconnect/vpn/android/service/IVpnService;
    :catch_57
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_58
    const-string v3, "EnterpriseVpnAnyconnect"

    const-string v5, ""

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 265
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_60
    move-exception v3

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_60

    :try_start_62
    throw v3
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_54
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 370
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 371
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mBinder:Landroid/app/enterprise/IEnterpriseVpnInterface$Stub;

    .line 373
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 111
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertInstallLock:Ljava/lang/Object;

    .line 112
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mCertListLock:Ljava/lang/Object;

    .line 113
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mLoadServiceSem:Ljava/util/concurrent/Semaphore;

    .line 117
    new-instance v0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$3;

    invoke-direct {v0, p0}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect$3;-><init>(Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;)V

    .line 123
    .local v0, taskLoadService:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 124
    .local v1, threadToLoadService:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    if-eqz v0, :cond_c

    .line 130
    iget-object v0, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->Deactivate()V

    .line 132
    :cond_c
    return-void
.end method

.method public removeConnection(Ljava/lang/String;)Z
    .registers 8
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 180
    invoke-direct {p0, v3}, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->loadService(Z)V

    .line 182
    :try_start_5
    iget-object v5, p0, Lcom/android/server/vpn/enterprise/EnterpriseVpnAnyconnect;->mServiceConnMgr:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->GetService()Lcom/cisco/anyconnect/vpn/android/service/IVpnService;

    move-result-object v5

    invoke-interface {v5}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService;->GetConnectionList()Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;

    move-result-object v0

    .line 183
    .local v0, connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    .line 184
    .local v2, vpnconn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    if-eqz v2, :cond_1b

    .line 185
    invoke-interface {v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;->Delete(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_18} :catch_1e

    move-result v5

    if-eqz v5, :cond_1c

    .line 195
    .end local v0           #connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .end local v2           #vpnconn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :cond_1b
    :goto_1b
    return v3

    .restart local v0       #connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .restart local v2       #vpnconn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :cond_1c
    move v3, v4

    .line 188
    goto :goto_1b

    .line 193
    .end local v0           #connList:Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;
    .end local v2           #vpnconn:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    :catch_1e
    move-exception v1

    .line 194
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "EnterpriseVpnAnyconnect"

    const-string v5, ""

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 195
    goto :goto_1b
.end method

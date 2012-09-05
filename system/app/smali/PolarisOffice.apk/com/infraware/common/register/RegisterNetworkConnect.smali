.class public Lcom/infraware/common/register/RegisterNetworkConnect;
.super Ljava/lang/Object;
.source "RegisterNetworkConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;,
        Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;
    }
.end annotation


# instance fields
.field private mBrand:Ljava/lang/String;

.field private mConnect:Z

.field private mDevice:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mIMEI:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mNs:Lcom/infraware/common/register/SyncNetworkingStep;

.field private mOSVer:Ljava/lang/String;

.field public mResult:I

.field private mTimezone:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mWorker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mWorker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;

    .line 23
    iput-boolean v1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mConnect:Z

    .line 25
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mNs:Lcom/infraware/common/register/SyncNetworkingStep;

    .line 27
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mUserName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mEmail:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mUrl:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mLocale:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mTimezone:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mIMEI:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mBrand:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mDevice:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mModel:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mOSVer:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    .line 43
    invoke-direct {p0}, Lcom/infraware/common/register/RegisterNetworkConnect;->initialize()V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/common/register/RegisterNetworkConnect;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mConnect:Z

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/common/register/RegisterNetworkConnect;)Lcom/infraware/common/register/SyncNetworkingStep;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mNs:Lcom/infraware/common/register/SyncNetworkingStep;

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mIMEI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/common/register/RegisterNetworkConnect;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mBrand:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mOSVer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method private initialize()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mWorker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;

    .line 49
    iput-boolean v1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mConnect:Z

    .line 51
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mUserName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mEmail:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mUrl:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mLocale:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mTimezone:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mIMEI:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mBrand:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mDevice:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mModel:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mOSVer:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    .line 63
    return-void
.end method


# virtual methods
.method public Stop()V
    .registers 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/infraware/common/register/RegisterNetworkConnect;->stopCurrentWorker()V

    .line 84
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mNs:Lcom/infraware/common/register/SyncNetworkingStep;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/common/register/SyncNetworkingStep;->yourTurn(Z)V

    .line 85
    return-void
.end method

.method public SyncConnectNetworkCheck(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 94
    new-instance v0, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;-><init>(Lcom/infraware/common/register/RegisterNetworkConnect;Ljava/lang/String;)V

    .line 95
    .local v0, worker:Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;
    invoke-virtual {v0}, Lcom/infraware/common/register/RegisterNetworkConnect$ConntectCheck;->run()V

    .line 96
    return-void
.end method

.method public connectNetwork(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 163
    new-instance v0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;-><init>(Lcom/infraware/common/register/RegisterNetworkConnect;Ljava/lang/String;)V

    .line 164
    .local v0, worker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;
    invoke-virtual {p0, v0}, Lcom/infraware/common/register/RegisterNetworkConnect;->setCurrentWorker(Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;)V

    .line 166
    invoke-virtual {v0}, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->start()V

    .line 167
    return-void
.end method

.method public getConnectNetwork()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mConnect:Z

    return v0
.end method

.method public getResult()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    return v0
.end method

.method public declared-synchronized isCurrentWorker()Z
    .registers 2

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mWorker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 151
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 150
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCurrentWorker(Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;)Z
    .registers 3
    .parameter "worker"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mWorker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mBrand:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setCurrentWorker(Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;)V
    .registers 3
    .parameter "worker"

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mWorker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mWorker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;

    invoke-virtual {v0}, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->interrupt()V

    .line 145
    :cond_a
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mWorker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 146
    monitor-exit p0

    return-void

    .line 144
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDevice(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mDevice:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mEmail:Ljava/lang/String;

    return-void
.end method

.method public setIMEI(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mIMEI:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mModel:Ljava/lang/String;

    return-void
.end method

.method public setOSVer(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mOSVer:Ljava/lang/String;

    return-void
.end method

.method public setSyncher(Lcom/infraware/common/register/SyncNetworkingStep;)V
    .registers 2
    .parameter "ns"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mNs:Lcom/infraware/common/register/SyncNetworkingStep;

    .line 90
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mTimezone:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mUserName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized stopCurrentWorker()V
    .registers 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mWorker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;

    if-eqz v0, :cond_d

    .line 137
    iget-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mWorker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;

    invoke-virtual {v0}, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->interrupt()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/register/RegisterNetworkConnect;->mWorker:Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 140
    :cond_d
    monitor-exit p0

    return-void

    .line 135
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

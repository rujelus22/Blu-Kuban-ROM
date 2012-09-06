.class public abstract Lcom/x/google/common/io/BaseConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/io/ConnectionFactory;


# instance fields
.field private hasPreviousNetworkSuccessBeenRead:Z

.field private final netAvailablePrefName:Ljava/lang/String;

.field private networkWorked:Z

.field private networkWorkedThisSession:Z

.field protected final store:Lcom/x/google/common/io/PersistentStore;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    iput-boolean v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->networkWorked:Z

    iput-boolean v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    iput-object p1, p0, Lcom/x/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->store:Lcom/x/google/common/io/PersistentStore;

    return-void
.end method

.method private setNetworkWorked(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    iput-boolean p1, p0, Lcom/x/google/common/io/BaseConnectionFactory;->networkWorked:Z

    return-void
.end method


# virtual methods
.method protected checkPreviousNetworkSuccess()V
    .registers 3

    iget-object v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->store:Lcom/x/google/common/io/PersistentStore;

    iget-object v1, p0, Lcom/x/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/x/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, v0}, Lcom/x/google/common/io/BaseConnectionFactory;->setNetworkWorked(Z)V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected getNetworkPreferenceValue()B
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkWorked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->hasPreviousNetworkSuccessBeenRead:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/x/google/common/io/BaseConnectionFactory;->checkPreviousNetworkSuccess()V

    :cond_7
    iget-boolean v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->networkWorked:Z

    return v0
.end method

.method public getNetworkWorkedThisSession()Z
    .registers 2

    iget-boolean v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    return v0
.end method

.method public notifyFailure()V
    .registers 1

    return-void
.end method

.method public declared-synchronized registerNetworkSuccess(Z)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, Lcom/x/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    invoke-virtual {p0}, Lcom/x/google/common/io/BaseConnectionFactory;->getNetworkWorked()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz p1, :cond_23

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->networkWorked:Z

    iget-object v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->store:Lcom/x/google/common/io/PersistentStore;

    iget-object v2, p0, Lcom/x/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/x/google/common/io/BaseConnectionFactory;->getNetworkPreferenceValue()B

    move-result v5

    aput-byte v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_25

    move v0, v1

    :cond_23
    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetNetworkSettings()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->store:Lcom/x/google/common/io/PersistentStore;

    iget-object v1, p0, Lcom/x/google/common/io/BaseConnectionFactory;->netAvailablePrefName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    iget-object v0, p0, Lcom/x/google/common/io/BaseConnectionFactory;->store:Lcom/x/google/common/io/PersistentStore;

    invoke-interface {v0}, Lcom/x/google/common/io/PersistentStore;->savePreferences()V

    invoke-direct {p0, v3}, Lcom/x/google/common/io/BaseConnectionFactory;->setNetworkWorked(Z)V

    iput-boolean v3, p0, Lcom/x/google/common/io/BaseConnectionFactory;->networkWorkedThisSession:Z

    return-void
.end method

.method public setLogAdapter(Lcom/x/google/common/io/LogAdapter;)V
    .registers 2

    return-void
.end method

.method public setSettingObservable(Lcom/x/google/common/util/Observable;)V
    .registers 2

    return-void
.end method

.method public usingMDS()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

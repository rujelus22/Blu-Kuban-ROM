.class public Lcom/sprint/internal/OMADM;
.super Ljava/lang/Object;
.source "OMADM.java"


# instance fields
.field OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

.field private myctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 48
    const-string v0, "OMADM"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/sprint/internal/OMADM;->myctx:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public startCIDC()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/OMADMException;
        }
    .end annotation

    .prologue
    .line 54
    const-string v1, "OMADM"

    const-string v2, "startCIDC"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 58
    :try_start_13
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 60
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->startCIDC()V

    .line 75
    return-void

    .line 64
    :cond_1d
    new-instance v1, Lcom/sprint/internal/OMADMException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_25} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_25} :catch_2e

    .line 67
    :catch_25
    move-exception v0

    .line 69
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Lcom/sprint/internal/OMADMException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2e
    move-exception v0

    .line 73
    .local v0, ex:Ljava/lang/SecurityException;
    new-instance v1, Lcom/sprint/internal/OMADMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You don\'t have a right permission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startCIFUMO()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/OMADMException;
        }
    .end annotation

    .prologue
    .line 79
    const-string v1, "startCIFUMO"

    const-string v2, "startCIFUMO"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 83
    :try_start_13
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 85
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->startCIFUMO()V

    .line 100
    return-void

    .line 89
    :cond_1d
    new-instance v1, Lcom/sprint/internal/OMADMException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_25} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_25} :catch_2e

    .line 92
    :catch_25
    move-exception v0

    .line 94
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Lcom/sprint/internal/OMADMException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2e
    move-exception v0

    .line 98
    .local v0, ex:Ljava/lang/SecurityException;
    new-instance v1, Lcom/sprint/internal/OMADMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You don\'t have a right permission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startCIPRL()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/OMADMException;
        }
    .end annotation

    .prologue
    .line 104
    const-string v1, "OMADM"

    const-string v2, "startCIPRL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 108
    :try_start_13
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 110
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->startCIPRL()V

    .line 125
    return-void

    .line 114
    :cond_1d
    new-instance v1, Lcom/sprint/internal/OMADMException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_25} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_25} :catch_2e

    .line 117
    :catch_25
    move-exception v0

    .line 119
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Lcom/sprint/internal/OMADMException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2e
    move-exception v0

    .line 123
    .local v0, ex:Ljava/lang/SecurityException;
    new-instance v1, Lcom/sprint/internal/OMADMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You don\'t have a right permission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startHFA()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/OMADMException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v1, "OMADM"

    const-string v2, "startHFA"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 133
    :try_start_13
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 135
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->OMADM:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->startHFA()V

    .line 150
    return-void

    .line 139
    :cond_1d
    new-instance v1, Lcom/sprint/internal/OMADMException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_25} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_25} :catch_2e

    .line 142
    :catch_25
    move-exception v0

    .line 144
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v1, Lcom/sprint/internal/OMADMException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_2e
    move-exception v0

    .line 148
    .local v0, ex:Ljava/lang/SecurityException;
    new-instance v1, Lcom/sprint/internal/OMADMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You don\'t have a right permission : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprint/internal/OMADMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

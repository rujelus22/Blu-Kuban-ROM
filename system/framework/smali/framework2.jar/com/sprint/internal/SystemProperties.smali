.class public Lcom/sprint/internal/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

.field private conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

.field private myctx:Landroid/content/Context;

.field ret:Ljava/lang/String;

.field private serviceConnecting:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "SystemProperties"

    sput-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "mContext"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->serviceConnecting:Z

    .line 45
    iput-object p1, p0, Lcom/sprint/internal/SystemProperties;->myctx:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    invoke-direct {v0, p0}, Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;-><init>(Lcom/sprint/internal/SystemProperties;)V

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    .line 47
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    invoke-direct {p0, v0}, Lcom/sprint/internal/SystemProperties;->connectService(Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;)V

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/sprint/internal/SystemProperties;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/sprint/internal/SystemProperties;->serviceConnecting:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private connectService(Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;)V
    .registers 2
    .parameter "SysPropConn"

    .prologue
    .line 59
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 186
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 65
    sparse-switch p1, :sswitch_data_5e

    .line 118
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

    const-string v2, "You request an unreadable value."

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :sswitch_b
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 96
    :try_start_17
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_26

    .line 98
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1, p1}, Lcom/samsungframeworks/internal/ISprintExtension;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/internal/SystemProperties;->ret:Ljava/lang/String;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_23} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_23} :catch_3c

    .line 121
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->ret:Ljava/lang/String;

    return-object v1

    .line 102
    :cond_26
    :try_start_26
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_2e} :catch_3c

    .line 105
    :catch_2e
    move-exception v0

    .line 107
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    invoke-direct {p0, v1}, Lcom/sprint/internal/SystemProperties;->connectService(Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;)V

    .line 108
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_3c
    move-exception v0

    .line 112
    .local v0, ex:Ljava/lang/SecurityException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 113
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

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

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    nop

    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_b
        0x3 -> :sswitch_b
        0xe -> :sswitch_b
        0x1e -> :sswitch_b
        0x23 -> :sswitch_b
        0x32 -> :sswitch_b
        0x33 -> :sswitch_b
        0x56 -> :sswitch_b
        0x57 -> :sswitch_b
        0x5a -> :sswitch_b
        0x5b -> :sswitch_b
        0x5d -> :sswitch_b
        0x5e -> :sswitch_b
        0xa1 -> :sswitch_b
        0xa3 -> :sswitch_b
        0x12c -> :sswitch_b
        0x192 -> :sswitch_b
        0x195 -> :sswitch_b
        0x196 -> :sswitch_b
        0x19c -> :sswitch_b
        0x19d -> :sswitch_b
        0x19e -> :sswitch_b
        0x19f -> :sswitch_b
        0x1a4 -> :sswitch_b
        0x1f4 -> :sswitch_b
    .end sparse-switch
.end method

.method public setString(ILjava/lang/String;)V
    .registers 7
    .parameter "id"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 126
    sparse-switch p1, :sswitch_data_58

    .line 177
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

    const-string v2, "You request an unwritable value."

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :sswitch_b
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 156
    :try_start_17
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_21

    .line 158
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1, p1, p2}, Lcom/samsungframeworks/internal/ISprintExtension;->setString(ILjava/lang/String;)V

    .line 181
    return-void

    .line 162
    :cond_21
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_29} :catch_29
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_29} :catch_37

    .line 165
    :catch_29
    move-exception v0

    .line 167
    .local v0, ex:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    invoke-direct {p0, v1}, Lcom/sprint/internal/SystemProperties;->connectService(Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;)V

    .line 168
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

    const-string v2, "You cannot get the Ibinder"

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_37
    move-exception v0

    .line 172
    .local v0, ex:Ljava/lang/SecurityException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/internal/SystemProperties;->SysProp:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 173
    new-instance v1, Lcom/sprint/internal/SystemPropertiesException;

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

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_b
        0x23 -> :sswitch_b
        0x2b -> :sswitch_b
        0x32 -> :sswitch_b
        0x33 -> :sswitch_b
        0x56 -> :sswitch_b
        0x57 -> :sswitch_b
        0x5a -> :sswitch_b
        0x5b -> :sswitch_b
        0x5c -> :sswitch_b
        0x5d -> :sswitch_b
        0x5e -> :sswitch_b
        0xa1 -> :sswitch_b
        0xa3 -> :sswitch_b
        0x12c -> :sswitch_b
        0x190 -> :sswitch_b
        0x192 -> :sswitch_b
        0x195 -> :sswitch_b
        0x196 -> :sswitch_b
        0x19c -> :sswitch_b
        0x19d -> :sswitch_b
        0x19e -> :sswitch_b
        0x19f -> :sswitch_b
        0x1f4 -> :sswitch_b
    .end sparse-switch
.end method

.method public unbindSysPropService()V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->myctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/sprint/internal/SystemProperties;->conn:Lcom/sprint/internal/SystemProperties$SysPropServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 191
    return-void
.end method

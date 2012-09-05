.class public Lcom/sprint/internal/DeviceManagement;
.super Ljava/lang/Object;
.source "DeviceManagement.java"


# static fields
.field public static final DM_GPS_DISABLED:I = 0x1

.field public static final DM_GPS_ENABLED:I = 0x0

.field public static final DM_GPS_FORCED_ON:I = 0x2

.field private static LOG:Ljava/lang/String;

.field static mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;


# instance fields
.field private myctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 37
    const-string v0, "DeviceManagement"

    sput-object v0, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lcom/sprint/internal/DeviceManagement;->myctx:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public GetGPSState()I
    .registers 6

    .prologue
    .line 169
    sget-object v2, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v3, "GetGPSState()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x0

    .line 173
    .local v1, ret:I
    const-string v2, "isprintextension"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v2

    sput-object v2, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 176
    :try_start_14
    sget-object v2, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v2, :cond_1f

    .line 178
    sget-object v2, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v2}, Lcom/samsungframeworks/internal/ISprintExtension;->GetGPSState()I

    move-result v1

    .line 197
    :goto_1e
    return v1

    .line 182
    :cond_1f
    sget-object v2, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_26} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_26} :catch_41

    goto :goto_1e

    .line 186
    :catch_27
    move-exception v0

    .line 188
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v2, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 191
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_41
    move-exception v0

    .line 193
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v2, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public IsBluetoothEnabled()V
    .registers 5

    .prologue
    .line 53
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "IsBluetoothEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 58
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 60
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->IsBluetoothEnabled()V

    .line 78
    :goto_1c
    return-void

    .line 64
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_24} :catch_3f

    goto :goto_1c

    .line 68
    :catch_25
    move-exception v0

    .line 70
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 73
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_3f
    move-exception v0

    .line 75
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public IsCameraEnabled()V
    .registers 5

    .prologue
    .line 82
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "IsCameraEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 87
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 89
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->IsCameraEnabled()V

    .line 107
    :goto_1c
    return-void

    .line 93
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_24} :catch_3f

    goto :goto_1c

    .line 97
    :catch_25
    move-exception v0

    .line 99
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 102
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_3f
    move-exception v0

    .line 104
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public IsEncryptDeviceEnabled()V
    .registers 5

    .prologue
    .line 111
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "IsEncryptDeviceEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 116
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 118
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->IsEncryptDeviceEnabled()V

    .line 136
    :goto_1c
    return-void

    .line 122
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_24} :catch_3f

    goto :goto_1c

    .line 126
    :catch_25
    move-exception v0

    .line 128
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 131
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_3f
    move-exception v0

    .line 133
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public IsEncryptSDCardEnable()V
    .registers 5

    .prologue
    .line 140
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "IsEncryptSDCardEnable()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 145
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 147
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->IsEncryptSDCardEnable()V

    .line 165
    :goto_1c
    return-void

    .line 151
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_24} :catch_3f

    goto :goto_1c

    .line 155
    :catch_25
    move-exception v0

    .line 157
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 160
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_3f
    move-exception v0

    .line 162
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public IsHotspotEnabled()V
    .registers 5

    .prologue
    .line 202
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "IsHotspotEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 207
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 209
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->IsHotspotEnabled()V

    .line 227
    :goto_1c
    return-void

    .line 213
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_24} :catch_3f

    goto :goto_1c

    .line 217
    :catch_25
    move-exception v0

    .line 219
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 222
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_3f
    move-exception v0

    .line 224
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public IsUSBDriveEnabled()V
    .registers 5

    .prologue
    .line 231
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "IsUSBDriveEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 236
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 238
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->IsUSBDriveEnabled()V

    .line 256
    :goto_1c
    return-void

    .line 242
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_24} :catch_3f

    goto :goto_1c

    .line 246
    :catch_25
    move-exception v0

    .line 248
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 251
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_3f
    move-exception v0

    .line 253
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public IsUSBPortEnabled()V
    .registers 5

    .prologue
    .line 260
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "IsUSBPortEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 265
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 267
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->IsUSBPortEnabled()V

    .line 285
    :goto_1c
    return-void

    .line 271
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_24} :catch_3f

    goto :goto_1c

    .line 275
    :catch_25
    move-exception v0

    .line 277
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 280
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_3f
    move-exception v0

    .line 282
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public IsWiFiEnabled()V
    .registers 5

    .prologue
    .line 289
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "IsWiFiEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 294
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 296
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->IsWiFiEnabled()V

    .line 314
    :goto_1c
    return-void

    .line 300
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_24} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_24} :catch_3f

    goto :goto_1c

    .line 304
    :catch_25
    move-exception v0

    .line 306
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 309
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_3f
    move-exception v0

    .line 311
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public Reboot()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 318
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "Reboot()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 323
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 325
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->Reboot()V

    .line 343
    return-void

    .line 329
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_2c} :catch_4d

    .line 333
    :catch_2c
    move-exception v0

    .line 335
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_4d
    move-exception v0

    .line 340
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You don\'t have a right DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SetDisableBluetooth()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 347
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "SetDisableBluetooth()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 352
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 354
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->SetDisableBluetooth()V

    .line 372
    return-void

    .line 358
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_2c} :catch_4d

    .line 362
    :catch_2c
    move-exception v0

    .line 364
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_4d
    move-exception v0

    .line 369
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You don\'t have a right DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SetDisableCamera()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 376
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "SetDisableCamera()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 381
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 383
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->SetDisableCamera()V

    .line 401
    return-void

    .line 387
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_2c} :catch_4d

    .line 391
    :catch_2c
    move-exception v0

    .line 393
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_4d
    move-exception v0

    .line 398
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You don\'t have a right DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SetDisableHotspot()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 405
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "SetDisableHotspot()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 410
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 412
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->SetDisableHotspot()V

    .line 430
    return-void

    .line 416
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_2c} :catch_4d

    .line 420
    :catch_2c
    move-exception v0

    .line 422
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_4d
    move-exception v0

    .line 427
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You don\'t have a right DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SetDisableUSBDrive()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 434
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "SetDisableUSBDrive()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 439
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 441
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->SetDisableUSBDrive()V

    .line 459
    return-void

    .line 445
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_2c} :catch_4d

    .line 449
    :catch_2c
    move-exception v0

    .line 451
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_4d
    move-exception v0

    .line 456
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You don\'t have a right DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SetDisableUSBPort()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 463
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "SetDisableUSBPort()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 468
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 470
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->SetDisableUSBPort()V

    .line 488
    return-void

    .line 474
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_2c} :catch_4d

    .line 478
    :catch_2c
    move-exception v0

    .line 480
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 483
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_4d
    move-exception v0

    .line 485
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You don\'t have a right DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SetDisableWifi()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 491
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "SetDisableWifi()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 496
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 498
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->SetDisableWifi()V

    .line 516
    return-void

    .line 502
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_2c} :catch_4d

    .line 506
    :catch_2c
    move-exception v0

    .line 508
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_4d
    move-exception v0

    .line 513
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You don\'t have a right DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SetEncryptDevice()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 519
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "SetEncryptDevice()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 524
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 526
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->SetEncryptDevice()V

    .line 544
    return-void

    .line 530
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_2c} :catch_4d

    .line 534
    :catch_2c
    move-exception v0

    .line 536
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_4d
    move-exception v0

    .line 541
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You don\'t have a right DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SetEncryptSDCard()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 547
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "SetEncryptSDCard()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 552
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 554
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->SetEncryptSDCard()V

    .line 572
    return-void

    .line 558
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_2c} :catch_4d

    .line 562
    :catch_2c
    move-exception v0

    .line 564
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_4d
    move-exception v0

    .line 569
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You don\'t have a right DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public SetGPS(I)V
    .registers 6
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/DeviceManagementException;
        }
    .end annotation

    .prologue
    .line 575
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "SetGPS()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    sput-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 580
    :try_start_13
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1d

    .line 582
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->mDeviceManagement:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1, p1}, Lcom/samsungframeworks/internal/ISprintExtension;->SetGPS(I)V

    .line 600
    return-void

    .line 586
    :cond_1d
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2c
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_2c} :catch_4d

    .line 590
    :catch_2c
    move-exception v0

    .line 592
    .local v0, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You cannot get the Service for DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_4d
    move-exception v0

    .line 597
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Lcom/sprint/internal/DeviceManagement;->LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for DeviceManagement"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v1, Lcom/sprint/internal/DeviceManagementException;

    const-string v2, "You don\'t have a right DeviceManagement"

    invoke-direct {v1, v2}, Lcom/sprint/internal/DeviceManagementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

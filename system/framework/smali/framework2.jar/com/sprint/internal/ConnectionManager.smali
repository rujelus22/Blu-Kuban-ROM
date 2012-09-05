.class public Lcom/sprint/internal/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field public static final CDMA_OMADM_SLOT0:I = 0x65

.field public static final CDMA_SLOT0:I = 0x64

.field public static final CDMA_SLOT1:I = 0x1

.field public static final DATA_NOT_ALLOWED:I = 0x3e9

.field public static final DATA_UNAVAILABLE:I = 0x3e8

.field public static final DEFAULT:I = 0x0

.field public static final WIFI:I = 0x2

.field public static final WIMAX:I = 0x3


# instance fields
.field mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

.field private myctxt:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctxt"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 39
    const-string v0, "ConnectionManager"

    const-string v1, "ConnectionManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object p1, p0, Lcom/sprint/internal/ConnectionManager;->myctxt:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public getDataProfile()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/ConnectionManagerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 71
    const/4 v1, 0x0

    .line 72
    .local v1, ret:I
    const-string v2, "ConnectionManager"

    const-string v3, "getDataProfile()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "gsm.default.esn"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 76
    const-string v2, "ConnectionManager"

    const-string v3, "getDataProfile return DATA_NOT_ALLOWED"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/16 v2, 0x3e9

    .line 105
    :goto_22
    return v2

    .line 80
    :cond_23
    const-string v2, "isprintextension"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 83
    :try_start_2f
    iget-object v2, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v2, :cond_3b

    .line 85
    iget-object v2, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v2}, Lcom/samsungframeworks/internal/ISprintExtension;->getDataProfile()I

    move-result v1

    move v2, v1

    .line 105
    goto :goto_22

    .line 89
    :cond_3b
    const-string v2, "ConnectionManager"

    const-string v3, "You cannot get the Service for data connection"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v2, Lcom/sprint/internal/ConnectionManagerException;

    const-string v3, "You cannot get the Service for data connection"

    invoke-direct {v2, v3}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_4a} :catch_4a
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_4a} :catch_6d

    .line 93
    :catch_4a
    move-exception v0

    .line 95
    .local v0, ex:Landroid/os/RemoteException;
    iput-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 96
    const-string v2, "ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "You cannot get the Service for data connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v2, Lcom/sprint/internal/ConnectionManagerException;

    const-string v3, "You cannot get the Service for data connection"

    invoke-direct {v2, v3}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_6d
    move-exception v0

    .line 101
    .local v0, ex:Ljava/lang/SecurityException;
    iput-object v4, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 102
    new-instance v2, Lcom/sprint/internal/ConnectionManagerException;

    const-string v3, "You don\'t have a right permission"

    invoke-direct {v2, v3}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string v1, "ConnectionManager"

    const-string v2, "release()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 156
    :try_start_14
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1e

    .line 158
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->release()V

    .line 177
    :goto_1d
    return-void

    .line 162
    :cond_1e
    const-string v1, "ConnectionManager"

    const-string v2, "You cannot get the Service for data connection"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_26
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_25} :catch_42

    goto :goto_1d

    .line 166
    :catch_26
    move-exception v0

    .line 168
    .local v0, ex:Landroid/os/RemoteException;
    iput-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 169
    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for data connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 172
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_42
    move-exception v0

    .line 174
    .local v0, ex:Ljava/lang/SecurityException;
    iput-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    goto :goto_1d
.end method

.method public releaseDSAProxy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 210
    const-string v1, "ConnectionManager"

    const-string v2, "releaseDSAProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 214
    :try_start_14
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1e

    .line 216
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1}, Lcom/samsungframeworks/internal/ISprintExtension;->releaseDSAProxy()V

    .line 235
    :goto_1d
    return-void

    .line 220
    :cond_1e
    const-string v1, "ConnectionManager"

    const-string v2, "You cannot get the Service for data connection"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_26
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_25} :catch_42

    goto :goto_1d

    .line 224
    :catch_26
    move-exception v0

    .line 226
    .local v0, ex:Landroid/os/RemoteException;
    iput-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 227
    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for data connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 230
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_42
    move-exception v0

    .line 232
    .local v0, ex:Ljava/lang/SecurityException;
    iput-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    goto :goto_1d
.end method

.method public requestDataProfile(I)V
    .registers 8
    .parameter "dataconnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/ConnectionManagerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 110
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, arg1:Ljava/lang/String;
    const-string v2, "ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestDataProfile("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v2, "gsm.default.esn"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 115
    const-string v2, "ConnectionManager"

    const-string v3, "requestDataProfile return"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_3f
    return-void

    .line 120
    :cond_40
    const-string v2, "isprintextension"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 123
    :try_start_4c
    iget-object v2, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v2, :cond_84

    .line 125
    iget-object v2, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v2, p1}, Lcom/samsungframeworks/internal/ISprintExtension;->requestDataProfile(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3f

    .line 127
    new-instance v2, Lcom/sprint/internal/ConnectionManagerException;

    const-string v3, "CDMA Slot1 MIP is not programed"

    invoke-direct {v2, v3}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_61} :catch_61
    .catch Ljava/lang/SecurityException; {:try_start_4c .. :try_end_61} :catch_93

    .line 136
    :catch_61
    move-exception v1

    .line 138
    .local v1, ex:Landroid/os/RemoteException;
    iput-object v5, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 139
    const-string v2, "ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "You cannot get the Service for data connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v2, Lcom/sprint/internal/ConnectionManagerException;

    const-string v3, "You cannot get the Service for data connection"

    invoke-direct {v2, v3}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_84
    :try_start_84
    const-string v2, "ConnectionManager"

    const-string v3, "You cannot get the Service for data connection"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v2, Lcom/sprint/internal/ConnectionManagerException;

    const-string v3, "You cannot get the Service for data connection"

    invoke-direct {v2, v3}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_93} :catch_61
    .catch Ljava/lang/SecurityException; {:try_start_84 .. :try_end_93} :catch_93

    .line 142
    :catch_93
    move-exception v1

    .line 144
    .local v1, ex:Ljava/lang/SecurityException;
    iput-object v5, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 145
    new-instance v2, Lcom/sprint/internal/ConnectionManagerException;

    const-string v3, "You don\'t have a right permission"

    invoke-direct {v2, v3}, Lcom/sprint/internal/ConnectionManagerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setDSAProxy(Ljava/lang/String;I)V
    .registers 7
    .parameter "proxy"
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    .line 181
    const-string v1, "ConnectionManager"

    const-string v2, "setDSAProxy"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v1, "isprintextension"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsungframeworks/internal/ISprintExtension$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/ISprintExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 185
    :try_start_14
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    if-eqz v1, :cond_1e

    .line 187
    iget-object v1, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    invoke-interface {v1, p1, p2}, Lcom/samsungframeworks/internal/ISprintExtension;->setDSAProxy(Ljava/lang/String;I)V

    .line 206
    :goto_1d
    return-void

    .line 191
    :cond_1e
    const-string v1, "ConnectionManager"

    const-string v2, "You cannot get the Service for data connection"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_26
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_25} :catch_42

    goto :goto_1d

    .line 195
    :catch_26
    move-exception v0

    .line 197
    .local v0, ex:Landroid/os/RemoteException;
    iput-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    .line 198
    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You cannot get the Service for data connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 201
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_42
    move-exception v0

    .line 203
    .local v0, ex:Ljava/lang/SecurityException;
    iput-object v3, p0, Lcom/sprint/internal/ConnectionManager;->mConManager:Lcom/samsungframeworks/internal/ISprintExtension;

    goto :goto_1d
.end method

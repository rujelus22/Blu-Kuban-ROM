.class public abstract Lcom/vlingo/client/core/restricted/RestrictedMethods;
.super Ljava/lang/Object;
.source "RestrictedMethods.java"


# static fields
.field private static ImplClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected static final RMS_FAILURE_COOKIE_NAME:Ljava/lang/String; = "Vlingo-RMethod-Failure"

.field protected static final RMS_FAILURE_DOMAIN:Ljava/lang/String; = "Vlingo-RMethod-Domain"

.field protected static volatile fatalErrorShown:Z

.field private static instance:Lcom/vlingo/client/core/restricted/RestrictedMethods;

.field protected static volatile logPermissionFailures:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/vlingo/client/core/restricted/RestrictedMethods;->fatalErrorShown:Z

    .line 36
    sput-boolean v0, Lcom/vlingo/client/core/restricted/RestrictedMethods;->logPermissionFailures:Z

    .line 43
    sput-object v1, Lcom/vlingo/client/core/restricted/RestrictedMethods;->instance:Lcom/vlingo/client/core/restricted/RestrictedMethods;

    .line 46
    sput-object v1, Lcom/vlingo/client/core/restricted/RestrictedMethods;->ImplClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRMSFailureCookie()V
    .registers 1

    .prologue
    .line 146
    const-string v0, "Vlingo-RMethod-Domain"

    invoke-static {v0}, Lcom/vlingo/client/core/recordstore/ResourceManager;->clearDomain(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static connectorOpen(Ljava/lang/String;)Ljavax/microedition/io/Connection;
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->getInstance()Lcom/vlingo/client/core/restricted/RestrictedMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->_connectorOpen(Ljava/lang/String;)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static connectorOpen(Ljava/lang/String;I)Ljavax/microedition/io/Connection;
    .registers 3
    .parameter "name"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->getInstance()Lcom/vlingo/client/core/restricted/RestrictedMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->_connectorOpen(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static connectorOpen(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;
    .registers 4
    .parameter "name"
    .parameter "mode"
    .parameter "timeouts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->getInstance()Lcom/vlingo/client/core/restricted/RestrictedMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->_connectorOpen(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static fatalErrorShown()Z
    .registers 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/vlingo/client/core/restricted/RestrictedMethods;->fatalErrorShown:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/core/restricted/RestrictedMethods;
    .registers 5

    .prologue
    .line 57
    const-class v2, Lcom/vlingo/client/core/restricted/RestrictedMethods;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/vlingo/client/core/restricted/RestrictedMethods;->instance:Lcom/vlingo/client/core/restricted/RestrictedMethods;

    if-nez v1, :cond_20

    .line 58
    sget-object v1, Lcom/vlingo/client/core/restricted/RestrictedMethods;->ImplClass:Ljava/lang/Class;

    if-nez v1, :cond_16

    .line 59
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "RestrictedMethods implementation class is not set"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 57
    .local v0, ex:Ljava/lang/InstantiationException;
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1

    .line 61
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :cond_16
    :try_start_16
    sget-object v1, Lcom/vlingo/client/core/restricted/RestrictedMethods;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/restricted/RestrictedMethods;

    sput-object v1, Lcom/vlingo/client/core/restricted/RestrictedMethods;->instance:Lcom/vlingo/client/core/restricted/RestrictedMethods;
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_20} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_20} :catch_41

    .line 70
    :cond_20
    :try_start_20
    sget-object v1, Lcom/vlingo/client/core/restricted/RestrictedMethods;->instance:Lcom/vlingo/client/core/restricted/RestrictedMethods;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_13

    monitor-exit v2

    return-object v1

    .line 62
    :catch_24
    move-exception v0

    .line 63
    .restart local v0       #ex:Ljava/lang/InstantiationException;
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RestrictedMethods InstantiationException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_41
    move-exception v0

    .line 66
    .local v0, ex:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RestrictedMethods IllegalAccessException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_13
.end method

.method public static getRMSFailureCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    const-string v0, "Vlingo-RMethod-Domain"

    const-string v1, "Vlingo-RMethod-Failure"

    invoke-static {v0, v1}, Lcom/vlingo/client/core/recordstore/ResourceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRMSFailureCookieName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 154
    const-string v0, "Vlingo-RMethod-Failure"

    return-object v0
.end method

.method public static getRMSFailureDomain()Ljava/lang/String;
    .registers 1

    .prologue
    .line 158
    const-string v0, "Vlingo-RMethod-Domain"

    return-object v0
.end method

.method public static logPermissionFailures()Z
    .registers 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/vlingo/client/core/restricted/RestrictedMethods;->logPermissionFailures:Z

    return v0
.end method

.method public static managerCreatePlayer(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/microedition/media/Player;
    .registers 3
    .parameter "stream"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->getInstance()Lcom/vlingo/client/core/restricted/RestrictedMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->_managerCreatePlayer(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/microedition/media/Player;

    move-result-object v0

    return-object v0
.end method

.method public static managerCreatePlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;
    .registers 2
    .parameter "locator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->getInstance()Lcom/vlingo/client/core/restricted/RestrictedMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->_managerCreatePlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;

    move-result-object v0

    return-object v0
.end method

.method public static phoneGetDevicePhoneNumber(Z)Ljava/lang/String;
    .registers 2
    .parameter "format"

    .prologue
    .line 94
    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->getInstance()Lcom/vlingo/client/core/restricted/RestrictedMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->_phoneGetDevicePhoneNumber(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pimGetInstance()Ljavax/microedition/pim/PIM;
    .registers 1

    .prologue
    .line 98
    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->getInstance()Lcom/vlingo/client/core/restricted/RestrictedMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->_pimGetInstance()Ljavax/microedition/pim/PIM;

    move-result-object v0

    return-object v0
.end method

.method public static pimOpenPIMList(Ljavax/microedition/pim/PIM;II)Ljavax/microedition/pim/PIMList;
    .registers 4
    .parameter "pim"
    .parameter "pimListType"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/pim/PIMException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->getInstance()Lcom/vlingo/client/core/restricted/RestrictedMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->_pimOpenPIMList(Ljavax/microedition/pim/PIM;II)Ljavax/microedition/pim/PIMList;

    move-result-object v0

    return-object v0
.end method

.method public static setFatalErrorShown(Z)V
    .registers 1
    .parameter "fatalShown"

    .prologue
    .line 134
    sput-boolean p0, Lcom/vlingo/client/core/restricted/RestrictedMethods;->fatalErrorShown:Z

    .line 135
    return-void
.end method

.method public static setLogPermissionFailures(Z)V
    .registers 1
    .parameter "logPermFailure"

    .prologue
    .line 142
    sput-boolean p0, Lcom/vlingo/client/core/restricted/RestrictedMethods;->logPermissionFailures:Z

    .line 143
    return-void
.end method

.method public static declared-synchronized setRestrictedMethodsImpl(Ljava/lang/Class;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/vlingo/client/core/restricted/RestrictedMethods;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 50
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "RestrictedMethods clazz null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 49
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 51
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/restricted/RestrictedMethods;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RestrictedMethods invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/restricted/RestrictedMethods;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 54
    monitor-exit v1

    return-void
.end method

.method public static volumeControlSetLevel(Ljavax/microedition/media/control/VolumeControl;I)V
    .registers 3
    .parameter "control"
    .parameter "level"

    .prologue
    .line 105
    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->getInstance()Lcom/vlingo/client/core/restricted/RestrictedMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->_volumeControlSetLevel(Ljavax/microedition/media/control/VolumeControl;I)V

    .line 106
    return-void
.end method


# virtual methods
.method public abstract _connectorOpen(Ljava/lang/String;)Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract _connectorOpen(Ljava/lang/String;I)Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract _connectorOpen(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract _managerCreatePlayer(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/microedition/media/Player;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/microedition/media/MediaException;
        }
    .end annotation
.end method

.method public abstract _managerCreatePlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/microedition/media/MediaException;
        }
    .end annotation
.end method

.method public abstract _phoneGetDevicePhoneNumber(Z)Ljava/lang/String;
.end method

.method public abstract _pimGetInstance()Ljavax/microedition/pim/PIM;
.end method

.method public abstract _pimOpenPIMList(Ljavax/microedition/pim/PIM;II)Ljavax/microedition/pim/PIMList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/pim/PIMException;
        }
    .end annotation
.end method

.method public abstract _volumeControlSetLevel(Ljavax/microedition/media/control/VolumeControl;I)V
.end method

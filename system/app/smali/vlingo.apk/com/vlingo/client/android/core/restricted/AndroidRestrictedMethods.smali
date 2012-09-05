.class public Lcom/vlingo/client/android/core/restricted/AndroidRestrictedMethods;
.super Lcom/vlingo/client/core/restricted/RestrictedMethods;
.source "AndroidRestrictedMethods.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vlingo/client/core/restricted/RestrictedMethods;-><init>()V

    return-void
.end method

.method private static permissionsFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 9
    .parameter "methodName"
    .parameter "exception"

    .prologue
    const/4 v6, 0x1

    .line 140
    if-eqz p1, :cond_3

    .line 145
    :cond_3
    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->logPermissionFailures()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 146
    const-string v0, "Permission Failure: "

    .line 149
    .local v0, message:Ljava/lang/String;
    new-instance v3, Lcom/vlingo/client/core/recordstore/Resource;

    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->getRMSFailureDomain()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->getRMSFailureCookieName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/vlingo/client/core/recordstore/Resource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-static {v3}, Lcom/vlingo/client/core/recordstore/ResourceManager;->saveResource(Lcom/vlingo/client/core/recordstore/Resource;)V

    .line 154
    .end local v0           #message:Ljava/lang/String;
    :cond_1b
    const-class v4, Lcom/vlingo/client/core/restricted/RestrictedMethods;

    monitor-enter v4

    .line 155
    :try_start_1e
    invoke-static {}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->fatalErrorShown()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 163
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 164
    monitor-exit v4

    .line 172
    :goto_29
    return-void

    .line 166
    :cond_2a
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/vlingo/client/core/restricted/RestrictedMethods;->setFatalErrorShown(Z)V

    .line 167
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_52

    .line 169
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 170
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0901ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, msg:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->showFatalDialog(Ljava/lang/String;)V

    goto :goto_29

    .line 167
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #res:Landroid/content/res/Resources;
    :catchall_52
    move-exception v3

    :try_start_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v3
.end method


# virtual methods
.method public _connectorOpen(Ljava/lang/String;)Ljavax/microedition/io/Connection;
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, exception:Ljava/lang/Exception;
    :try_start_1
    invoke-static {p1}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;)Ljavax/microedition/io/file/FileConnection;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    .line 44
    :goto_5
    return-object v2

    .line 40
    :catch_6
    move-exception v0

    .line 41
    .local v0, ex:Ljava/lang/SecurityException;
    move-object v1, v0

    .line 43
    const-string v2, "Connector.open"

    invoke-static {v2, v1}, Lcom/vlingo/client/android/core/restricted/AndroidRestrictedMethods;->permissionsFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 44
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public _connectorOpen(Ljava/lang/String;I)Ljavax/microedition/io/Connection;
    .registers 6
    .parameter "name"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, exception:Ljava/lang/Exception;
    :try_start_1
    invoke-static {p1, p2}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/file/FileConnection;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    .line 55
    :goto_5
    return-object v2

    .line 51
    :catch_6
    move-exception v0

    .line 52
    .local v0, ex:Ljava/lang/SecurityException;
    move-object v1, v0

    .line 54
    const-string v2, "Connector.open"

    invoke-static {v2, v1}, Lcom/vlingo/client/android/core/restricted/AndroidRestrictedMethods;->permissionsFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 55
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public _connectorOpen(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;
    .registers 7
    .parameter "name"
    .parameter "mode"
    .parameter "timeouts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, exception:Ljava/lang/Exception;
    :try_start_1
    invoke-static {p1, p2, p3}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    .line 66
    :goto_5
    return-object v2

    .line 62
    :catch_6
    move-exception v0

    .line 63
    .local v0, ex:Ljava/lang/SecurityException;
    move-object v1, v0

    .line 65
    const-string v2, "Connector.open"

    invoke-static {v2, v1}, Lcom/vlingo/client/android/core/restricted/AndroidRestrictedMethods;->permissionsFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public _managerCreatePlayer(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/microedition/media/Player;
    .registers 6
    .parameter "stream"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 83
    .local v1, exception:Ljava/lang/Exception;
    :try_start_1
    invoke-static {p1, p2}, Ljavax/microedition/media/Manager;->createPlayer(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/microedition/media/Player;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    .line 88
    :goto_5
    return-object v2

    .line 84
    :catch_6
    move-exception v0

    .line 85
    .local v0, ex:Ljava/lang/SecurityException;
    move-object v1, v0

    .line 87
    const-string v2, "Manager.createPlayer"

    invoke-static {v2, v1}, Lcom/vlingo/client/android/core/restricted/AndroidRestrictedMethods;->permissionsFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 88
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public _managerCreatePlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;
    .registers 5
    .parameter "locator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, exception:Ljava/lang/Exception;
    :try_start_1
    invoke-static {p1}, Ljavax/microedition/media/Manager;->createPlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    .line 77
    :goto_5
    return-object v2

    .line 73
    :catch_6
    move-exception v0

    .line 74
    .local v0, ex:Ljava/lang/SecurityException;
    move-object v1, v0

    .line 76
    const-string v2, "Manager.createPlayer"

    invoke-static {v2, v1}, Lcom/vlingo/client/android/core/restricted/AndroidRestrictedMethods;->permissionsFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 77
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public _phoneGetDevicePhoneNumber(Z)Ljava/lang/String;
    .registers 5
    .parameter "format"

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, exception:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "imei"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v2

    .line 99
    :goto_7
    return-object v2

    .line 95
    :catch_8
    move-exception v0

    .line 96
    .local v0, ex:Ljava/lang/SecurityException;
    move-object v1, v0

    .line 98
    const-string v2, "Phone.getDevicePhoneNumber"

    invoke-static {v2, v1}, Lcom/vlingo/client/android/core/restricted/AndroidRestrictedMethods;->permissionsFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 99
    const-string v2, ""

    goto :goto_7
.end method

.method public _pimGetInstance()Ljavax/microedition/pim/PIM;
    .registers 4

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, exception:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Ljavax/microedition/pim/PIM;->getInstance()Ljavax/microedition/pim/PIM;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    .line 109
    :goto_5
    return-object v2

    .line 105
    :catch_6
    move-exception v0

    .line 106
    .local v0, ex:Ljava/lang/SecurityException;
    move-object v1, v0

    .line 108
    const-string v2, "PIM.getInstance"

    invoke-static {v2, v1}, Lcom/vlingo/client/android/core/restricted/AndroidRestrictedMethods;->permissionsFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 109
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public _pimOpenPIMList(Ljavax/microedition/pim/PIM;II)Ljavax/microedition/pim/PIMList;
    .registers 7
    .parameter "pim"
    .parameter "pimListType"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/pim/PIMException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, exception:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljavax/microedition/pim/PIM;->openPIMList(II)Ljavax/microedition/pim/PIMList;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v2

    .line 120
    :goto_5
    return-object v2

    .line 116
    :catch_6
    move-exception v0

    .line 117
    .local v0, ex:Ljava/lang/SecurityException;
    move-object v1, v0

    .line 119
    const-string v2, "PIM.openPIMList"

    invoke-static {v2, v1}, Lcom/vlingo/client/android/core/restricted/AndroidRestrictedMethods;->permissionsFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 120
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public _volumeControlSetLevel(Ljavax/microedition/media/control/VolumeControl;I)V
    .registers 6
    .parameter "control"
    .parameter "level"

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 126
    .local v1, exception:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p1, p2}, Ljavax/microedition/media/control/VolumeControl;->setLevel(I)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_5

    .line 132
    :goto_4
    return-void

    .line 128
    :catch_5
    move-exception v0

    .line 129
    .local v0, ex:Ljava/lang/SecurityException;
    move-object v1, v0

    .line 131
    const-string v2, "VolumeControl.setLevel"

    invoke-static {v2, v1}, Lcom/vlingo/client/android/core/restricted/AndroidRestrictedMethods;->permissionsFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4
.end method

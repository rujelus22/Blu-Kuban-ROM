.class public Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;
.super Lcom/samsung/upnp/ControlPoint;
.source "TransferCP.java"

# interfaces
.implements Lcom/samsung/upnp/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;
    }
.end annotation


# instance fields
.field mDeviceList:Lcom/samsung/upnp/DeviceList;

.field mLastEventSequence:J

.field mSimpleFileServer:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

.field mTransferDeviceEventListener:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 51
    const/16 v0, 0x4fb4

    const-wide v1, 0x40bb7d0000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x40c3880000000000L

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/upnp/ControlPoint;-><init>(II)V

    .line 37
    new-instance v0, Lcom/samsung/upnp/DeviceList;

    invoke-direct {v0}, Lcom/samsung/upnp/DeviceList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mDeviceList:Lcom/samsung/upnp/DeviceList;

    .line 38
    iput-object v7, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mSimpleFileServer:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    .line 39
    iput-object v7, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mTransferDeviceEventListener:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mLastEventSequence:J

    .line 52
    const-string v0, "upnp:rootdevice"

    invoke-super {p0, v0}, Lcom/samsung/upnp/ControlPoint;->addSearchTarget(Ljava/lang/String;)V

    .line 53
    const-string v0, "urn:samsung.com:device:FileTransferServer:1"

    invoke-super {p0, v0}, Lcom/samsung/upnp/ControlPoint;->addSearchTarget(Ljava/lang/String;)V

    .line 54
    const-string v0, "urn:samsung.com:service:FileTransport:1"

    invoke-super {p0, v0}, Lcom/samsung/upnp/ControlPoint;->addSearchTarget(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p0}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->addEventListener(Lcom/samsung/upnp/event/EventListener;)Z

    .line 57
    new-instance v0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    invoke-direct {v0}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mSimpleFileServer:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    .line 58
    return-void
.end method


# virtual methods
.method buildFileUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/samsung/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/upnp/ControlPoint;->getHTTPPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    const-string v1, "/fileshare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 270
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    const-string v1, "file_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 275
    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 276
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    return-object v0
.end method

.method buildItemInfo(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/xml/Node;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 240
    new-instance v0, Lcom/samsung/xml/Node;

    const-string v1, "Item"

    invoke-direct {v0, v1}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/samsung/xml/Node;

    const-string v2, "Name"

    invoke-direct {v1, v2}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 242
    new-instance v2, Lcom/samsung/xml/Node;

    const-string v3, "Type"

    invoke-direct {v2, v3}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 243
    new-instance v3, Lcom/samsung/xml/Node;

    const-string v4, "Length"

    invoke-direct {v3, v4}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 244
    new-instance v4, Lcom/samsung/xml/Node;

    const-string v5, "Location"

    invoke-direct {v4, v5}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 245
    new-instance v5, Lcom/samsung/xml/Node;

    const-string v6, "SourceURL"

    invoke-direct {v5, v6}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 246
    new-instance v6, Lcom/samsung/xml/Node;

    const-string v7, "TargetURL"

    invoke-direct {v6, v7}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 249
    invoke-virtual {v0, v2}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 250
    invoke-virtual {v0, v4}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 251
    invoke-virtual {v0, v3}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 252
    invoke-virtual {v4, v5}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 253
    invoke-virtual {v4, v6}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 255
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 256
    const-string v1, "file"

    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v5, p2}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 261
    return-object v0
.end method

.method public cancelSession(Lcom/samsung/upnp/Device;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/upnp/UPnPException;
        }
    .end annotation

    .prologue
    .line 151
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel Session(TransferCP) : sessionID :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mSimpleFileServer:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    invoke-virtual {v0, p2}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->clearFiles(Ljava/lang/String;)V

    .line 155
    const-string v0, "CancelSession"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getAction(Lcom/samsung/upnp/Device;Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 156
    const-string v1, "SessionID"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    .line 158
    return-void
.end method

.method public closeSession(Lcom/samsung/upnp/Device;Ljava/lang/String;)V
    .registers 5
    .parameter "dev"
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/upnp/UPnPException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v1, "CloseSession"

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getAction(Lcom/samsung/upnp/Device;Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 145
    .local v0, act:Lcom/samsung/upnp/Action;
    const-string v1, "SessionID"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    .line 147
    return-void
.end method

.method public connectToDevice(Lcom/samsung/upnp/Device;)Z
    .registers 6
    .parameter "transfer"

    .prologue
    const/4 v2, 0x0

    .line 96
    if-nez p1, :cond_4

    .line 104
    :cond_3
    :goto_3
    return v2

    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 99
    .local v0, device:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_3

    .line 101
    const-string v3, "urn:samsung.com:service:FileTransport:1"

    invoke-virtual {v0, v3}, Lcom/samsung/upnp/Device;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v1

    .line 102
    .local v1, service:Lcom/samsung/upnp/Service;
    if-eqz v1, :cond_3

    .line 104
    invoke-virtual {p0, v1}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->subscribe(Lcom/samsung/upnp/Service;)Z

    move-result v2

    goto :goto_3
.end method

.method public createSession(Lcom/samsung/upnp/Device;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;
    .registers 17
    .parameter "dev"
    .parameter "name"
    .parameter "senderDesc"
    .parameter "sessionDesc"
    .parameter "totalCount"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/upnp/UPnPException;
        }
    .end annotation

    .prologue
    .line 112
    const-string v7, "CreateSession"

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getAction(Lcom/samsung/upnp/Device;Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 113
    .local v0, act:Lcom/samsung/upnp/Action;
    const-string v7, "SenderFriendlyName"

    invoke-virtual {v0, v7}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v4

    .line 114
    .local v4, argName:Lcom/samsung/upnp/Argument;
    const-string v7, "Message"

    invoke-virtual {v0, v7}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v3

    .line 115
    .local v3, argDesc:Lcom/samsung/upnp/Argument;
    const-string v7, "TransportDescription"

    invoke-virtual {v0, v7}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v6

    .line 116
    .local v6, argTransfer:Lcom/samsung/upnp/Argument;
    const-string v7, "TotalCount"

    invoke-virtual {v0, v7}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v2

    .line 117
    .local v2, argCount:Lcom/samsung/upnp/Argument;
    const-string v7, "TotalBytes"

    invoke-virtual {v0, v7}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v5

    .line 119
    .local v5, argSize:Lcom/samsung/upnp/Argument;
    if-eqz v4, :cond_2e

    if-eqz v3, :cond_2e

    if-eqz v2, :cond_2e

    if-eqz v5, :cond_2e

    if-nez v6, :cond_36

    .line 120
    :cond_2e
    new-instance v7, Lcom/samsung/upnp/UPnPException;

    const/16 v8, 0x191

    invoke-direct {v7, v8}, Lcom/samsung/upnp/UPnPException;-><init>(I)V

    throw v7

    .line 122
    :cond_36
    if-eqz p2, :cond_56

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_56

    if-eqz p3, :cond_56

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_56

    .line 123
    if-lez p5, :cond_56

    const-wide/16 v7, 0x0

    cmp-long v7, p6, v7

    if-lez v7, :cond_56

    if-eqz p4, :cond_56

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5d

    .line 124
    :cond_56
    new-instance v7, Lcom/samsung/upnp/UPnPException;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/samsung/upnp/UPnPException;-><init>(I)V

    throw v7

    .line 126
    :cond_5d
    invoke-virtual {v4, p2}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3, p3}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v6, p4}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2, p5}, Lcom/samsung/upnp/Argument;->setValue(I)V

    .line 130
    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 133
    const-string v7, "SessionID"

    invoke-virtual {v0, v7}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v1

    .line 134
    .local v1, arg:Lcom/samsung/upnp/Argument;
    if-nez v1, :cond_85

    .line 135
    new-instance v7, Lcom/samsung/upnp/UPnPException;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Lcom/samsung/upnp/UPnPException;-><init>(I)V

    throw v7

    .line 136
    :cond_85
    invoke-virtual {v1}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 138
    .end local v1           #arg:Lcom/samsung/upnp/Argument;
    :goto_89
    return-object v7

    :cond_8a
    const/4 v7, 0x0

    goto :goto_89
.end method

.method public eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    if-eqz p1, :cond_33

    .line 193
    if-eqz p4, :cond_33

    const-string v0, "TransportStatus"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 195
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<EVENT>:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_2a
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mTransferDeviceEventListener:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;

    if-eqz v0, :cond_33

    .line 199
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mTransferDeviceEventListener:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;

    invoke-interface {v0, p1, p5}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;->onTransportStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_34
    .catch Ljava/lang/Error; {:try_start_2a .. :try_end_33} :catch_4a

    .line 207
    :cond_33
    :goto_33
    return-void

    .line 200
    :catch_34
    move-exception v0

    .line 201
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eventNotifyReceived exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 202
    :catch_4a
    move-exception v0

    .line 203
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eventNotifyReceived exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method getAction(Lcom/samsung/upnp/Device;Ljava/lang/String;)Lcom/samsung/upnp/Action;
    .registers 7
    .parameter "dev"
    .parameter "actionName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/upnp/UPnPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 210
    if-nez p1, :cond_9

    .line 211
    new-instance v2, Lcom/samsung/upnp/UPnPException;

    invoke-direct {v2, v3}, Lcom/samsung/upnp/UPnPException;-><init>(I)V

    throw v2

    .line 214
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 215
    .local v1, device:Lcom/samsung/upnp/Device;
    if-nez v1, :cond_19

    .line 216
    new-instance v2, Lcom/samsung/upnp/UPnPException;

    invoke-direct {v2, v3}, Lcom/samsung/upnp/UPnPException;-><init>(I)V

    throw v2

    .line 219
    :cond_19
    invoke-virtual {v1, p2}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 220
    .local v0, act:Lcom/samsung/upnp/Action;
    if-nez v0, :cond_27

    .line 221
    new-instance v2, Lcom/samsung/upnp/UPnPException;

    const/16 v3, 0x191

    invoke-direct {v2, v3}, Lcom/samsung/upnp/UPnPException;-><init>(I)V

    throw v2

    .line 222
    :cond_27
    return-object v0
.end method

.method public final getDeviceList()Lcom/samsung/upnp/DeviceList;
    .registers 6

    .prologue
    .line 74
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mDeviceList:Lcom/samsung/upnp/DeviceList;

    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->clear()V

    .line 76
    invoke-super {p0}, Lcom/samsung/upnp/ControlPoint;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v1

    .line 77
    .local v1, list:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v1}, Lcom/samsung/upnp/DeviceList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 83
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mDeviceList:Lcom/samsung/upnp/DeviceList;

    return-object v2

    .line 77
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Device;

    .line 78
    .local v0, d:Lcom/samsung/upnp/Device;
    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "urn:samsung.com:device:FileTransferServer:1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 79
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mDeviceList:Lcom/samsung/upnp/DeviceList;

    invoke-virtual {v3, v0}, Lcom/samsung/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 4
    .parameter "httpReq"

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, uri:Ljava/lang/String;
    const-string v1, "/fileshare"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 66
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mSimpleFileServer:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    invoke-virtual {v1, p1}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->handleFileRequest(Lcom/samsung/http/HTTPRequest;)V

    .line 69
    :goto_11
    return-void

    .line 68
    :cond_12
    invoke-super {p0, p1}, Lcom/samsung/upnp/ControlPoint;->httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    goto :goto_11
.end method

.method public setFileEventHandler(Landroid/os/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mSimpleFileServer:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mSimpleFileServer:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->setFileEventHandler(Landroid/os/Handler;)V

    .line 93
    :cond_9
    return-void
.end method

.method public setTransferDeviceEventListener(Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mTransferDeviceEventListener:Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;

    .line 88
    return-void
.end method

.method public transportItem(Lcom/samsung/upnp/Device;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/upnp/UPnPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 161
    const-string v0, "TransportItem"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->getAction(Lcom/samsung/upnp/Device;Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 162
    const-string v1, "SessionID"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v1

    .line 163
    const-string v2, "ItemDescriptor"

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v2

    .line 165
    if-eqz v1, :cond_17

    if-nez v2, :cond_1d

    .line 166
    :cond_17
    new-instance v0, Lcom/samsung/upnp/UPnPException;

    invoke-direct {v0, v4}, Lcom/samsung/upnp/UPnPException;-><init>(I)V

    throw v0

    .line 168
    :cond_1d
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2d

    if-eqz p3, :cond_2d

    invoke-virtual {p3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_33

    .line 169
    :cond_2d
    new-instance v0, Lcom/samsung/upnp/UPnPException;

    invoke-direct {v0, v4}, Lcom/samsung/upnp/UPnPException;-><init>(I)V

    throw v0

    .line 171
    :cond_33
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->mSimpleFileServer:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    invoke-virtual {v3, p2, p3}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->addFile(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {p0, v3, p2}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->buildFileUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {p0, p3, v3}, Lcom/samsung/android/application/fileshare/controlpoint/TransferCP;->buildItemInfo(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v3

    .line 174
    if-nez v3, :cond_49

    .line 175
    new-instance v0, Lcom/samsung/upnp/UPnPException;

    invoke-direct {v0, v4}, Lcom/samsung/upnp/UPnPException;-><init>(I)V

    throw v0

    .line 177
    :cond_49
    invoke-virtual {v1, p2}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/samsung/xml/Node;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->postControlAction()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 181
    const-string v0, ""

    .line 184
    :goto_5c
    return-object v0

    .line 183
    :cond_5d
    const-string v1, "FileShare"

    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getStatusByString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    goto :goto_5c
.end method

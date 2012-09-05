.class public Lcom/samsung/upnp/media/server/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lcom/samsung/upnp/control/ActionListener;
.implements Lcom/samsung/upnp/control/QueryListener;


# instance fields
.field private conInfoList:Lcom/samsung/upnp/media/server/ConnectionInfoList;

.field private maxConnectionID:I

.field private mediaServer:Lcom/samsung/upnp/media/server/MediaServer;

.field private mutex:Lcom/samsung/util/Mutex;


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/media/server/MediaServer;)V
    .registers 3
    .parameter "mserver"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/samsung/util/Mutex;

    invoke-direct {v0}, Lcom/samsung/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->mutex:Lcom/samsung/util/Mutex;

    .line 152
    new-instance v0, Lcom/samsung/upnp/media/server/ConnectionInfoList;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/ConnectionInfoList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->conInfoList:Lcom/samsung/upnp/media/server/ConnectionInfoList;

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/ConnectionManager;->setMediaServer(Lcom/samsung/upnp/media/server/MediaServer;)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->maxConnectionID:I

    .line 87
    return-void
.end method

.method private getCurrentConnectionIDs(Lcom/samsung/upnp/Action;)Z
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x192

    const/4 v2, 0x0

    .line 269
    if-nez p1, :cond_7

    move v0, v2

    .line 306
    :goto_6
    return v0

    .line 271
    :cond_7
    const-string v0, ""

    .line 272
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ConnectionManager;->lock()V

    .line 273
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->conInfoList:Lcom/samsung/upnp/media/server/ConnectionInfoList;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/ConnectionInfoList;->size()I

    move-result v4

    .line 274
    const-string v1, "ConnectionManager "

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-nez v4, :cond_42

    .line 276
    const-string v0, "0"

    move-object v1, v0

    .line 286
    :goto_20
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ConnectionManager;->unlock()V

    .line 288
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getActionRequest()Lcom/samsung/upnp/control/ActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/control/ActionRequest;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/samsung/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_80

    .line 298
    const-string v0, "ConnectionIDs"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_9e

    .line 300
    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x1

    goto :goto_6

    :cond_42
    move v1, v2

    .line 278
    :goto_43
    if-lt v1, v4, :cond_47

    move-object v1, v0

    goto :goto_20

    .line 279
    :cond_47
    iget-object v3, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->conInfoList:Lcom/samsung/upnp/media/server/ConnectionInfoList;

    invoke-virtual {v3, v1}, Lcom/samsung/upnp/media/server/ConnectionInfoList;->getConnectionInfo(I)Lcom/samsung/upnp/media/server/ConnectionInfo;

    move-result-object v3

    .line 280
    if-lez v1, :cond_62

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    :cond_62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/ConnectionInfo;->getID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_43

    .line 289
    :cond_80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Argument;

    .line 292
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_98

    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ConnectionIDs"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 293
    :cond_98
    invoke-virtual {p1, v6}, Lcom/samsung/upnp/Action;->setStatus(I)V

    move v0, v2

    .line 294
    goto/16 :goto_6

    .line 302
    :cond_9e
    invoke-virtual {p1, v6}, Lcom/samsung/upnp/Action;->setStatus(I)V

    move v0, v2

    .line 303
    goto/16 :goto_6
.end method

.method private getCurrentConnectionInfo(Lcom/samsung/upnp/Action;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/16 v5, 0x192

    const/4 v1, 0x0

    .line 315
    if-nez p1, :cond_9

    move v0, v1

    .line 397
    :goto_8
    return v0

    .line 318
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getActionRequest()Lcom/samsung/upnp/control/ActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/control/ActionRequest;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/samsung/upnp/ArgumentList;->size()I

    move-result v3

    if-nez v3, :cond_1c

    .line 323
    invoke-virtual {p1, v5}, Lcom/samsung/upnp/Action;->setStatus(I)V

    move v0, v1

    .line 324
    goto :goto_8

    .line 327
    :cond_1c
    invoke-virtual {v0}, Lcom/samsung/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_33

    .line 337
    const-string v0, "ConnectionID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 339
    if-nez v0, :cond_50

    .line 340
    invoke-virtual {p1, v5}, Lcom/samsung/upnp/Action;->setStatus(I)V

    move v0, v1

    .line 341
    goto :goto_8

    .line 327
    :cond_33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Argument;

    .line 330
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 331
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ConnectionID"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 332
    :cond_4b
    invoke-virtual {p1, v5}, Lcom/samsung/upnp/Action;->setStatus(I)V

    move v0, v1

    .line 333
    goto :goto_8

    .line 344
    :cond_50
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getIntegerValue()I

    move-result v0

    .line 346
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ConnectionManager;->lock()V

    .line 347
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/ConnectionManager;->getConnectionInfo(I)Lcom/samsung/upnp/media/server/ConnectionInfo;

    move-result-object v3

    .line 348
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ConnectionManager;->unlock()V

    .line 350
    if-nez v3, :cond_67

    if-eqz v0, :cond_67

    .line 351
    invoke-virtual {p1, v5}, Lcom/samsung/upnp/Action;->setStatus(I)V

    move v0, v1

    .line 352
    goto :goto_8

    .line 355
    :cond_67
    iget-object v4, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->conInfoList:Lcom/samsung/upnp/media/server/ConnectionInfoList;

    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/ConnectionInfoList;->size()I

    move-result v4

    if-nez v4, :cond_bc

    if-nez v0, :cond_bc

    .line 356
    const-string v0, "RcsID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_7c

    .line 358
    invoke-virtual {v0, v6}, Lcom/samsung/upnp/Argument;->setValue(I)V

    .line 359
    :cond_7c
    const-string v0, "AVTransportID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_87

    .line 361
    invoke-virtual {v0, v6}, Lcom/samsung/upnp/Argument;->setValue(I)V

    .line 362
    :cond_87
    const-string v0, "PeerConnectionManager"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_94

    .line 364
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 365
    :cond_94
    const-string v0, "PeerConnectionID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_9f

    .line 367
    invoke-virtual {v0, v6}, Lcom/samsung/upnp/Argument;->setValue(I)V

    .line 368
    :cond_9f
    const-string v0, "Direction"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_ac

    .line 370
    const-string v1, "Output"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 371
    :cond_ac
    const-string v0, "Status"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_b9

    .line 373
    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    :cond_b9
    move v0, v2

    .line 374
    goto/16 :goto_8

    .line 375
    :cond_bc
    if-eqz v3, :cond_11b

    .line 376
    const-string v0, "RcsID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_cd

    .line 378
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/ConnectionInfo;->getRcsID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(I)V

    .line 379
    :cond_cd
    const-string v0, "AVTransportID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_dc

    .line 381
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/ConnectionInfo;->getAVTransportID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(I)V

    .line 382
    :cond_dc
    const-string v0, "PeerConnectionManager"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_eb

    .line 384
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/ConnectionInfo;->getPeerConnectionManager()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 385
    :cond_eb
    const-string v0, "PeerConnectionID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_fa

    .line 387
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/ConnectionInfo;->getPeerConnectionID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(I)V

    .line 388
    :cond_fa
    const-string v0, "Direction"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_109

    .line 390
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/ConnectionInfo;->getDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 391
    :cond_109
    const-string v0, "Status"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_118

    .line 393
    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/ConnectionInfo;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    :cond_118
    move v0, v2

    .line 394
    goto/16 :goto_8

    .line 396
    :cond_11b
    const/16 v2, 0x191

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid connection reference ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/samsung/upnp/Action;->setStatus(ILjava/lang/String;)V

    move v0, v1

    .line 397
    goto/16 :goto_8
.end method

.method private setMediaServer(Lcom/samsung/upnp/media/server/MediaServer;)V
    .registers 5
    .parameter "mserver"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->mediaServer:Lcom/samsung/upnp/media/server/MediaServer;

    .line 99
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->mediaServer:Lcom/samsung/upnp/media/server/MediaServer;

    if-eqz v1, :cond_18

    .line 100
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ConnectionManager;->updateSoruceProtocolInfo()V

    .line 101
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->mediaServer:Lcom/samsung/upnp/media/server/MediaServer;

    const-string v2, "CurrentConnectionIDs"

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/media/server/MediaServer;->getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v0

    .line 102
    .local v0, cids:Lcom/samsung/upnp/StateVariable;
    if-eqz v0, :cond_18

    .line 103
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 105
    .end local v0           #cids:Lcom/samsung/upnp/StateVariable;
    :cond_18
    return-void
.end method


# virtual methods
.method public actionControlReceived(Lcom/samsung/upnp/Action;)Z
    .registers 11
    .parameter "action"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 205
    if-nez p1, :cond_6

    .line 260
    :cond_5
    :goto_5
    return v4

    .line 207
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, actionName:Ljava/lang/String;
    const-string v6, "DLNA"

    invoke-static {v6, v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v3, 0x0

    .line 210
    .local v3, argument:Lcom/samsung/upnp/Argument;
    const-string v6, "GetProtocolInfo"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 212
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getActionRequest()Lcom/samsung/upnp/control/ActionRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/upnp/control/ActionRequest;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v2

    .line 213
    .local v2, args:Lcom/samsung/upnp/ArgumentList;
    invoke-virtual {v2}, Lcom/samsung/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4f

    .line 223
    const-string v4, "Source"

    invoke-virtual {p1, v4}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v3

    .line 224
    if-eqz v3, :cond_40

    .line 226
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getCurrentProtocolInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/ConnectionManager;->updateSoruceProtocolInfo()V

    .line 230
    :cond_40
    const-string v4, "Sink"

    invoke-virtual {p1, v4}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v3

    .line 231
    if-eqz v3, :cond_4d

    .line 232
    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    :cond_4d
    move v4, v5

    .line 234
    goto :goto_5

    .line 213
    :cond_4f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/Argument;

    .line 216
    .local v1, arg:Lcom/samsung/upnp/Argument;
    invoke-virtual {v1}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_73

    .line 217
    invoke-virtual {v1}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Source"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_24

    invoke-virtual {v1}, Lcom/samsung/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sink"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 218
    :cond_73
    const/16 v5, 0x192

    invoke-virtual {p1, v5}, Lcom/samsung/upnp/Action;->setStatus(I)V

    goto :goto_5

    .line 237
    .end local v1           #arg:Lcom/samsung/upnp/Argument;
    .end local v2           #args:Lcom/samsung/upnp/ArgumentList;
    :cond_79
    const-string v6, "PrepareForConnection"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 238
    const-string v4, "ConnectionID"

    invoke-virtual {p1, v4}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v3

    .line 239
    if-eqz v3, :cond_8c

    .line 240
    invoke-virtual {v3, v7}, Lcom/samsung/upnp/Argument;->setValue(I)V

    .line 241
    :cond_8c
    const-string v4, "AVTransportID"

    invoke-virtual {p1, v4}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v3

    .line 242
    if-eqz v3, :cond_97

    .line 243
    invoke-virtual {v3, v7}, Lcom/samsung/upnp/Argument;->setValue(I)V

    .line 244
    :cond_97
    const-string v4, "RcsID"

    invoke-virtual {p1, v4}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v3

    .line 245
    if-eqz v3, :cond_a2

    .line 246
    invoke-virtual {v3, v7}, Lcom/samsung/upnp/Argument;->setValue(I)V

    :cond_a2
    move v4, v5

    .line 247
    goto/16 :goto_5

    .line 250
    :cond_a5
    const-string v6, "ConnectionComplete"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b0

    move v4, v5

    .line 251
    goto/16 :goto_5

    .line 254
    :cond_b0
    const-string v5, "GetCurrentConnectionInfo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 255
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/ConnectionManager;->getCurrentConnectionInfo(Lcom/samsung/upnp/Action;)Z

    move-result v4

    goto/16 :goto_5

    .line 257
    :cond_be
    const-string v5, "GetCurrentConnectionIDs"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 258
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/ConnectionManager;->getCurrentConnectionIDs(Lcom/samsung/upnp/Action;)Z

    move-result v4

    goto/16 :goto_5
.end method

.method public getConnectionInfo(I)Lcom/samsung/upnp/media/server/ConnectionInfo;
    .registers 6
    .parameter "id"

    .prologue
    .line 161
    iget-object v3, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->conInfoList:Lcom/samsung/upnp/media/server/ConnectionInfoList;

    invoke-virtual {v3}, Lcom/samsung/upnp/media/server/ConnectionInfoList;->size()I

    move-result v2

    .line 162
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_7
    if-lt v1, v2, :cond_b

    .line 167
    const/4 v0, 0x0

    :cond_a
    return-object v0

    .line 163
    :cond_b
    iget-object v3, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->conInfoList:Lcom/samsung/upnp/media/server/ConnectionInfoList;

    invoke-virtual {v3, v1}, Lcom/samsung/upnp/media/server/ConnectionInfoList;->getConnectionInfo(I)Lcom/samsung/upnp/media/server/ConnectionInfo;

    move-result-object v0

    .line 164
    .local v0, info:Lcom/samsung/upnp/media/server/ConnectionInfo;
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/ConnectionInfo;->getID()I

    move-result v3

    if-eq v3, p1, :cond_a

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public lock()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->mutex:Lcom/samsung/util/Mutex;

    invoke-virtual {v0}, Lcom/samsung/util/Mutex;->lock()V

    .line 126
    return-void
.end method

.method public queryControlReceived(Lcom/samsung/upnp/StateVariable;)Z
    .registers 3
    .parameter "stateVar"

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public unlock()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->mutex:Lcom/samsung/util/Mutex;

    invoke-virtual {v0}, Lcom/samsung/util/Mutex;->unlock()V

    .line 131
    return-void
.end method

.method public updateSoruceProtocolInfo()V
    .registers 4

    .prologue
    .line 412
    iget-object v1, p0, Lcom/samsung/upnp/media/server/ConnectionManager;->mediaServer:Lcom/samsung/upnp/media/server/MediaServer;

    const-string v2, "SourceProtocolInfo"

    invoke-virtual {v1, v2}, Lcom/samsung/upnp/media/server/MediaServer;->getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v0

    .line 413
    .local v0, src:Lcom/samsung/upnp/StateVariable;
    if-eqz v0, :cond_15

    .line 414
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getCurrentProtocolInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 415
    :cond_15
    return-void
.end method

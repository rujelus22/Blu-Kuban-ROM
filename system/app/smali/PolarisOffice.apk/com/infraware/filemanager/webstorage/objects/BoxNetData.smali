.class public Lcom/infraware/filemanager/webstorage/objects/BoxNetData;
.super Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
.source "BoxNetData.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "261e0yyocyhl3tlz59kx3tu6rqcj8azg"


# instance fields
.field private authToken:Ljava/lang/String;

.field protected boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

.field private rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;-><init>()V

    .line 53
    new-instance v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;

    invoke-direct {v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    .line 54
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 57
    return-void
.end method

.method private copyToTmpFile(Ljava/io/File;)Ljava/io/File;
    .registers 13
    .parameter "srcFile"

    .prologue
    .line 346
    const/4 v6, 0x0

    .line 347
    .local v6, inputStream:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 348
    .local v8, outputStream:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 349
    .local v0, fcin:Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 351
    .local v5, fcout:Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/.temp/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->tmpFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 353
    .local v10, tmpFileName:Ljava/lang/String;
    :try_start_15
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_54

    .line 354
    .end local v6           #inputStream:Ljava/io/FileInputStream;
    .local v7, inputStream:Ljava/io/FileInputStream;
    :try_start_1a
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_56

    .line 356
    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .local v9, outputStream:Ljava/io/FileOutputStream;
    :try_start_1f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 357
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 359
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    .line 360
    .local v3, size:J
    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_30} :catch_59

    move-object v8, v9

    .end local v9           #outputStream:Ljava/io/FileOutputStream;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 364
    .end local v3           #size:J
    .end local v7           #inputStream:Ljava/io/FileInputStream;
    .restart local v6       #inputStream:Ljava/io/FileInputStream;
    :goto_32
    if-eqz v5, :cond_37

    .line 365
    :try_start_34
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_4c

    .line 368
    :cond_37
    :goto_37
    if-eqz v0, :cond_3c

    .line 369
    :try_start_39
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_4e

    .line 372
    :cond_3c
    :goto_3c
    if-eqz v8, :cond_41

    .line 373
    :try_start_3e
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_50

    .line 376
    :cond_41
    :goto_41
    if-eqz v6, :cond_46

    .line 377
    :try_start_43
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_52

    .line 380
    :cond_46
    :goto_46
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 366
    :catch_4c
    move-exception v1

    goto :goto_37

    .line 370
    :catch_4e
    move-exception v1

    goto :goto_3c

    .line 374
    :catch_50
    move-exception v1

    goto :goto_41

    .line 378
    :catch_52
    move-exception v1

    goto :goto_46

    .line 361
    :catch_54
    move-exception v1

    goto :goto_32

    .end local v6           #inputStream:Ljava/io/FileInputStream;
    .restart local v7       #inputStream:Ljava/io/FileInputStream;
    :catch_56
    move-exception v1

    move-object v6, v7

    .end local v7           #inputStream:Ljava/io/FileInputStream;
    .restart local v6       #inputStream:Ljava/io/FileInputStream;
    goto :goto_32

    .end local v6           #inputStream:Ljava/io/FileInputStream;
    .end local v8           #outputStream:Ljava/io/FileOutputStream;
    .restart local v7       #inputStream:Ljava/io/FileInputStream;
    .restart local v9       #outputStream:Ljava/io/FileOutputStream;
    :catch_59
    move-exception v1

    move-object v8, v9

    .end local v9           #outputStream:Ljava/io/FileOutputStream;
    .restart local v8       #outputStream:Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7           #inputStream:Ljava/io/FileInputStream;
    .restart local v6       #inputStream:Ljava/io/FileInputStream;
    goto :goto_32
.end method

.method private removeEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "type"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 241
    const-string v3, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    .line 240
    invoke-static {v3, v4, p1, p2}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDeleteRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;

    move-result-object v1

    .line 245
    .local v1, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    :try_start_8
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v3, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->delete(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_26
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_8 .. :try_end_d} :catch_2d

    move-result-object v2

    .line 252
    .local v2, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    invoke-interface {v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "s_delete_node"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_34

    .line 253
    new-instance v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>()V

    throw v3

    .line 246
    .end local v2           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :catch_26
    move-exception v0

    .line 247
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v3, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 248
    .end local v0           #e:Ljava/io/IOException;
    :catch_2d
    move-exception v0

    .line 249
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v3, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v3, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 254
    .end local v0           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v2       #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;
    :cond_34
    return-void
.end method

.method private renameEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "type"
    .parameter "targetId"
    .parameter "newEntryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, entryName:Ljava/lang/String;
    :try_start_1
    const-string v4, "EUC-KR"

    invoke-static {p3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_6} :catch_30

    move-result-object v1

    .line 282
    :goto_7
    const-string v4, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    .line 281
    invoke-static {v4, v5, p1, p2, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createRenameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;

    move-result-object v2

    .line 286
    .local v2, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    :try_start_f
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v4, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->rename(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_33
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_f .. :try_end_14} :catch_3a

    move-result-object v3

    .line 293
    .local v3, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    invoke-interface {v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "s_rename_node"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_41

    .line 294
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v4}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>()V

    throw v4

    .line 275
    .end local v2           #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    .end local v3           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    :catch_2d
    move-exception v0

    .line 276
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    move-object v1, p3

    goto :goto_7

    .line 277
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_30
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-object v1, p3

    goto :goto_7

    .line 287
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    :catch_33
    move-exception v0

    .line 288
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v4, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 289
    .end local v0           #e:Ljava/io/IOException;
    :catch_3a
    move-exception v0

    .line 290
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v4, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 295
    .end local v0           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v3       #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    :cond_41
    return-void
.end method

.method private simAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    .registers 22
    .parameter "boxUName"
    .parameter "boxPWord"
    .parameter "apiKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static/range {p3 .. p3}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetTicketRequest(Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;

    move-result-object v7

    .line 63
    .local v7, getTicketRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v15, v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getTicket(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;

    move-result-object v8

    .line 64
    .local v8, getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    const-string v15, "get_ticket_ok"

    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getStatus()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_24

    .line 66
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createGetAuthTokenResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;

    move-result-object v6

    .line 67
    .local v6, getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getStatus()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->setStatus(Ljava/lang/String;)V

    .line 108
    :goto_23
    return-object v6

    .line 72
    .end local v6           #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    :cond_24
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->getBoxHTTPManager()Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-result-object v15

    invoke-virtual {v15}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->getConfig()Ljava/util/Properties;

    move-result-object v3

    .line 73
    .local v3, config:Ljava/util/Properties;
    const-string v15, "box4j.config.api.url_prefix"

    invoke-virtual {v3, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, apiUrlPrefix:Ljava/lang/String;
    const-string v15, "box4j.config.api.version"

    invoke-virtual {v3, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, apiVersion:Ljava/lang/String;
    new-instance v9, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v9}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    .line 79
    .local v9, hc:Lorg/apache/commons/httpclient/HttpClient;
    invoke-virtual {v9}, Lorg/apache/commons/httpclient/HttpClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v15

    const-string v16, "http.useragent"

    const-string v17, "Mozilla/5.0 (X11; Linux x86_64; rv:2.2a1pre) Gecko/20110324 Firefox/4.2a1pre"

    invoke-virtual/range {v15 .. v17}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v14, urlBuff:Ljava/lang/StringBuffer;
    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v15, "auth"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getTicket()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    new-instance v4, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v15}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    .line 91
    .local v4, gMethod:Lorg/apache/commons/httpclient/methods/GetMethod;
    invoke-virtual {v9, v4}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 94
    new-instance v13, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v15, "login"

    move-object/from16 v0, p1

    invoke-direct {v13, v15, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .local v13, unamePair:Lorg/apache/commons/httpclient/NameValuePair;
    new-instance v12, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v15, "password"

    move-object/from16 v0, p2

    invoke-direct {v12, v15, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v12, pwordPair:Lorg/apache/commons/httpclient/NameValuePair;
    new-instance v10, Lorg/apache/commons/httpclient/NameValuePair;

    const-string v15, "dologin"

    const-string v16, "1"

    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v10, loginPair:Lorg/apache/commons/httpclient/NameValuePair;
    new-instance v11, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    .line 100
    .local v11, pMethod:Lorg/apache/commons/httpclient/methods/PostMethod;
    const/4 v15, 0x3

    new-array v15, v15, [Lorg/apache/commons/httpclient/NameValuePair;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/16 v16, 0x1

    aput-object v12, v15, v16

    const/16 v16, 0x2

    aput-object v10, v15, v16

    .line 99
    invoke-virtual {v11, v15}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestBody([Lorg/apache/commons/httpclient/NameValuePair;)V

    .line 101
    const-string v15, "Referer"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v9, v11}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 105
    invoke-interface {v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getTicket()Ljava/lang/String;

    move-result-object v15

    .line 104
    move-object/from16 v0, p3

    invoke-static {v0, v15}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetAuthTokenRequest(Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;

    move-result-object v5

    .line 106
    .local v5, getAuthTokenRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v15, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getAuthToken(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;

    move-result-object v6

    .line 108
    .restart local v6       #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    goto/16 :goto_23
.end method


# virtual methods
.method public createFolder(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .registers 16
    .parameter "node"
    .parameter "newFolderName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x3e8

    .line 203
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 204
    .local v1, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, targetId:Ljava/lang/String;
    const-string v8, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    const/4 v10, 0x0

    .line 209
    invoke-static {v8, v9, v7, p2, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createCreateFolderRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;

    move-result-object v5

    .line 212
    .local v5, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;
    :try_start_15
    iget-object v8, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v8, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->createFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_27
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_15 .. :try_end_1a} :catch_2e

    move-result-object v6

    .line 219
    .local v6, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    invoke-interface {v6}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->getFolder()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    move-result-object v3

    .line 220
    .local v3, folder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    if-nez v3, :cond_35

    .line 221
    new-instance v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v8}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>()V

    throw v8

    .line 213
    .end local v3           #folder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    .end local v6           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    :catch_27
    move-exception v0

    .line 214
    .local v0, e:Ljava/io/IOException;
    new-instance v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v8, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 215
    .end local v0           #e:Ljava/io/IOException;
    :catch_2e
    move-exception v0

    .line 216
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v8, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 223
    .end local v0           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v3       #folder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    .restart local v6       #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    :cond_35
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxAbstractFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;

    move-result-object v2

    .line 225
    .local v2, fileItem:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;
    const/4 v8, 0x1

    invoke-interface {v2, v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setFolder(Z)V

    .line 226
    invoke-interface {v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->getFolderId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setId(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v11

    invoke-interface {v2, v8, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setCreated(J)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v11

    invoke-interface {v2, v8, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setUpdated(J)V

    .line 229
    const-wide/16 v8, 0x0

    invoke-interface {v2, v8, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setSize(J)V

    .line 230
    invoke-virtual {p0, p2}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->decodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setName(Ljava/lang/String;)V

    .line 232
    new-instance v4, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v4}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 233
    .local v4, newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v4, v2}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p1, v4}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 235
    return-void
.end method

.method public decodeTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "title"

    .prologue
    .line 185
    const/4 v0, 0x0

    check-cast v0, [B

    .line 186
    .local v0, bytes:[B
    move-object v2, p1

    .line 189
    .local v2, oldTitle:Ljava/lang/String;
    :try_start_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 190
    new-instance p1, Ljava/lang/String;

    .end local p1
    const-string v3, "ISO-8859-1"

    invoke-direct {p1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_16} :catch_1a

    .line 196
    .restart local p1
    :goto_16
    return-object p1

    .line 191
    .end local p1
    :catch_17
    move-exception v1

    .line 192
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    move-object p1, v2

    .restart local p1
    goto :goto_16

    .line 193
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local p1
    :catch_1a
    move-exception v1

    .line 194
    .local v1, e:Ljava/lang/IllegalArgumentException;
    move-object p1, v2

    .restart local p1
    goto :goto_16
.end method

.method public downloadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "downloadNode"
    .parameter "newFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 473
    .local v1, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    const/4 v3, 0x0

    .line 475
    .local v3, tmpFile:Ljava/io/File;
    :try_start_7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_24
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_7 .. :try_end_c} :catch_2b

    .line 476
    .end local v3           #tmpFile:Ljava/io/File;
    .local v4, tmpFile:Ljava/io/File;
    :try_start_c
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 478
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 477
    invoke-static {v5, v6, v7, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDownloadRequest(Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;

    move-result-object v2

    .line 479
    .local v2, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v5, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->download(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1f} :catch_35
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_c .. :try_end_1f} :catch_32

    .line 509
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 480
    .end local v2           #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
    .end local v4           #tmpFile:Ljava/io/File;
    .restart local v3       #tmpFile:Ljava/io/File;
    :catch_24
    move-exception v0

    .line 481
    .local v0, e:Ljava/io/IOException;
    :goto_25
    new-instance v5, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v5, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 482
    .end local v0           #e:Ljava/io/IOException;
    :catch_2b
    move-exception v0

    .line 483
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    :goto_2c
    new-instance v5, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v5, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 482
    .end local v0           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v3           #tmpFile:Ljava/io/File;
    .restart local v4       #tmpFile:Ljava/io/File;
    :catch_32
    move-exception v0

    move-object v3, v4

    .end local v4           #tmpFile:Ljava/io/File;
    .restart local v3       #tmpFile:Ljava/io/File;
    goto :goto_2c

    .line 480
    .end local v3           #tmpFile:Ljava/io/File;
    .restart local v4       #tmpFile:Ljava/io/File;
    :catch_35
    move-exception v0

    move-object v3, v4

    .end local v4           #tmpFile:Ljava/io/File;
    .restart local v3       #tmpFile:Ljava/io/File;
    goto :goto_25
.end method

.method public encodeTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "title"

    .prologue
    .line 168
    const/4 v0, 0x0

    check-cast v0, [B

    .line 169
    .local v0, bytes:[B
    move-object v2, p1

    .line 172
    .local v2, oldTitle:Ljava/lang/String;
    :try_start_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "ISO-8859-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 173
    new-instance p1, Ljava/lang/String;

    .end local p1
    const-string v3, "utf-8"

    invoke-direct {p1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_16} :catch_1a

    .line 179
    .restart local p1
    :goto_16
    return-object p1

    .line 174
    .end local p1
    :catch_17
    move-exception v1

    .line 175
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    move-object p1, v2

    .restart local p1
    goto :goto_16

    .line 176
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local p1
    :catch_1a
    move-exception v1

    .line 177
    .local v1, e:Ljava/lang/IllegalArgumentException;
    move-object p1, v2

    .restart local p1
    goto :goto_16
.end method

.method public getEntryTree()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "userId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    const-string v2, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    invoke-direct {p0, p1, p2, v2}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->simAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_24
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_0 .. :try_end_5} :catch_2b

    move-result-object v1

    .line 125
    .local v1, getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    invoke-interface {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "not_logged_in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1e

    .line 126
    invoke-interface {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get_auth_token_ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_32

    .line 128
    :cond_1e
    new-instance v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>()V

    throw v2

    .line 119
    .end local v1           #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    :catch_24
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v2, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 121
    .end local v0           #e:Ljava/io/IOException;
    :catch_2b
    move-exception v0

    .line 122
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v2, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 131
    .end local v0           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v1       #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    :cond_32
    invoke-interface {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public moveEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .registers 13
    .parameter "srcNode"
    .parameter "dstNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 317
    .local v5, srcEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-virtual {p2}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 319
    .local v1, dstEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v8

    if-eqz v8, :cond_42

    const-string v7, "folder"

    .line 320
    .local v7, type:Ljava/lang/String;
    :goto_14
    invoke-interface {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, srcTargetId:Ljava/lang/String;
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, dscTargetId:Ljava/lang/String;
    const-string v8, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    .line 325
    invoke-static {v8, v9, v7, v6, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createMoveRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;

    move-result-object v3

    .line 330
    .local v3, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;
    :try_start_24
    iget-object v8, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v8, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->move(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_45
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_24 .. :try_end_29} :catch_4c

    move-result-object v4

    .line 337
    .local v4, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    invoke-interface {v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->getStatus()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_53

    invoke-interface {v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->getStatus()Ljava/lang/String;

    move-result-object v8

    const-string v9, "s_move_node"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_53

    .line 338
    new-instance v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v8}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>()V

    throw v8

    .line 319
    .end local v0           #dscTargetId:Ljava/lang/String;
    .end local v3           #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;
    .end local v4           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    .end local v6           #srcTargetId:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_42
    const-string v7, "file"

    goto :goto_14

    .line 331
    .restart local v0       #dscTargetId:Ljava/lang/String;
    .restart local v3       #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;
    .restart local v6       #srcTargetId:Ljava/lang/String;
    .restart local v7       #type:Ljava/lang/String;
    :catch_45
    move-exception v2

    .line 332
    .local v2, e:Ljava/io/IOException;
    new-instance v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v8, v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 333
    .end local v2           #e:Ljava/io/IOException;
    :catch_4c
    move-exception v2

    .line 334
    .local v2, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v8, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v8, v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 340
    .end local v2           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v4       #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    :cond_53
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getParent()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p2, p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 342
    return-void
.end method

.method public refreshEntryTree()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 138
    new-array v1, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "nozip"

    aput-object v5, v1, v4

    .line 143
    .local v1, gatActTreeParams:[Ljava/lang/String;
    const-string v4, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    const-string v6, "0"

    .line 142
    invoke-static {v4, v5, v6, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetAccountTreeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;

    move-result-object v2

    .line 145
    .local v2, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;
    :try_start_12
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    invoke-interface {v4, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getAccountTree(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_28
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_12 .. :try_end_17} :catch_2f

    move-result-object v3

    .line 152
    .local v3, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    invoke-interface {v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->getTree()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v4

    iput-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 153
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    if-nez v4, :cond_36

    .line 154
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v4}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>()V

    throw v4

    .line 146
    .end local v3           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    :catch_28
    move-exception v0

    .line 147
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v4, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 148
    .end local v0           #e:Ljava/io/IOException;
    :catch_2f
    move-exception v0

    .line 149
    .local v0, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct {v4, v0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 156
    .end local v0           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v3       #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    :cond_36
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-virtual {v4, v7}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setRoot(Z)V

    .line 157
    return-void
.end method

.method public removeEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .registers 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 261
    .local v0, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v0}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, targetId:Ljava/lang/String;
    invoke-interface {v0}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v2, "folder"

    .line 264
    .local v2, type:Ljava/lang/String;
    :goto_12
    invoke-direct {p0, v2, v1}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->removeEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getParent()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    return-void

    .line 262
    .end local v2           #type:Ljava/lang/String;
    :cond_21
    const-string v2, "file"

    goto :goto_12
.end method

.method public renameEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .registers 8
    .parameter "node"
    .parameter "newEntryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 303
    .local v0, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v0}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v3, "folder"

    .line 304
    .local v3, type:Ljava/lang/String;
    :goto_e
    invoke-interface {v0}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, targetId:Ljava/lang/String;
    invoke-direct {p0, v3, v2, p2}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->renameEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;

    .line 309
    .local v1, fileItem:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;
    invoke-virtual {p0, p2}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->decodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setName(Ljava/lang/String;)V

    .line 310
    return-void

    .line 303
    .end local v1           #fileItem:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;
    .end local v2           #targetId:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    :cond_23
    const-string v3, "file"

    goto :goto_e
.end method

.method public uploadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/io/File;)Z
    .registers 27
    .parameter "node"
    .parameter "uploadFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/objects/WebStorageException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 388
    .local v4, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v4}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v15

    .line 391
    .local v15, targetId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->copyToTmpFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v16

    .line 392
    .local v16, tmpFile:Ljava/io/File;
    if-nez v16, :cond_17

    .line 393
    const/16 v20, 0x0

    .line 463
    :goto_16
    return v20

    .line 395
    :cond_17
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-eqz v20, :cond_26

    .line 396
    const/16 v20, 0x0

    goto :goto_16

    .line 398
    :cond_26
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 399
    .local v7, fileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    .line 403
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v1, v15, v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createUploadRequest(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;

    move-result-object v17

    .line 406
    .local v17, uploadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;
    :try_start_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->upload(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_53} :catch_6a
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_46 .. :try_end_53} :catch_76

    move-result-object v18

    .line 415
    .local v18, uploadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 416
    .local v12, size:J
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 418
    invoke-interface/range {v18 .. v18}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;->getUploadResultList()Ljava/util/List;

    move-result-object v8

    .line 419
    .local v8, list:Ljava/util/List;
    if-eqz v8, :cond_67

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_82

    .line 420
    :cond_67
    const/16 v20, 0x0

    goto :goto_16

    .line 407
    .end local v8           #list:Ljava/util/List;
    .end local v12           #size:J
    .end local v18           #uploadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    :catch_6a
    move-exception v3

    .line 408
    .local v3, e:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 409
    new-instance v20, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 410
    .end local v3           #e:Ljava/io/IOException;
    :catch_76
    move-exception v3

    .line 411
    .local v3, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 412
    new-instance v20, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 422
    .end local v3           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v8       #list:Ljava/util/List;
    .restart local v12       #size:J
    .restart local v18       #uploadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    :cond_82
    invoke-interface/range {v18 .. v18}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;->getUploadResultList()Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;

    .line 423
    .local v19, uploadResult:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;
    invoke-interface/range {v19 .. v19}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;->getFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->getFileId()Ljava/lang/String;

    move-result-object v14

    .line 426
    .local v14, srcFileId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 428
    .local v5, entryName:Ljava/lang/String;
    :try_start_97
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "EUC-KR"

    invoke-static/range {v20 .. v21}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_97 .. :try_end_a0} :catch_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_97 .. :try_end_a0} :catch_df

    move-result-object v5

    .line 436
    :goto_a1
    const-string v20, "261e0yyocyhl3tlz59kx3tu6rqcj8azg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->authToken:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "file"

    .line 435
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v14, v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createRenameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;

    move-result-object v10

    .line 440
    .local v10, request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    :try_start_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->boxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->rename(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_c0} :catch_e5
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_b5 .. :try_end_c0} :catch_ee

    move-result-object v11

    .line 447
    .local v11, response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    invoke-interface {v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->getStatus()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_f7

    invoke-interface {v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->getStatus()Ljava/lang/String;

    move-result-object v20

    const-string v21, "s_rename_node"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_f7

    .line 448
    new-instance v20, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    invoke-direct/range {v20 .. v20}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>()V

    throw v20

    .line 429
    .end local v10           #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    .end local v11           #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    :catch_d9
    move-exception v3

    .line 430
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_a1

    .line 431
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_df
    move-exception v3

    .line 432
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_a1

    .line 441
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v10       #request:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;
    :catch_e5
    move-exception v3

    .line 442
    .local v3, e:Ljava/io/IOException;
    new-instance v20, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 443
    .end local v3           #e:Ljava/io/IOException;
    :catch_ee
    move-exception v3

    .line 444
    .local v3, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    new-instance v20, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/infraware/filemanager/webstorage/objects/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 450
    .end local v3           #e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .restart local v11       #response:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    :cond_f7
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxAbstractFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;

    move-result-object v6

    .line 452
    .local v6, fileItem:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v6, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setFolder(Z)V

    .line 453
    invoke-interface {v6, v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setId(Ljava/lang/String;)V

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-interface {v6, v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setCreated(J)V

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-interface {v6, v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setUpdated(J)V

    .line 456
    invoke-interface {v6, v12, v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setSize(J)V

    .line 457
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->decodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setName(Ljava/lang/String;)V

    .line 459
    new-instance v9, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v9}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 460
    .local v9, newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v9, v6}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 461
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 463
    const/16 v20, 0x1

    goto/16 :goto_16
.end method

.class public final Lcn/com/believer/songyuanframework/openapi/storage/box/examples/Tutorial;
.super Ljava/lang/Object;
.source "Tutorial.java"


# static fields
.field public static final API_KEY:Ljava/lang/String; = "<Your-API-Key"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 38
    .parameter "args"

    .prologue
    .line 57
    new-instance v22, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;

    invoke-direct/range {v22 .. v22}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/SimpleBoxImpl;-><init>()V

    .line 61
    .local v22, iBoxExternalAPI:Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;
    :try_start_5
    const-string v15, "<Enter new user_email here>"

    .line 62
    .local v15, email:Ljava/lang/String;
    const-string v27, "<new user password>"

    .line 64
    .local v27, password:Ljava/lang/String;
    const-string v2, "<Your-API-Key"

    .line 63
    move-object/from16 v0, v27

    invoke-static {v2, v15, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createRegisterNewUserRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;

    move-result-object v29

    .line 65
    .local v29, registerNewUserRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->registerNewUser(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserResponse;

    .line 66
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Your username is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Your password is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    const-string v2, "<Your-API-Key"

    invoke-static {v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetTicketRequest(Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;

    move-result-object v20

    .line 71
    .local v20, getTicketRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getTicket(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;

    move-result-object v21

    .line 75
    .local v21, getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Your ticket is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getTicket()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "press any key after you are authenticated from box.net page (www.box.net/api/1.0/auth/<ticket>)."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_7b} :catch_a3
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_5 .. :try_end_7b} :catch_1e7

    .line 80
    .local v9, br:Ljava/io/BufferedReader;
    :try_start_7b
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_9e
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_7b .. :try_end_7e} :catch_1e7

    move-result-object v30

    .line 85
    :goto_7f
    :try_start_7f
    const-string v2, "<Your-API-Key"

    .line 86
    invoke-interface/range {v21 .. v21}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;->getTicket()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-static {v2, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetAuthTokenRequest(Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;

    move-result-object v18

    .line 87
    .local v18, getAuthTokenRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getAuthToken(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;

    move-result-object v19

    .line 89
    .local v19, getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    const-string v2, "not_logged_in"

    invoke-interface/range {v19 .. v19}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 154
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #email:Ljava/lang/String;
    .end local v18           #getAuthTokenRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;
    .end local v19           #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    .end local v20           #getTicketRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    .end local v21           #getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    .end local v27           #password:Ljava/lang/String;
    .end local v29           #registerNewUserRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;
    :goto_9d
    return-void

    .line 81
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v15       #email:Ljava/lang/String;
    .restart local v20       #getTicketRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    .restart local v21       #getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    .restart local v27       #password:Ljava/lang/String;
    .restart local v29       #registerNewUserRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;
    :catch_9e
    move-exception v14

    .line 82
    .local v14, e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_a2} :catch_a3
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_7f .. :try_end_a2} :catch_1e7

    goto :goto_7f

    .line 148
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v14           #e:Ljava/io/IOException;
    .end local v15           #email:Ljava/lang/String;
    .end local v20           #getTicketRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    .end local v21           #getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    .end local v27           #password:Ljava/lang/String;
    .end local v29           #registerNewUserRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;
    :catch_a3
    move-exception v14

    .line 149
    .restart local v14       #e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9d

    .line 92
    .end local v14           #e:Ljava/io/IOException;
    .restart local v9       #br:Ljava/io/BufferedReader;
    .restart local v15       #email:Ljava/lang/String;
    .restart local v18       #getAuthTokenRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;
    .restart local v19       #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    .restart local v20       #getTicketRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    .restart local v21       #getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    .restart local v27       #password:Ljava/lang/String;
    .restart local v29       #registerNewUserRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;
    :cond_a8
    :try_start_a8
    invoke-interface/range {v19 .. v19}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, authToken:Ljava/lang/String;
    const-string v2, "<Your-API-Key"

    .line 96
    const-string v4, "0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "folderName"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 95
    invoke-static {v2, v3, v4, v5, v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createCreateFolderRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;

    move-result-object v10

    .line 97
    .local v10, createFolderRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->createFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;

    move-result-object v11

    .line 98
    .local v11, createFolderResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    invoke-interface {v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->getFolder()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    move-result-object v2

    invoke-interface {v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;->getFolderId()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, createdFolderId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "This-is-a-Temp-File"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".txt"

    invoke-static {v2, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v31

    .line 102
    .local v31, tmpFile:Ljava/io/File;
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->deleteOnExit()V

    .line 103
    new-instance v25, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    move-object/from16 v0, v31

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 104
    .local v25, out:Ljava/io/BufferedWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "this is a test file for upload"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedWriter;->close()V

    .line 108
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v16, fileMap:Ljava/util/Map;
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-static {v3, v2, v6, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createUploadRequest(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;

    move-result-object v33

    .line 112
    .local v33, uploadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;
    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->upload(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;

    move-result-object v34

    .line 114
    .local v34, uploadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    invoke-interface/range {v34 .. v34}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;->getUploadResultList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;

    .line 115
    .local v35, uploadResult:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;
    invoke-interface/range {v35 .. v35}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;->getFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    move-result-object v2

    invoke-interface {v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;->getFileId()Ljava/lang/String;

    move-result-object v36

    .line 117
    .local v36, uploadedFileId:Ljava/lang/String;
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v24, nameBytesHashMap:Ljava/util/HashMap;
    const-string v2, "fileName.txt"

    const-string v4, "fileName.txt"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v3, v2, v6, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createUploadRequest(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;

    move-result-object v33

    .line 120
    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->upload(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;

    .line 123
    const-string v2, "<Your-API-Key"

    .line 124
    const-string v4, "folder"

    const-string v5, "888888"

    const-string v7, "this is my public folder !"

    const/4 v8, 0x0

    .line 123
    invoke-static/range {v2 .. v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createPublicShareRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;

    move-result-object v28

    .line 125
    .local v28, publicShareRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->publicShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;

    .line 128
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/4 v2, 0x0

    const-string v4, "nozip"

    aput-object v4, v26, v2

    .line 130
    .local v26, params:[Ljava/lang/String;
    const-string v2, "<Your-API-Key"

    const-string v4, "0"

    .line 129
    move-object/from16 v0, v26

    invoke-static {v2, v3, v4, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createGetAccountTreeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;

    move-result-object v17

    .line 131
    .local v17, getAccountTreeRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->getAccountTree(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;

    .line 134
    new-instance v32, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "downloadedFileNo."

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v32, tmpFile2:Ljava/io/File;
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->createNewFile()Z

    .line 136
    const/4 v2, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-static {v3, v0, v2, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDownloadRequest(Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;

    move-result-object v13

    .line 138
    .local v13, downloadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->download(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadResponse;

    .line 141
    const-string v2, "<Your-API-Key"

    const-string v4, "file"

    move-object/from16 v0, v36

    invoke-static {v2, v3, v4, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createDeleteRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;

    move-result-object v12

    .line 143
    .local v12, deleteRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->delete(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteResponse;

    .line 146
    const-string v2, "<Your-API-Key"

    invoke-static {v2, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxRequestFactory;->createLogoutRequest(Ljava/lang/String;Ljava/lang/String;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;

    move-result-object v23

    .line 147
    .local v23, logoutRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;
    invoke-interface/range {v22 .. v23}, Lcn/com/believer/songyuanframework/openapi/storage/box/BoxExternalAPI;->logout(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_1e5} :catch_a3
    .catch Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException; {:try_start_a8 .. :try_end_1e5} :catch_1e7

    goto/16 :goto_9d

    .line 150
    .end local v3           #authToken:Ljava/lang/String;
    .end local v6           #createdFolderId:Ljava/lang/String;
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v10           #createFolderRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;
    .end local v11           #createFolderResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    .end local v12           #deleteRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DeleteRequest;
    .end local v13           #downloadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/DownloadRequest;
    .end local v15           #email:Ljava/lang/String;
    .end local v16           #fileMap:Ljava/util/Map;
    .end local v17           #getAccountTreeRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;
    .end local v18           #getAuthTokenRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;
    .end local v19           #getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    .end local v20           #getTicketRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketRequest;
    .end local v21           #getTicketResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetTicketResponse;
    .end local v23           #logoutRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;
    .end local v24           #nameBytesHashMap:Ljava/util/HashMap;
    .end local v25           #out:Ljava/io/BufferedWriter;
    .end local v26           #params:[Ljava/lang/String;
    .end local v27           #password:Ljava/lang/String;
    .end local v28           #publicShareRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;
    .end local v29           #registerNewUserRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RegisterNewUserRequest;
    .end local v31           #tmpFile:Ljava/io/File;
    .end local v32           #tmpFile2:Ljava/io/File;
    .end local v33           #uploadRequest:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadRequest;
    .end local v34           #uploadResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/UploadResponse;
    .end local v35           #uploadResult:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/UploadResult;
    .end local v36           #uploadedFileId:Ljava/lang/String;
    :catch_1e7
    move-exception v14

    .line 151
    .local v14, e:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-virtual {v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->printStackTrace()V

    goto/16 :goto_9d
.end method

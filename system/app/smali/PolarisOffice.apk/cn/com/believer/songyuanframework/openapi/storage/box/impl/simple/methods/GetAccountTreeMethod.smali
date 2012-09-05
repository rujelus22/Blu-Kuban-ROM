.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "GetAccountTreeMethod.java"


# static fields
.field public static final PARAMS_KEY_NOZIP:Ljava/lang/String; = "nozip"

.field public static final PARAMS_KEY_ONELEVEL:Ljava/lang/String; = "onelevel"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method

.method private recursiveOnFile(Lorg/dom4j/Element;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .registers 8
    .parameter "fileNodeElm"
    .parameter "parentTreeNode"

    .prologue
    .line 284
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxAbstractFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;

    move-result-object v0

    .line 285
    .local v0, fileItem:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;
    const-string v3, "id"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setId(Ljava/lang/String;)V

    .line 286
    const-string v3, "created"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 287
    const-string v3, "created"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    .line 288
    invoke-interface {v3}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setCreated(J)V

    .line 290
    :cond_2a
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setFolder(Z)V

    .line 291
    const-string v3, "keyword"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 292
    const-string v3, "keyword"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setKeyword(Ljava/lang/String;)V

    .line 294
    :cond_43
    const-string v3, "file_name"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setName(Ljava/lang/String;)V

    .line 295
    const-string v3, "shared"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 297
    const-string v3, "shared"

    .line 296
    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    .line 297
    invoke-interface {v3}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setShared(Z)V

    .line 300
    :cond_69
    const-string v3, "size"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 299
    invoke-interface {v0, v3, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setSize(J)V

    .line 302
    const-string v3, "updated"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 303
    const-string v3, "updated"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    .line 304
    invoke-interface {v3}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setUpdated(J)V

    .line 306
    :cond_93
    const-string v3, "tags"

    invoke-interface {p1, v3}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 307
    .local v1, tagsElm:Lorg/dom4j/Element;
    invoke-static {v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->transferTags2List(Lorg/dom4j/Element;)Ljava/util/List;

    move-result-object v2

    .line 308
    .local v2, tagsList:Ljava/util/List;
    invoke-interface {v0, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setTags(Ljava/util/List;)V

    .line 309
    invoke-virtual {p2, v0}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method private recursiveOnFolder(Lorg/dom4j/Element;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .registers 15
    .parameter "folderElm"
    .parameter "parentTreeNode"

    .prologue
    .line 228
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxAbstractFile()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;

    move-result-object v0

    .line 229
    .local v0, fileItem:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setFolder(Z)V

    .line 230
    const-string v9, "id"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    invoke-interface {v9}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setId(Ljava/lang/String;)V

    .line 231
    const-string v9, "created"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    if-eqz v9, :cond_40

    .line 232
    const-string v9, ""

    const-string v10, "created"

    invoke-interface {p1, v10}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v10

    invoke-interface {v10}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_40

    .line 233
    const-string v9, "created"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    .line 234
    invoke-interface {v9}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v9

    .line 233
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-interface {v0, v9, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setCreated(J)V

    .line 236
    :cond_40
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setFolder(Z)V

    .line 237
    const-string v9, "keyword"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    if-eqz v9, :cond_59

    .line 238
    const-string v9, "keyword"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    invoke-interface {v9}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setKeyword(Ljava/lang/String;)V

    .line 240
    :cond_59
    const-string v9, "name"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    invoke-interface {v9}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setName(Ljava/lang/String;)V

    .line 241
    const-string v9, "shared"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    if-eqz v9, :cond_7f

    .line 243
    const-string v9, "shared"

    .line 242
    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    .line 243
    invoke-interface {v9}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v9

    .line 242
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-interface {v0, v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setShared(Z)V

    .line 245
    :cond_7f
    const-string v9, "updated"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    if-eqz v9, :cond_de

    const/4 v9, 0x1

    .line 246
    :goto_88
    const-string v10, ""

    const-string v11, "updated"

    invoke-interface {p1, v11}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v11

    invoke-interface {v11}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e0

    const/4 v10, 0x0

    :goto_9b
    and-int/2addr v9, v10

    if-eqz v9, :cond_af

    .line 247
    const-string v9, "updated"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v9

    .line 248
    invoke-interface {v9}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v9

    .line 247
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-interface {v0, v9, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setUpdated(J)V

    .line 250
    :cond_af
    invoke-virtual {p2, v0}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 252
    const-string v9, "tags"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 253
    .local v6, tagsElm:Lorg/dom4j/Element;
    invoke-static {v6}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->transferTags2List(Lorg/dom4j/Element;)Ljava/util/List;

    move-result-object v7

    .line 254
    .local v7, tagsList:Ljava/util/List;
    invoke-interface {v0, v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxAbstractFile;->setTags(Ljava/util/List;)V

    .line 255
    const-string v9, "files"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 256
    .local v2, filesElm:Lorg/dom4j/Element;
    if-eqz v2, :cond_ce

    .line 257
    const/4 v5, 0x0

    .local v5, i:I
    :goto_c8
    invoke-interface {v2}, Lorg/dom4j/Element;->nodeCount()I

    move-result v9

    if-lt v5, v9, :cond_e2

    .line 265
    .end local v5           #i:I
    :cond_ce
    const-string v9, "folders"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 266
    .local v4, foldersElm:Lorg/dom4j/Element;
    if-eqz v4, :cond_dd

    .line 267
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_d7
    invoke-interface {v4}, Lorg/dom4j/Element;->nodeCount()I

    move-result v9

    if-lt v5, v9, :cond_f6

    .line 274
    .end local v5           #i:I
    :cond_dd
    return-void

    .line 245
    .end local v2           #filesElm:Lorg/dom4j/Element;
    .end local v4           #foldersElm:Lorg/dom4j/Element;
    .end local v6           #tagsElm:Lorg/dom4j/Element;
    .end local v7           #tagsList:Ljava/util/List;
    :cond_de
    const/4 v9, 0x0

    goto :goto_88

    .line 246
    :cond_e0
    const/4 v10, 0x1

    goto :goto_9b

    .line 258
    .restart local v2       #filesElm:Lorg/dom4j/Element;
    .restart local v5       #i:I
    .restart local v6       #tagsElm:Lorg/dom4j/Element;
    .restart local v7       #tagsList:Ljava/util/List;
    :cond_e2
    invoke-interface {v2, v5}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 259
    .local v1, fileNode:Lorg/dom4j/Element;
    new-instance v8, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v8}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 260
    .local v8, theNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {p2, v8}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 261
    invoke-direct {p0, v1, v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->recursiveOnFile(Lorg/dom4j/Element;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 257
    add-int/lit8 v5, v5, 0x1

    goto :goto_c8

    .line 268
    .end local v1           #fileNode:Lorg/dom4j/Element;
    .end local v8           #theNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .restart local v4       #foldersElm:Lorg/dom4j/Element;
    :cond_f6
    invoke-interface {v4, v5}, Lorg/dom4j/Element;->node(I)Lorg/dom4j/Node;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Element;

    .line 269
    .local v3, folderNode:Lorg/dom4j/Element;
    new-instance v8, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v8}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 270
    .restart local v8       #theNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {p2, v8}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 271
    invoke-direct {p0, v3, v8}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->recursiveOnFolder(Lorg/dom4j/Element;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 267
    add-int/lit8 v5, v5, 0x1

    goto :goto_d7
.end method

.method private transferTree2Model(Lorg/dom4j/Element;)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .registers 5
    .parameter "treeElm"

    .prologue
    .line 213
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v0}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 214
    .local v0, defaultMutableTreeNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    const-string v2, "folder"

    invoke-interface {p1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 215
    .local v1, folderElm:Lorg/dom4j/Element;
    invoke-direct {p0, v1, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->recursiveOnFolder(Lorg/dom4j/Element;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 216
    return-object v0
.end method


# virtual methods
.method public getAccountTree(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    .registers 32
    .parameter "getAccountTreeRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createGetAccountTreeResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;

    move-result-object v13

    .line 72
    .local v13, getAccountTreeResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;->getFolderId()Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, folderId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeRequest;->getParams()[Ljava/lang/String;

    move-result-object v17

    .line 77
    .local v17, params:[Ljava/lang/String;
    const-string v27, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_113

    .line 79
    const-string v27, "get_account_tree"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    .line 80
    .local v26, urlBuff:Ljava/lang/StringBuffer;
    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v27, "api_key"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v27, "auth_token"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v27, "folder_id"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    if-nez v17, :cond_d0

    .line 93
    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v27, "params[]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :cond_79
    :try_start_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v8

    .line 108
    .local v8, doc:Lorg/dom4j/Document;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v20

    .line 110
    .local v20, responseElm:Lorg/dom4j/Element;
    const-string v27, "status"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 111
    .local v23, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v23 .. v23}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v22

    .line 112
    .local v22, status:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->setStatus(Ljava/lang/String;)V

    .line 113
    const-string v27, "listing_ok"

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_cf

    .line 115
    const-string v27, "tree"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v24

    .line 117
    .local v24, treeElm:Lorg/dom4j/Element;
    if-eqz v17, :cond_f5

    .line 118
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    const-string v28, "nozip"

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f5

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->transferTree2Model(Lorg/dom4j/Element;)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v25

    .line 120
    .local v25, treeModel:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    move-object/from16 v0, v25

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->setTree(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    :try_end_cf
    .catch Lorg/dom4j/DocumentException; {:try_start_79 .. :try_end_cf} :catch_ff

    .line 204
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v20           #responseElm:Lorg/dom4j/Element;
    .end local v22           #status:Ljava/lang/String;
    .end local v23           #statusElm:Lorg/dom4j/Element;
    .end local v24           #treeElm:Lorg/dom4j/Element;
    .end local v25           #treeModel:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .end local v26           #urlBuff:Ljava/lang/StringBuffer;
    :cond_cf
    :goto_cf
    return-object v13

    .line 98
    .restart local v26       #urlBuff:Ljava/lang/StringBuffer;
    :cond_d0
    const/4 v14, 0x0

    .local v14, i:I
    :goto_d1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_79

    .line 99
    aget-object v16, v17, v14

    .line 100
    .local v16, param:Ljava/lang/String;
    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v27, "params[]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    add-int/lit8 v14, v14, 0x1

    goto :goto_d1

    .line 123
    .end local v14           #i:I
    .end local v16           #param:Ljava/lang/String;
    .restart local v8       #doc:Lorg/dom4j/Document;
    .restart local v20       #responseElm:Lorg/dom4j/Element;
    .restart local v22       #status:Ljava/lang/String;
    .restart local v23       #statusElm:Lorg/dom4j/Element;
    .restart local v24       #treeElm:Lorg/dom4j/Element;
    :cond_f5
    :try_start_f5
    invoke-interface/range {v24 .. v24}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->setEncodedTree(Ljava/lang/String;)V
    :try_end_fe
    .catch Lorg/dom4j/DocumentException; {:try_start_f5 .. :try_end_fe} :catch_ff

    goto :goto_cf

    .line 126
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v20           #responseElm:Lorg/dom4j/Element;
    .end local v22           #status:Ljava/lang/String;
    .end local v23           #statusElm:Lorg/dom4j/Element;
    .end local v24           #treeElm:Lorg/dom4j/Element;
    :catch_ff
    move-exception v10

    .line 127
    .local v10, e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 128
    const-string v27, "failed to parse to a document."

    .line 127
    move-object/from16 v0, v27

    invoke-direct {v7, v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .local v7, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->getStatus()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 130
    throw v7

    .line 133
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #e:Lorg/dom4j/DocumentException;
    .end local v26           #urlBuff:Ljava/lang/StringBuffer;
    :cond_113
    const-string v27, "xml"

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_21a

    .line 136
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v9

    .line 138
    .local v9, document:Lorg/dom4j/Document;
    const-string v27, "request"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 139
    .local v19, requestElm:Lorg/dom4j/Element;
    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 142
    const-string v27, "action"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 144
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v27, "api_key"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 146
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v27, "auth_token"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 148
    .local v6, authTokenElm:Lorg/dom4j/Element;
    const-string v27, "folder_id"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 150
    .local v12, folderIdElm:Lorg/dom4j/Element;
    const-string v27, "params"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 151
    .local v18, paramsElm:Lorg/dom4j/Element;
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 152
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 153
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 154
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 155
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 157
    const-string v27, "get_account_tree"

    move-object/from16 v0, v27

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 158
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 159
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 160
    invoke-interface {v12, v11}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 161
    if-eqz v17, :cond_185

    .line 162
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_17c
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v14, v0, :cond_1fb

    .line 171
    .end local v14           #i:I
    :cond_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-interface {v9}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 173
    .local v21, result:Ljava/lang/String;
    :try_start_199
    invoke-static/range {v21 .. v21}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v8

    .line 174
    .restart local v8       #doc:Lorg/dom4j/Document;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v20

    .line 176
    .restart local v20       #responseElm:Lorg/dom4j/Element;
    const-string v27, "status"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 177
    .restart local v23       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v23 .. v23}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v22

    .line 178
    .restart local v22       #status:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->setStatus(Ljava/lang/String;)V

    .line 179
    const-string v27, "listing_ok"

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_cf

    .line 181
    const-string v27, "tree"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v24

    .line 183
    .restart local v24       #treeElm:Lorg/dom4j/Element;
    if-eqz v17, :cond_20f

    .line 184
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    const-string v28, "nozip"

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_20f

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->transferTree2Model(Lorg/dom4j/Element;)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v25

    .line 186
    .restart local v25       #treeModel:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    move-object/from16 v0, v25

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->setTree(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    :try_end_1e5
    .catch Lorg/dom4j/DocumentException; {:try_start_199 .. :try_end_1e5} :catch_1e7

    goto/16 :goto_cf

    .line 192
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v20           #responseElm:Lorg/dom4j/Element;
    .end local v22           #status:Ljava/lang/String;
    .end local v23           #statusElm:Lorg/dom4j/Element;
    .end local v24           #treeElm:Lorg/dom4j/Element;
    .end local v25           #treeModel:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    :catch_1e7
    move-exception v10

    .line 193
    .restart local v10       #e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 194
    const-string v27, "failed to parse to a document."

    .line 193
    move-object/from16 v0, v27

    invoke-direct {v7, v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .restart local v7       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->getStatus()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 196
    throw v7

    .line 163
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #e:Lorg/dom4j/DocumentException;
    .end local v21           #result:Ljava/lang/String;
    .restart local v14       #i:I
    :cond_1fb
    aget-object v16, v17, v14

    .line 165
    .restart local v16       #param:Ljava/lang/String;
    const-string v27, "item"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 166
    .local v15, itemElm:Lorg/dom4j/Element;
    invoke-interface/range {v15 .. v16}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 162
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_17c

    .line 189
    .end local v14           #i:I
    .end local v15           #itemElm:Lorg/dom4j/Element;
    .end local v16           #param:Ljava/lang/String;
    .restart local v8       #doc:Lorg/dom4j/Document;
    .restart local v20       #responseElm:Lorg/dom4j/Element;
    .restart local v21       #result:Ljava/lang/String;
    .restart local v22       #status:Ljava/lang/String;
    .restart local v23       #statusElm:Lorg/dom4j/Element;
    .restart local v24       #treeElm:Lorg/dom4j/Element;
    :cond_20f
    :try_start_20f
    invoke-interface/range {v24 .. v24}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAccountTreeResponse;->setEncodedTree(Ljava/lang/String;)V
    :try_end_218
    .catch Lorg/dom4j/DocumentException; {:try_start_20f .. :try_end_218} :catch_1e7

    goto/16 :goto_cf

    .line 199
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v9           #document:Lorg/dom4j/Document;
    .end local v12           #folderIdElm:Lorg/dom4j/Element;
    .end local v18           #paramsElm:Lorg/dom4j/Element;
    .end local v19           #requestElm:Lorg/dom4j/Element;
    .end local v20           #responseElm:Lorg/dom4j/Element;
    .end local v21           #result:Ljava/lang/String;
    .end local v22           #status:Ljava/lang/String;
    .end local v23           #statusElm:Lorg/dom4j/Element;
    .end local v24           #treeElm:Lorg/dom4j/Element;
    :cond_21a
    const-string v27, "soap"

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAccountTreeMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_cf
.end method

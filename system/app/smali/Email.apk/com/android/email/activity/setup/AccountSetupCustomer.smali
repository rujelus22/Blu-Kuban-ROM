.class public Lcom/android/email/activity/setup/AccountSetupCustomer;
.super Ljava/lang/Object;
.source "AccountSetupCustomer.java"


# static fields
.field private static mCustomerCount:I

.field static mCustomerEmailType:Z

.field static mCustomerList:Lorg/w3c/dom/NodeList;

.field static mCustomerNode:Lorg/w3c/dom/Node;

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mFilePath:Ljava/lang/String;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupCustomer;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerEmailType:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerEmailType:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->loadXMLFile()V

    .line 121
    return-void
.end method

.method public static getCustomerFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "fileName"

    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/csc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, filePath:Ljava/lang/String;
    return-object v0
.end method

.method public static getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;

    if-eqz v0, :cond_9

    .line 125
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->loadXMLFile()V

    .line 127
    :cond_9
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;

    return-object v0
.end method


# virtual methods
.method public getProviderCustomer(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .registers 37
    .parameter "domain"

    .prologue
    .line 308
    const/16 v21, 0x0

    .line 309
    .local v21, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    if-nez v32, :cond_10

    .line 310
    const-string v32, "AccountSetupCustomer"

    const-string v33, "Error while trying to load mCustomerNode."

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v21

    .line 508
    :goto_f
    return-object v22

    .line 313
    :cond_10
    const-string v32, "AccountSetupCustomer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "mCustomerCount: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    sget v34, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerCount:I

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2b
    sget v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerCount:I

    move/from16 v0, v32

    if-ge v9, v0, :cond_4c7

    .line 316
    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 318
    .local v4, accountNodeListChild:Lorg/w3c/dom/Node;
    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "AccountName"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, accountName:Ljava/lang/String;
    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "EmailAddr"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, emailAddr:Ljava/lang/String;
    const-string v32, "yahoo.com"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_c6

    const-string v32, "Yahoo! Mail"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c6

    .line 337
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 338
    .local v14, logsbuf:Ljava/lang/StringBuffer;
    const-string v32, "AccountSetupCustomer"

    const-string v33, "domain[yahoo]"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v14           #logsbuf:Ljava/lang/StringBuffer;
    :cond_9d
    const/16 v26, 0x0

    .line 347
    .local v26, serverType:Ljava/lang/String;
    const/16 v23, 0x0

    .line 348
    .local v23, secureType:Ljava/lang/String;
    const/16 v24, 0x0

    .line 349
    .local v24, serverAddr:Ljava/lang/String;
    const/16 v25, 0x0

    .line 350
    .local v25, serverPort:Ljava/lang/String;
    const/16 v31, 0x0

    .line 351
    .local v31, userName:Ljava/lang/String;
    const/16 v30, 0x0

    .line 352
    .local v30, userId:Ljava/lang/String;
    const/4 v11, 0x0

    .line 353
    .local v11, incomingUri:Ljava/lang/String;
    const/16 v17, 0x0

    .line 356
    .local v17, outgoingUri:Ljava/lang/String;
    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Incoming"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 358
    .local v10, incomingList:Lorg/w3c/dom/NodeList;
    if-nez v10, :cond_ea

    .line 359
    const/16 v22, 0x0

    goto/16 :goto_f

    .line 339
    .end local v10           #incomingList:Lorg/w3c/dom/NodeList;
    .end local v11           #incomingUri:Ljava/lang/String;
    .end local v17           #outgoingUri:Ljava/lang/String;
    .end local v23           #secureType:Ljava/lang/String;
    .end local v24           #serverAddr:Ljava/lang/String;
    .end local v25           #serverPort:Ljava/lang/String;
    .end local v26           #serverType:Ljava/lang/String;
    .end local v30           #userId:Ljava/lang/String;
    .end local v31           #userName:Ljava/lang/String;
    :cond_c6
    if-eqz v8, :cond_d0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_9d

    .line 342
    :cond_d0
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 343
    .restart local v14       #logsbuf:Ljava/lang/StringBuffer;
    const-string v32, "AccountSetupCustomer"

    const-string v33, "domain[Notyahoo]"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v14           #logsbuf:Ljava/lang/StringBuffer;
    :goto_e6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2b

    .line 363
    .restart local v10       #incomingList:Lorg/w3c/dom/NodeList;
    .restart local v11       #incomingUri:Ljava/lang/String;
    .restart local v17       #outgoingUri:Ljava/lang/String;
    .restart local v23       #secureType:Ljava/lang/String;
    .restart local v24       #serverAddr:Ljava/lang/String;
    .restart local v25       #serverPort:Ljava/lang/String;
    .restart local v26       #serverType:Ljava/lang/String;
    .restart local v30       #userId:Ljava/lang/String;
    .restart local v31       #userName:Ljava/lang/String;
    :cond_ea
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "MailboxType"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v26

    .line 366
    if-nez v26, :cond_10c

    .line 367
    const/16 v22, 0x0

    goto/16 :goto_f

    .line 371
    :cond_10c
    const-string v32, "imap3"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_124

    const-string v32, "imap4"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_260

    .line 372
    :cond_124
    const-string v26, "imap"

    .line 378
    :goto_126
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Secure"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    .line 380
    if-eqz v23, :cond_264

    const-string v32, "off"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_264

    .line 383
    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    .line 384
    .local v29, typesbuf:Ljava/lang/StringBuffer;
    const-string v32, "+"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "+"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 390
    .end local v29           #typesbuf:Ljava/lang/StringBuffer;
    :goto_171
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "ServAddr"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    .line 395
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    .local v6, addrsbuf:Ljava/lang/StringBuffer;
    const-string v32, "://"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    .line 399
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Port"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v25

    .line 400
    if-eqz v25, :cond_1df

    .line 403
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    .local v20, portsbuf:Ljava/lang/StringBuffer;
    const-string v32, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    .line 407
    .end local v20           #portsbuf:Ljava/lang/StringBuffer;
    :cond_1df
    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "LoginType"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v31

    .line 408
    if-eqz v31, :cond_268

    const-string v32, "domain_type"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_268

    .line 409
    const-string v31, "$email"

    .line 419
    :goto_207
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 420
    .local v13, inurisbuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    if-eqz v23, :cond_218

    .line 422
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    :cond_218
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 427
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 428
    .local v12, insbuf:Ljava/lang/StringBuffer;
    const-string v32, "AccountSetupCustomer"

    const-string v33, "incomingUri: "

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget-object v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Outgoing"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 432
    .local v16, outgoingList:Lorg/w3c/dom/NodeList;
    if-nez v16, :cond_26b

    .line 433
    const/16 v22, 0x0

    goto/16 :goto_f

    .line 374
    .end local v6           #addrsbuf:Ljava/lang/StringBuffer;
    .end local v12           #insbuf:Ljava/lang/StringBuffer;
    .end local v13           #inurisbuf:Ljava/lang/StringBuffer;
    .end local v16           #outgoingList:Lorg/w3c/dom/NodeList;
    :cond_260
    const-string v26, "pop3"

    goto/16 :goto_126

    .line 386
    :cond_264
    const-string v23, ""

    goto/16 :goto_171

    .line 411
    .restart local v6       #addrsbuf:Ljava/lang/StringBuffer;
    :cond_268
    const-string v31, "$user"

    goto :goto_207

    .line 436
    .restart local v12       #insbuf:Ljava/lang/StringBuffer;
    .restart local v13       #inurisbuf:Ljava/lang/StringBuffer;
    .restart local v16       #outgoingList:Lorg/w3c/dom/NodeList;
    :cond_26b
    const-string v26, "smtp"

    .line 438
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Secure"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    .line 439
    if-eqz v23, :cond_4ab

    const-string v32, "off"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4ab

    .line 442
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 443
    .local v28, typebuf:Ljava/lang/StringBuffer;
    const-string v32, "+"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "+"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 449
    .end local v28           #typebuf:Ljava/lang/StringBuffer;
    :goto_2ba
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "ServAddr"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    .line 454
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 455
    .local v5, addrbuf:Ljava/lang/StringBuffer;
    const-string v32, "://"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    .line 459
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "Port"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v25

    .line 460
    if-eqz v25, :cond_32c

    .line 463
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 464
    .local v19, portbuf:Ljava/lang/StringBuffer;
    const-string v32, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    .line 468
    .end local v19           #portbuf:Ljava/lang/StringBuffer;
    :cond_32c
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 469
    .local v18, outuribuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    if-eqz v23, :cond_341

    .line 471
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    :cond_341
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 475
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 477
    .local v15, outbuf:Ljava/lang/StringBuffer;
    const-string v32, "AccountSetupCustomer"

    const-string v33, "outgoingUri: "

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/16 v32, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    const-string v33, "SmtpAuth"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v27

    .line 481
    .local v27, smtpAuth:Ljava/lang/String;
    :try_start_391
    new-instance v22, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct/range {v22 .. v22}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V
    :try_end_396
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_396} :catch_4cb

    .line 482
    .end local v21           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .local v22, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :try_start_396
    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 483
    move-object/from16 v0, v22

    iput-object v3, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->label:Ljava/lang/String;

    .line 484
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 485
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 486
    new-instance v32, Ljava/net/URI;

    move-object/from16 v0, v32

    invoke-direct {v0, v11}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 487
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 488
    new-instance v32, Ljava/net/URI;

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    .line 489
    if-eqz v27, :cond_3e4

    const-string v32, "off"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_4af

    .line 490
    :cond_3e4
    const-string v32, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 495
    :goto_3ec
    const-string v32, "AccountSetupCustomer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "<provider id=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\" label=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->label:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\" domain=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\">"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v32, "AccountSetupCustomer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "\t<incoming uri=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\" username=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\">"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v32, "AccountSetupCustomer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "\t<outgoing uri=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\" username=\""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\">"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v32, "AccountSetupCustomer"

    const-string v33, "</provider>"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a7
    .catch Ljava/lang/Exception; {:try_start_396 .. :try_end_4a7} :catch_4b7

    move-object/from16 v21, v22

    .line 503
    .end local v22           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v21       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    goto/16 :goto_f

    .line 445
    .end local v5           #addrbuf:Ljava/lang/StringBuffer;
    .end local v15           #outbuf:Ljava/lang/StringBuffer;
    .end local v18           #outuribuf:Ljava/lang/StringBuffer;
    .end local v27           #smtpAuth:Ljava/lang/String;
    :cond_4ab
    const-string v23, ""

    goto/16 :goto_2ba

    .line 492
    .end local v21           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v5       #addrbuf:Ljava/lang/StringBuffer;
    .restart local v15       #outbuf:Ljava/lang/StringBuffer;
    .restart local v18       #outuribuf:Ljava/lang/StringBuffer;
    .restart local v22       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v27       #smtpAuth:Ljava/lang/String;
    :cond_4af
    :try_start_4af
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;
    :try_end_4b5
    .catch Ljava/lang/Exception; {:try_start_4af .. :try_end_4b5} :catch_4b7

    goto/16 :goto_3ec

    .line 504
    :catch_4b7
    move-exception v7

    move-object/from16 v21, v22

    .line 505
    .end local v22           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .local v7, e:Ljava/lang/Exception;
    .restart local v21       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :goto_4ba
    const-string v32, "AccountSetupCustomer"

    const-string v33, "Error while trying to load customer provider settings."

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e6

    .end local v3           #accountName:Ljava/lang/String;
    .end local v4           #accountNodeListChild:Lorg/w3c/dom/Node;
    .end local v5           #addrbuf:Ljava/lang/StringBuffer;
    .end local v6           #addrsbuf:Ljava/lang/StringBuffer;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #emailAddr:Ljava/lang/String;
    .end local v10           #incomingList:Lorg/w3c/dom/NodeList;
    .end local v11           #incomingUri:Ljava/lang/String;
    .end local v12           #insbuf:Ljava/lang/StringBuffer;
    .end local v13           #inurisbuf:Ljava/lang/StringBuffer;
    .end local v15           #outbuf:Ljava/lang/StringBuffer;
    .end local v16           #outgoingList:Lorg/w3c/dom/NodeList;
    .end local v17           #outgoingUri:Ljava/lang/String;
    .end local v18           #outuribuf:Ljava/lang/StringBuffer;
    .end local v23           #secureType:Ljava/lang/String;
    .end local v24           #serverAddr:Ljava/lang/String;
    .end local v25           #serverPort:Ljava/lang/String;
    .end local v26           #serverType:Ljava/lang/String;
    .end local v27           #smtpAuth:Ljava/lang/String;
    .end local v30           #userId:Ljava/lang/String;
    .end local v31           #userName:Ljava/lang/String;
    :cond_4c7
    move-object/from16 v22, v21

    .line 508
    goto/16 :goto_f

    .line 504
    .restart local v3       #accountName:Ljava/lang/String;
    .restart local v4       #accountNodeListChild:Lorg/w3c/dom/Node;
    .restart local v5       #addrbuf:Ljava/lang/StringBuffer;
    .restart local v6       #addrsbuf:Ljava/lang/StringBuffer;
    .restart local v8       #emailAddr:Ljava/lang/String;
    .restart local v10       #incomingList:Lorg/w3c/dom/NodeList;
    .restart local v11       #incomingUri:Ljava/lang/String;
    .restart local v12       #insbuf:Ljava/lang/StringBuffer;
    .restart local v13       #inurisbuf:Ljava/lang/StringBuffer;
    .restart local v15       #outbuf:Ljava/lang/StringBuffer;
    .restart local v16       #outgoingList:Lorg/w3c/dom/NodeList;
    .restart local v17       #outgoingUri:Ljava/lang/String;
    .restart local v18       #outuribuf:Ljava/lang/StringBuffer;
    .restart local v23       #secureType:Ljava/lang/String;
    .restart local v24       #serverAddr:Ljava/lang/String;
    .restart local v25       #serverPort:Ljava/lang/String;
    .restart local v26       #serverType:Ljava/lang/String;
    .restart local v27       #smtpAuth:Ljava/lang/String;
    .restart local v30       #userId:Ljava/lang/String;
    .restart local v31       #userName:Ljava/lang/String;
    :catch_4cb
    move-exception v7

    goto :goto_4ba
.end method

.method public getTagCount(Lorg/w3c/dom/NodeList;)I
    .registers 3
    .parameter "list"

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, count:I
    if-eqz p1, :cond_7

    .line 289
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 291
    :cond_7
    return v0
.end method

.method public getTagEmailType(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .registers 13
    .parameter "parent"
    .parameter "tagName"

    .prologue
    const/4 v6, 0x1

    .line 235
    if-nez p1, :cond_4

    .line 257
    :goto_3
    return v6

    .line 238
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 239
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_90

    .line 240
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 241
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_90

    .line 242
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 243
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, tagStr:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 246
    .local v4, tagInt:I
    if-ne v4, v6, :cond_5a

    .line 247
    const-string v7, "AccountSetupCustomer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "---------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "return true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 250
    :cond_5a
    const-string v6, "AccountSetupCustomer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---------"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "return false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 241
    .end local v4           #tagInt:I
    .end local v5           #tagStr:Ljava/lang/String;
    :cond_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 256
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_90
    const-string v7, "AccountSetupCustomer"

    const-string v8, "--------- Not exist Combined Email setting non csc: return true --------"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 10
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 261
    sget-object v5, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v5, :cond_6

    if-nez p1, :cond_8

    .line 262
    :cond_6
    const/4 v5, 0x0

    .line 275
    :goto_7
    return-object v5

    .line 264
    :cond_8
    sget-object v5, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 265
    .local v3, list:Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 266
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_33

    .line 267
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 268
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v4, :cond_33

    .line 269
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 270
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 271
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 268
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 275
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_33
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    goto :goto_7
.end method

.method public getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7
    .parameter "tagFullName"

    .prologue
    const/4 v3, 0x0

    .line 179
    sget-object v4, Lcom/android/email/activity/setup/AccountSetupCustomer;->mRoot:Lorg/w3c/dom/Node;

    if-nez v4, :cond_7

    move-object v0, v3

    .line 194
    :cond_6
    :goto_6
    return-object v0

    .line 183
    :cond_7
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 184
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_10
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 187
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, tagName:Ljava/lang/String;
    if-nez v0, :cond_1e

    move-object v0, v3

    .line 190
    goto :goto_6

    .line 192
    :cond_1e
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 193
    goto :goto_10
.end method

.method public getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 12
    .parameter "parent"
    .parameter "tagName"

    .prologue
    const/4 v5, 0x0

    .line 198
    if-nez p1, :cond_5

    move-object v0, v5

    .line 215
    :cond_4
    :goto_4
    return-object v0

    .line 202
    :cond_5
    :try_start_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 203
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_40

    .line 204
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 205
    .local v4, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v4, :cond_40

    .line 206
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 207
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_23

    move-result v6

    if-nez v6, :cond_4

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 212
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v3           #i:I
    .end local v4           #n:I
    :catch_23
    move-exception v2

    .line 213
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "AccountSetupCustomer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTagNode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/Exception;
    :cond_40
    move-object v0, v5

    .line 215
    goto :goto_4
.end method

.method public getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3
    .parameter "node"

    .prologue
    .line 279
    if-nez p1, :cond_4

    .line 280
    const/4 v0, 0x0

    .line 282
    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public isCombinedEnabled()Z
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public loadXMLFile()V
    .registers 7

    .prologue
    .line 139
    :try_start_0
    const-string v3, "customer.xml"

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getCustomerFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mFilePath:Ljava/lang/String;

    .line 140
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 141
    .local v2, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 142
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/email/activity/setup/AccountSetupCustomer;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    sput-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    .line 143
    sget-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    sput-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 144
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->setAccountSetupCustomer()V
    :try_end_28
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_28} :catch_29
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_28} :catch_43
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_5d

    .line 152
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_28
    return-void

    .line 145
    :catch_29
    move-exception v1

    .line 146
    .local v1, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v3, "AccountSetupCustomer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParserConfigurationException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 147
    .end local v1           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_43
    move-exception v1

    .line 148
    .local v1, ex:Lorg/xml/sax/SAXException;
    const-string v3, "AccountSetupCustomer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SAXException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 149
    .end local v1           #ex:Lorg/xml/sax/SAXException;
    :catch_5d
    move-exception v1

    .line 150
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "AccountSetupCustomer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public setAccountSetupCustomer()V
    .registers 3

    .prologue
    .line 295
    const-string v0, "Settings.Messages.Email"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 298
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "Combinded"

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagEmailType(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerEmailType:Z

    .line 299
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "Account"

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 300
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerCount:I

    .line 301
    return-void
.end method

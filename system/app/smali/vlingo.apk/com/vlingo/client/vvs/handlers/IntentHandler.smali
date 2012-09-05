.class public Lcom/vlingo/client/vvs/handlers/IntentHandler;
.super Ljava/lang/Object;
.source "IntentHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# instance fields
.field protected ignoreTTS:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/vvs/handlers/IntentHandler;->ignoreTTS:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 23
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 44
    invoke-virtual/range {p0 .. p1}, Lcom/vlingo/client/vvs/handlers/IntentHandler;->getIntentName(Lcom/vlingo/client/core/vlservice/response/Action;)Ljava/lang/String;

    move-result-object v9

    .line 45
    .local v9, intentName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/vlingo/client/vvs/handlers/IntentHandler;->getIntentArgument(Lcom/vlingo/client/core/vlservice/response/Action;)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, intentArgument:Ljava/lang/String;
    const-string v18, "IntentPackage"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 48
    .local v10, intentPackage:Ljava/lang/String;
    const-string v18, "IntentClass"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, intentClass:Ljava/lang/String;
    const-string v18, "IntentType"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 52
    .local v11, intentType:Ljava/lang/String;
    invoke-static {v11}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 53
    const-string v11, "Activity"

    .line 56
    :cond_2e
    const-string v18, "TTS"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 61
    .local v16, tts:Ljava/lang/String;
    const/16 v18, 0x2e

    move/from16 v0, v18

    invoke-static {v9, v0}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, intentComponents:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v14, v8, v18

    .line 64
    .local v14, pageId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vlingo/client/vvs/handlers/IntentHandler;->ignoreTTS:Z

    move/from16 v18, v0

    if-nez v18, :cond_5e

    if-eqz v16, :cond_5e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_5e

    .line 65
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 68
    :cond_5e
    const/4 v5, 0x0

    .line 73
    .local v5, intent:Landroid/content/Intent;
    if-eqz v6, :cond_11c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_11c

    .line 74
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    const/16 v18, 0x20

    const/16 v19, 0x2b

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .restart local v5       #intent:Landroid/content/Intent;
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 76
    .local v4, index:I
    if-lez v4, :cond_a9

    .line 77
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 83
    .end local v4           #index:I
    :cond_a9
    :goto_a9
    const-string v18, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 84
    .local v17, type:Ljava/lang/String;
    if-eqz v17, :cond_dd

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_dd

    .line 85
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 86
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_dd
    if-eqz v10, :cond_f0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_f0

    if-eqz v7, :cond_f0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_f0

    .line 90
    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :cond_f0
    invoke-virtual/range {p1 .. p1}, Lcom/vlingo/client/core/vlservice/response/Action;->keys()Ljava/util/Enumeration;

    move-result-object v13

    .line 95
    .local v13, keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_f4
    :goto_f4
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_122

    .line 96
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 97
    .local v12, key:Ljava/lang/String;
    const-string v18, "extra:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f4

    .line 98
    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, extraName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, extraValue:Ljava/lang/String;
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_f4

    .line 80
    .end local v2           #extraName:Ljava/lang/String;
    .end local v3           #extraValue:Ljava/lang/String;
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v17           #type:Ljava/lang/String;
    :cond_11c
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5       #intent:Landroid/content/Intent;
    goto :goto_a9

    .line 107
    .restart local v13       #keys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v17       #type:Ljava/lang/String;
    :cond_122
    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14c

    const-string v18, "google.navigation:q="

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_14c

    .line 108
    const-string v18, "google.navigation:q="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 109
    .local v15, query:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/vlingo/client/util/GeoUtil;->getNavigateIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 180
    .end local v15           #query:Ljava/lang/String;
    :cond_14c
    const-string v18, "Broadcast"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_160

    .line 181
    invoke-virtual/range {p2 .. p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    const/4 v5, 0x0

    .line 185
    :cond_160
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 187
    return-object v5
.end method

.method protected getIntentArgument(Lcom/vlingo/client/core/vlservice/response/Action;)Ljava/lang/String;
    .registers 3
    .parameter "action"

    .prologue
    .line 35
    const-string v0, "IntentArgument"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIntentName(Lcom/vlingo/client/core/vlservice/response/Action;)Ljava/lang/String;
    .registers 3
    .parameter "action"

    .prologue
    .line 31
    const-string v0, "IntentName"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isAnswerReadbackEnabled()Z
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/vlingo/client/car/vvs/handlers/CarWebSearchHandler;
.super Ljava/lang/Object;
.source "CarWebSearchHandler.java"

# interfaces
.implements Lcom/vlingo/client/car/vvs/CarVVSActionHandler;


# instance fields
.field public final delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarWebSearchHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 36
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 4
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/vlingo/client/car/vvs/handlers/CarWebSearchHandler;->getIntent(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getIntent(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 19
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 44
    const-string v14, "Search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, query:Ljava/lang/String;
    const-string v14, "Engine"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, engine:Ljava/lang/String;
    const/4 v13, 0x0

    .line 50
    .local v13, url:Ljava/lang/String;
    const-string v14, "Set alarm"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_80

    .line 51
    const-string v14, "but wait, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 53
    const/16 v14, 0xa

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, timeStr:Ljava/lang/String;
    const-string v14, "for"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3b

    .line 56
    const/4 v14, 0x4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 58
    :cond_3b
    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, timeSpec:[Ljava/lang/String;
    array-length v14, v10

    if-lez v14, :cond_65

    .line 61
    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 62
    .local v9, time:I
    div-int/lit8 v4, v9, 0x64

    .line 63
    .local v4, hour:I
    rem-int/lit8 v6, v9, 0x64

    .line 64
    .local v6, minute:I
    const-string v14, "hour"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-string v14, "minute"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .end local v4           #hour:I
    .end local v6           #minute:I
    .end local v9           #time:I
    :cond_65
    const/4 v14, 0x3

    array-length v15, v10

    if-ne v14, v15, :cond_72

    .line 68
    const-string v14, "now"

    const-string v15, "true"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    :cond_72
    new-instance v8, Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;

    invoke-direct {v8}, Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;-><init>()V

    .line 71
    .local v8, setAlarmHandler:Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v5

    .line 100
    .end local v8           #setAlarmHandler:Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;
    .end local v10           #timeSpec:[Ljava/lang/String;
    .end local v11           #timeStr:Ljava/lang/String;
    :goto_7f
    return-object v5

    .line 74
    :cond_80
    const-string v14, "default"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8e

    invoke-static {v3}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_fd

    .line 75
    :cond_8e
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090029

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, defaultWebSearchEngineName:Ljava/lang/String;
    const-string v14, "web_search_engine"

    invoke-static {v14, v2}, Lcom/vlingo/client/settings/Settings;->getEnum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 82
    .end local v2           #defaultWebSearchEngineName:Ljava/lang/String;
    :goto_a7
    invoke-static {v13}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_117

    .line 83
    const-string v14, "{query}"

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 88
    :goto_b7
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09023a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 89
    .local v12, tts:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_dd

    .line 90
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 92
    :cond_dd
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/car/vvs/handlers/CarWebSearchHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v12}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarBackground(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 97
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v14

    const-string v15, "web-search"

    invoke-virtual {v14, v15}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 99
    new-instance v5, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v5, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v5, intent:Landroid/content/Intent;
    goto :goto_7f

    .line 79
    .end local v5           #intent:Landroid/content/Intent;
    .end local v12           #tts:Ljava/lang/String;
    :cond_fd
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "URL-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_a7

    .line 85
    :cond_117
    invoke-static {v7}, Lcom/vlingo/client/util/WebSearchUtil;->getWebSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_b7
.end method

.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

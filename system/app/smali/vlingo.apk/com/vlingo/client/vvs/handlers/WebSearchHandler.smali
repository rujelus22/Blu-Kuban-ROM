.class public Lcom/vlingo/client/vvs/handlers/WebSearchHandler;
.super Ljava/lang/Object;
.source "WebSearchHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntent(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 15
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 31
    const-string v11, "Search"

    invoke-virtual {p0, v11}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, query:Ljava/lang/String;
    const-string v11, "Engine"

    invoke-virtual {p0, v11}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, engine:Ljava/lang/String;
    const/4 v10, 0x0

    .line 37
    .local v10, url:Ljava/lang/String;
    const-string v11, "Set alarm"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_70

    .line 38
    const-string v11, "but wait, "

    invoke-virtual {p1, v11}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 40
    const/16 v11, 0xa

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, timeStr:Ljava/lang/String;
    const-string v11, "for"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 43
    const/4 v11, 0x4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 45
    :cond_35
    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, timeSpec:[Ljava/lang/String;
    array-length v11, v8

    if-lez v11, :cond_5b

    .line 48
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 49
    .local v7, time:I
    div-int/lit8 v2, v7, 0x64

    .line 50
    .local v2, hour:I
    rem-int/lit8 v4, v7, 0x64

    .line 51
    .local v4, minute:I
    const-string v11, "hour"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    const-string v11, "minute"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .end local v2           #hour:I
    .end local v4           #minute:I
    .end local v7           #time:I
    :cond_5b
    const/4 v11, 0x3

    array-length v12, v8

    if-ne v11, v12, :cond_66

    .line 55
    const-string v11, "now"

    const-string v12, "true"

    invoke-virtual {p0, v11, v12}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    :cond_66
    new-instance v6, Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;

    invoke-direct {v6}, Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;-><init>()V

    .line 58
    .local v6, setAlarmHandler:Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;
    invoke-virtual {v6, p0, p1}, Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v3

    .line 86
    .end local v6           #setAlarmHandler:Lcom/vlingo/client/vvs/handlers/SetAlarmHandler;
    .end local v8           #timeSpec:[Ljava/lang/String;
    .end local v9           #timeStr:Ljava/lang/String;
    :goto_6f
    return-object v3

    .line 61
    :cond_70
    const-string v11, "default"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7e

    invoke-static {v1}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ca

    .line 62
    :cond_7e
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090029

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, defaultWebSearchEngineName:Ljava/lang/String;
    const-string v11, "web_search_engine"

    invoke-static {v11, v0}, Lcom/vlingo/client/settings/Settings;->getEnum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 69
    .end local v0           #defaultWebSearchEngineName:Ljava/lang/String;
    :goto_97
    invoke-static {v10}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e2

    .line 70
    const-string v11, "{query}"

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 75
    :goto_a7
    const-string v11, "Web Search"

    invoke-virtual {p1, v11}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_b5

    .line 77
    invoke-virtual {p1, v5}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 83
    :cond_b5
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v11

    const-string v12, "web-search"

    invoke-virtual {v11, v12}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 85
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v3, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .local v3, intent:Landroid/content/Intent;
    goto :goto_6f

    .line 66
    .end local v3           #intent:Landroid/content/Intent;
    :cond_ca
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "URL-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_97

    .line 72
    :cond_e2
    invoke-static {v5}, Lcom/vlingo/client/util/WebSearchUtil;->getWebSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_a7
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 4
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 91
    invoke-static {p1, p2}, Lcom/vlingo/client/vvs/handlers/WebSearchHandler;->getIntent(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;
.super Ljava/lang/Object;
.source "SuperDialerHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# instance fields
.field defaultToBusiness:Z

.field showBusinessPane:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 4
    .parameter "defaultToBusiness"
    .parameter "showBusinessPane"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;->defaultToBusiness:Z

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;->showBusinessPane:Z

    .line 24
    iput-boolean p1, p0, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;->defaultToBusiness:Z

    .line 25
    iput-boolean p2, p0, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;->showBusinessPane:Z

    .line 26
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 14
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 35
    const-string v6, "Action"

    invoke-virtual {p1, v6}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, actionType:Ljava/lang/String;
    const-string v6, "redial"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 37
    new-instance v5, Lcom/vlingo/client/vvs/handlers/RedialHandler;

    invoke-direct {v5}, Lcom/vlingo/client/vvs/handlers/RedialHandler;-><init>()V

    .line 38
    .local v5, redialHandler:Lcom/vlingo/client/vvs/handlers/RedialHandler;
    invoke-virtual {v5, p1, p2}, Lcom/vlingo/client/vvs/handlers/RedialHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v2

    .line 97
    .end local v5           #redialHandler:Lcom/vlingo/client/vvs/handlers/RedialHandler;
    :goto_1a
    return-object v2

    .line 41
    :cond_1b
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "PhoneType"

    invoke-virtual {p1, v6}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, phoneTypeString:Ljava/lang/String;
    const-string v6, "To"

    invoke-virtual {p1, v6}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, address:Ljava/lang/String;
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3c

    .line 48
    :cond_3a
    iput-boolean v10, p0, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;->defaultToBusiness:Z

    .line 51
    :cond_3c
    iget-boolean v6, p0, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;->showBusinessPane:Z

    if-nez v6, :cond_8e

    .line 52
    const-string v6, "com.vlingo.client.mode"

    const-string v7, "com.vlingo.client.mode.voicedial"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    :goto_47
    if-eqz v4, :cond_d1

    .line 62
    const-string v6, "work"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 63
    const-string v6, "com.vlingo.client.phoneTypes"

    new-array v7, v9, [I

    const/4 v8, 0x3

    aput v8, v7, v10

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 79
    :goto_5b
    const-string v6, "query"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v6, "com.vlingo.client.autodialcountdown.enabled"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const-string v6, "com.vlingo.client.autodialcountdown.msec"

    const/16 v7, 0xfa0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const-string v6, "Location"

    invoke-virtual {p1, v6}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, location:Ljava/lang/String;
    invoke-static {v3}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7d

    .line 86
    const-string v6, "com.vlingo.client.location"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_7d
    if-eqz v1, :cond_db

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_db

    .line 90
    const-string v6, "call"

    invoke-virtual {p2, v6}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    goto :goto_1a

    .line 54
    .end local v3           #location:Ljava/lang/String;
    :cond_8e
    iget-boolean v6, p0, Lcom/vlingo/client/vvs/handlers/SuperDialerHandler;->defaultToBusiness:Z

    if-eqz v6, :cond_9a

    .line 55
    const-string v6, "com.vlingo.client.mode"

    const-string v7, "com.vlingo.client.mode.business"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_47

    .line 58
    :cond_9a
    const-string v6, "com.vlingo.client.mode"

    const-string v7, "com.vlingo.client.mode.contact"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_47

    .line 65
    :cond_a2
    const-string v6, "mobile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 66
    const-string v6, "com.vlingo.client.phoneTypes"

    new-array v7, v9, [I

    const/4 v8, 0x2

    aput v8, v7, v10

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_5b

    .line 68
    :cond_b5
    const-string v6, "home"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 69
    const-string v6, "com.vlingo.client.phoneTypes"

    new-array v7, v9, [I

    aput v9, v7, v10

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_5b

    .line 72
    :cond_c7
    const-string v6, "com.vlingo.client.phoneTypes"

    new-array v7, v9, [I

    aput v8, v7, v10

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_5b

    .line 76
    :cond_d1
    const-string v6, "com.vlingo.client.phoneTypes"

    new-array v7, v9, [I

    aput v8, v7, v10

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_5b

    .line 94
    .restart local v3       #location:Ljava/lang/String;
    :cond_db
    const-string v6, "call"

    invoke-virtual {p2, v6}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    goto/16 :goto_1a
.end method

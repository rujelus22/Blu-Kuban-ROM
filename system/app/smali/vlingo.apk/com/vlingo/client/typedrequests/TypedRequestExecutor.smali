.class public Lcom/vlingo/client/typedrequests/TypedRequestExecutor;
.super Ljava/lang/Object;
.source "TypedRequestExecutor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeActions(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "data"

    .prologue
    .line 76
    if-eqz p1, :cond_27

    .line 77
    new-instance v2, Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-direct {v2}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    .line 78
    .local v2, dispacher:Lcom/vlingo/client/vvs/VVSDispatcher;
    const-string v4, "content://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 80
    invoke-static {p1}, Lcom/vlingo/client/typedrequests/provider/ApplicationSuggestionProvider;->uriToComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 81
    .local v1, cn:Landroid/content/ComponentName;
    if-eqz v1, :cond_28

    .line 82
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    :goto_24
    invoke-virtual {v2, p0, v3}, Lcom/vlingo/client/vvs/VVSDispatcher;->launchIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v2           #dispacher:Lcom/vlingo/client/vvs/VVSDispatcher;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_27
    :goto_27
    return-void

    .line 87
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v2       #dispacher:Lcom/vlingo/client/vvs/VVSDispatcher;
    :cond_28
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_24

    .line 92
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_34
    invoke-static {p1}, Lcom/vlingo/client/core/vlservice/response/ActionList;->createActionListFromJSONArray(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-result-object v0

    .line 93
    .local v0, actionList:Lcom/vlingo/client/core/vlservice/response/ActionList;
    invoke-virtual {v2, p0, v0}, Lcom/vlingo/client/vvs/VVSDispatcher;->processActionList(Landroid/content/Context;Lcom/vlingo/client/core/vlservice/response/ActionList;)Z

    goto :goto_27
.end method

.method public static executeSearch(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "query"

    .prologue
    .line 67
    invoke-static {p1}, Lcom/vlingo/client/util/WebSearchUtil;->getWebSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 68
    .local v1, i:Landroid/content/Intent;
    new-instance v0, Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-direct {v0}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    .line 69
    .local v0, dispacher:Lcom/vlingo/client/vvs/VVSDispatcher;
    invoke-virtual {v0, p0, v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->launchIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public static handleIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, action:Ljava/lang/String;
    const-string v10, "query"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    .local v7, query:Ljava/lang/String;
    const-string v10, "user_query"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 30
    .local v8, userQuery:Ljava/lang/String;
    const-string v10, "intent_extra_data_key"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, data:Ljava/lang/String;
    const-string v10, "execute_search"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_63

    .line 33
    invoke-static {p0, v3}, Lcom/vlingo/client/typedrequests/TypedRequestExecutor;->executeActions(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    const-string v10, "content://"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 36
    .local v6, isURI:Z
    if-eqz v6, :cond_60

    const-string v2, "action-uri"

    .line 37
    .local v2, actionTypeName:Ljava/lang/String;
    :goto_2c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, actionBlob:Ljava/lang/String;
    const/4 v10, -0x1

    sget-object v11, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;->Tap:Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;

    invoke-static {v8, v7, v10, v11, v1}, Lcom/vlingo/client/userlogging/events/SuggestionPickedEvent;->logSuggestionPicked(Ljava/lang/String;Ljava/lang/String;ILcom/vlingo/client/userlogging/events/SuggestionPickedEvent$PickMethod;Ljava/lang/String;)V

    .line 52
    .end local v1           #actionBlob:Ljava/lang/String;
    .end local v2           #actionTypeName:Ljava/lang/String;
    .end local v6           #isURI:Z
    :goto_5f
    return v9

    .line 36
    .restart local v6       #isURI:Z
    :cond_60
    const-string v2, "action"

    goto :goto_2c

    .line 41
    .end local v6           #isURI:Z
    :cond_63
    const-string v10, "android.intent.action.SEARCH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 42
    const/4 v5, 0x0

    .line 43
    .local v5, i:Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    .end local v5           #i:Landroid/content/Intent;
    const-class v10, Lcom/vlingo/client/typedrequests/ExecuteSearchActivity;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .restart local v5       #i:Landroid/content/Intent;
    const-string v10, "query"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v10, "user_query"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v10, "intent_extra_data_key"

    invoke-virtual {v5, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    new-instance v4, Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-direct {v4}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    .line 48
    .local v4, dispacher:Lcom/vlingo/client/vvs/VVSDispatcher;
    invoke-virtual {v4, p0, v5}, Lcom/vlingo/client/vvs/VVSDispatcher;->launchIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_5f

    .line 52
    .end local v4           #dispacher:Lcom/vlingo/client/vvs/VVSDispatcher;
    .end local v5           #i:Landroid/content/Intent;
    :cond_8b
    const/4 v9, 0x0

    goto :goto_5f
.end method

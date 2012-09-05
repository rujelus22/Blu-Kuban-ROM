.class public Lcom/vlingo/client/vvs/handlers/LocalSearchHandler;
.super Ljava/lang/Object;
.source "LocalSearchHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 10
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 22
    const-string v4, "Search"

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, searchString:Ljava/lang/String;
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 25
    new-instance v0, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;

    invoke-direct {v0}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;-><init>()V

    .line 26
    .local v0, actionNotSupported:Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;
    const-string v4, "Type"

    const-string v5, "error"

    invoke-virtual {p1, v4, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    const-string v4, "Message"

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09023b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v1

    .line 48
    .end local v0           #actionNotSupported:Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;
    :cond_2e
    :goto_2e
    return-object v1

    .line 35
    :cond_2f
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/vlingo/client/superdialer/SuperDialerActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "query"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v4, "com.vlingo.client.mode"

    const-string v5, "com.vlingo.client.mode.localsearch"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v4, "Location"

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, location:Ljava/lang/String;
    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 41
    const-string v4, "com.vlingo.client.location"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    :cond_57
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090416

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2e

    .line 46
    invoke-virtual {p2, v3}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    goto :goto_2e
.end method

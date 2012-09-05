.class public Lcom/vlingo/client/vvs/handlers/SocialPageHandler;
.super Ljava/lang/Object;
.source "SocialPageHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
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
    const/16 v4, 0xe

    invoke-static {v4}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_29

    .line 23
    new-instance v0, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;

    invoke-direct {v0}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;-><init>()V

    .line 24
    .local v0, actionNotSupported:Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;
    const-string v4, "Type"

    const-string v5, "error"

    invoke-virtual {p1, v4, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    const-string v4, "Message"

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09023b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v1

    .line 37
    .end local v0           #actionNotSupported:Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;
    :goto_28
    return-object v1

    .line 29
    :cond_29
    const-string v4, "Type"

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, type:Ljava/lang/String;
    const-string v4, "Status"

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, status:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/VlingoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/vlingo/client/social/SocialUpdateActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "Text"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v4, "NetworkType"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090278

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    goto :goto_28
.end method

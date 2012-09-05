.class public Lcom/vlingo/client/vvs/handlers/TranslateHandler;
.super Ljava/lang/Object;
.source "TranslateHandler.java"

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
    .registers 12
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    const v8, 0x7f090432

    const v7, 0x7f090027

    .line 21
    const/4 v1, 0x0

    .line 22
    .local v1, translateIntent:Landroid/content/Intent;
    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    .local v0, context:Landroid/content/Context;
    const-string v3, "Type"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, type:Ljava/lang/String;
    const-string v3, "External"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-static {v0, v3, v4, v5, v6}, Lcom/vlingo/client/util/PackageUtil;->canHandleIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090323

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 28
    new-instance v1, Landroid/content/Intent;

    .end local v1           #translateIntent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .restart local v1       #translateIntent:Landroid/content/Intent;
    :cond_48
    :goto_48
    return-object v1

    .line 30
    :cond_49
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vlingo/client/util/ActivityUtil;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_48
.end method

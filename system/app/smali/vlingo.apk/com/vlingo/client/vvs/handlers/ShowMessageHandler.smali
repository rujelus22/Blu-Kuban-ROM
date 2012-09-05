.class public Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;
.super Ljava/lang/Object;
.source "ShowMessageHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# static fields
.field static final CODE_WEBSEARCH_NOT_SUPPORTED:Ljava/lang/String; = "WebsearchNotSupported"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;)Landroid/content/Intent;
    .registers 3
    .parameter "action"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 14
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 26
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/core/asr/RecognitionManager;->getMessageDialog()Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    move-result-object v4

    .line 27
    .local v4, msgDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;
    const-string v7, "Type"

    invoke-virtual {p1, v7}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, typeStr:Ljava/lang/String;
    const-string v7, "Message"

    invoke-virtual {p1, v7}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, msg:Ljava/lang/String;
    const-string v7, "yesnodialog"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 32
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/vlingo/client/ui/YesNoDialogActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "Type"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v7, "Message"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v7, "Title"

    const-string v8, "Title"

    invoke-virtual {p1, v8}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v7, "YesButtonLabel"

    const-string v8, "YesButtonLabel"

    invoke-virtual {p1, v8}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v7, "YesButtonAction"

    const-string v8, "YesButtonAction"

    invoke-virtual {p1, v8}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v7, "NoButtonLabel"

    const-string v8, "NoButtonLabel"

    invoke-virtual {p1, v8}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v7, "NoButtonAction"

    const-string v8, "NoButtonAction"

    invoke-virtual {p1, v8}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .end local v2           #intent:Landroid/content/Intent;
    :goto_68
    return-object v2

    .line 47
    :cond_69
    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b2

    .line 48
    const/4 v5, 0x4

    .line 51
    .local v5, type:I
    :goto_72
    const-string v7, "Code"

    invoke-virtual {p1, v7}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, codeStr:Ljava/lang/String;
    if-eqz v3, :cond_a9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a9

    .line 54
    const/4 v7, 0x4

    if-ne v5, v7, :cond_a9

    .line 55
    const-string v7, "Detail"

    invoke-virtual {p1, v7}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, detail:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v7

    const-string v8, "SVR2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->errorDisplayed(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v1           #detail:Ljava/lang/String;
    :cond_a9
    invoke-virtual {p0, v3, v6, v0}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;->localizeMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-interface {v4, v3, v0, v5}, Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;->displayMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    const/4 v2, 0x0

    goto :goto_68

    .line 50
    .end local v0           #codeStr:Ljava/lang/String;
    .end local v5           #type:I
    :cond_b2
    const/4 v5, 0x3

    .restart local v5       #type:I
    goto :goto_72
.end method

.method protected localizeMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "msg"
    .parameter "type"
    .parameter "code"

    .prologue
    .line 73
    const-string v0, "error"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "WebsearchNotSupported"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 74
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0903d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 76
    :cond_1f
    return-object p1
.end method

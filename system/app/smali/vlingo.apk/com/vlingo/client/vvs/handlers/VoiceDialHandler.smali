.class public Lcom/vlingo/client/vvs/handlers/VoiceDialHandler;
.super Ljava/lang/Object;
.source "VoiceDialHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 13
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 20
    const-string v5, "To"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, address:Ljava/lang/String;
    const-string v5, "Confidence"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, confString:Ljava/lang/String;
    const-string v5, "PhoneType"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, phoneTypeString:Ljava/lang/String;
    const/high16 v2, 0x42c8

    .line 24
    .local v2, confidence:F
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_23

    .line 25
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 30
    :cond_23
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.vlingo.client.action"

    const-string v6, "call"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    if-eqz v4, :cond_9f

    .line 36
    const-string v5, "work"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 37
    const-string v5, "com.vlingo.client.phoneTypes"

    new-array v6, v8, [I

    const/4 v7, 0x3

    aput v7, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 53
    :goto_49
    const-string v5, "query"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v5, "com.vlingo.client.autodialcountdown.enabled"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    const-string v5, "com.vlingo.client.autodialcountdown.msec"

    const/16 v6, 0xfa0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    const-string v5, "com.vlingo.client.confidenceScore"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 59
    if-eqz v0, :cond_a9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a9

    .line 60
    const-string v5, "call"

    invoke-virtual {p2, v5}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2, v0}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 67
    :goto_6f
    return-object v3

    .line 39
    :cond_70
    const-string v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 40
    const-string v5, "com.vlingo.client.phoneTypes"

    new-array v6, v8, [I

    const/4 v7, 0x2

    aput v7, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_49

    .line 42
    :cond_83
    const-string v5, "home"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 43
    const-string v5, "com.vlingo.client.phoneTypes"

    new-array v6, v8, [I

    aput v8, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_49

    .line 46
    :cond_95
    const-string v5, "com.vlingo.client.phoneTypes"

    new-array v6, v8, [I

    aput v7, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_49

    .line 50
    :cond_9f
    const-string v5, "com.vlingo.client.phoneTypes"

    new-array v6, v8, [I

    aput v7, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_49

    .line 64
    :cond_a9
    const-string v5, "call"

    invoke-virtual {p2, v5}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    goto :goto_6f
.end method

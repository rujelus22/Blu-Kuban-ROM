.class public Lcom/vlingo/client/vvs/handlers/SMSHandler;
.super Ljava/lang/Object;
.source "SMSHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# static fields
.field private static res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/vvs/handlers/SMSHandler;->res:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 15
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 25
    const-string v6, "To"

    invoke-virtual {p1, v6}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, address:Ljava/lang/String;
    const-string v6, "Message"

    invoke-virtual {p1, v6}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    .local v5, smsText:Ljava/lang/String;
    const-string v6, "Confidence"

    invoke-virtual {p1, v6}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, confString:Ljava/lang/String;
    const-string v6, "PhoneType"

    invoke-virtual {p1, v6}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, phoneTypeString:Ljava/lang/String;
    const/high16 v2, 0x42c8

    .line 31
    .local v2, confidence:F
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_29

    .line 32
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 34
    :cond_29
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "com.vlingo.client.action"

    const-string v7, "sms"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v6, "query"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v6, "com.vlingo.client.message"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v6, "com.vlingo.client.confidenceScore"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 42
    const-string v6, "com.vlingo.client.title"

    sget-object v7, Lcom/vlingo/client/vvs/handlers/SMSHandler;->res:Landroid/content/res/Resources;

    const v8, 0x7f090273

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    if-eqz v4, :cond_be

    .line 44
    const-string v6, "work"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 45
    const-string v6, "com.vlingo.client.phoneTypes"

    new-array v7, v9, [I

    const/4 v8, 0x3

    aput v8, v7, v10

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 61
    :goto_6c
    if-eqz v0, :cond_c8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c8

    .line 62
    sget-object v6, Lcom/vlingo/client/vvs/handlers/SMSHandler;->res:Landroid/content/res/Resources;

    const v7, 0x7f090276

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2, v0}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 64
    if-eqz v5, :cond_8e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8e

    .line 65
    invoke-virtual {p2, v5}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 71
    :cond_8e
    :goto_8e
    return-object v3

    .line 47
    :cond_8f
    const-string v6, "mobile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 48
    const-string v6, "com.vlingo.client.phoneTypes"

    new-array v7, v9, [I

    const/4 v8, 0x2

    aput v8, v7, v10

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_6c

    .line 50
    :cond_a2
    const-string v6, "home"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 51
    const-string v6, "com.vlingo.client.phoneTypes"

    new-array v7, v9, [I

    aput v9, v7, v10

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_6c

    .line 54
    :cond_b4
    const-string v6, "com.vlingo.client.phoneTypes"

    new-array v7, v9, [I

    aput v11, v7, v10

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_6c

    .line 58
    :cond_be
    const-string v6, "com.vlingo.client.phoneTypes"

    new-array v7, v9, [I

    aput v11, v7, v10

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_6c

    .line 69
    :cond_c8
    sget-object v6, Lcom/vlingo/client/vvs/handlers/SMSHandler;->res:Landroid/content/res/Resources;

    const v7, 0x7f090277

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    goto :goto_8e
.end method

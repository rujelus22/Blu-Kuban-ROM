.class public Lcom/vlingo/client/vvs/handlers/RedialHandler;
.super Ljava/lang/Object;
.source "RedialHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRedialContactName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "context"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/vlingo/client/util/ContactUtil;->getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, lastCall:Ljava/lang/String;
    if-eqz v3, :cond_e

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 70
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/vlingo/client/util/ActivityUtil;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 71
    const/4 v2, 0x0

    .line 80
    :cond_1d
    :goto_1d
    return-object v2

    .line 73
    :cond_1e
    const-wide/16 v0, -0x1

    .line 74
    .local v0, contactId:J
    invoke-static {p0, v3}, Lcom/vlingo/client/util/ContactUtil;->getPersonIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 76
    move-object v2, v3

    .line 77
    .local v2, contactName:Ljava/lang/String;
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v0

    if-eqz v4, :cond_1d

    .line 78
    invoke-static {v0, v1, p0}, Lcom/vlingo/client/util/ContactUtil;->getContactFullName(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d
.end method

.method public static getRedialPhoneType(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "context"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/vlingo/client/util/ContactUtil;->getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, lastCall:Ljava/lang/String;
    if-eqz v2, :cond_e

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 87
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/vlingo/client/util/ActivityUtil;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 88
    const/4 v3, 0x0

    .line 97
    :cond_1d
    :goto_1d
    return-object v3

    .line 90
    :cond_1e
    const-wide/16 v0, -0x1

    .line 91
    .local v0, contactId:J
    invoke-static {p0, v2}, Lcom/vlingo/client/util/ContactUtil;->getPersonIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 93
    const-string v3, "unknown"

    .line 94
    .local v3, phoneType:Ljava/lang/String;
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v0

    if-eqz v4, :cond_1d

    .line 95
    invoke-static {p0, v0, v1, v2}, Lcom/vlingo/client/util/ContactUtil;->getPhoneTypeForContactId(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1d
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 13
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    const v9, 0x7f090435

    const v8, 0x7f0900e3

    .line 23
    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 24
    .local v4, context:Landroid/content/Context;
    invoke-static {v4}, Lcom/vlingo/client/util/ContactUtil;->getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, lastCall:Ljava/lang/String;
    if-eqz v5, :cond_18

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 27
    :cond_18
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/vlingo/client/util/ActivityUtil;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    .line 63
    :cond_2f
    :goto_2f
    return-object v0

    .line 32
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/vlingo/client/contacts/AutoDialActivity;

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, autoDial:Landroid/content/Intent;
    const-string v7, "com.vlingo.client.autodial.address"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v7, "com.vlingo.client.autodialRedial"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    const/high16 v7, 0x4008

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090348

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 40
    const-wide/16 v1, -0x1

    .line 41
    .local v1, contactId:J
    invoke-static {v4, v5}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getPersonIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 43
    const-string v7, "com.vlingo.client.autodial.contact_id"

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 44
    const-wide/16 v7, -0x1

    cmp-long v7, v7, v1

    if-nez v7, :cond_72

    .line 45
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    goto :goto_2f

    .line 49
    :cond_72
    invoke-static {v1, v2, v4}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getContactFullName(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, contactName:Ljava/lang/String;
    invoke-static {v4, v1, v2, v5}, Lcom/vlingo/client/util/ContactUtil;->getPhoneTypeForContactId(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, phoneType:Ljava/lang/String;
    if-eqz v3, :cond_9f

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9f

    .line 53
    invoke-virtual {p2, v3}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 54
    const-string v7, "com.vlingo.client.autodial.name"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    if-eqz v6, :cond_2f

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 56
    invoke-virtual {p2, v6}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    .line 57
    const-string v7, "com.vlingo.client.autodial.address_type"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f

    .line 60
    :cond_9f
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/vlingo/client/vvs/VVSDispatcher;->addTTS(Ljava/lang/String;)V

    goto :goto_2f
.end method

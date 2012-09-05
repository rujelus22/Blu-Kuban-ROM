.class public Lcom/vlingo/client/vvs/handlers/AddressBookHandler;
.super Ljava/lang/Object;
.source "AddressBookHandler.java"

# interfaces
.implements Lcom/vlingo/client/vvs/VVSActionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 8
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 24
    const-string v3, "Action"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, actionStr:Ljava/lang/String;
    const-string v3, "Query"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, query:Ljava/lang/String;
    const/4 v1, 0x0

    .line 29
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "open"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 30
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vlingo/client/contacts/ViewContactActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.vlingo.client.contacts.EXTRA_CONTACT_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    :cond_25
    return-object v1
.end method

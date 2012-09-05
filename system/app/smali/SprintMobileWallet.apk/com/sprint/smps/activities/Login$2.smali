.class Lcom/sprint/smps/activities/Login$2;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/Login;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/Login;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/Login;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/Login$2;->this$0:Lcom/sprint/smps/activities/Login;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 277
    iget-object v5, p0, Lcom/sprint/smps/activities/Login$2;->this$0:Lcom/sprint/smps/activities/Login;

    const v6, 0x7f080024

    invoke-virtual {v5, v6}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, mobileNumber:Ljava/lang/String;
    iget-object v5, p0, Lcom/sprint/smps/activities/Login$2;->this$0:Lcom/sprint/smps/activities/Login;

    const v6, 0x7f08002c

    invoke-virtual {v5, v6}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, password:Ljava/lang/String;
    sget-object v5, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-interface {v5, v1, v2}, Lcom/sprint/smps/service/SMPSService;->authenticateUserClientWallet(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v3

    .line 281
    .local v3, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v3, :cond_71

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 283
    sput-object v1, Lcom/sprint/smps/properties/Properties;->accountNumber:Ljava/lang/String;

    .line 284
    sput-object v3, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    .line 286
    new-instance v4, Lcom/sprint/smps/activities/Login$2$1;

    invoke-direct {v4, p0}, Lcom/sprint/smps/activities/Login$2$1;-><init>(Lcom/sprint/smps/activities/Login$2;)V

    .line 292
    .local v4, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/sprint/smps/activities/Login;->access$0()Lcom/sprint/smps/activities/Login;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sprint/smps/activities/Login;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    invoke-static {}, Lcom/sprint/smps/activities/Login;->access$0()Lcom/sprint/smps/activities/Login;

    move-result-object v5

    const v6, 0x7f030010

    const-class v7, Lcom/sprint/smps/activities/MainMenu;

    invoke-static {v5, v6, v7}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 295
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_61

    invoke-static {}, Lcom/sprint/smps/activities/Login;->access$0()Lcom/sprint/smps/activities/Login;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sprint/smps/activities/Login;->startActivity(Landroid/content/Intent;)V

    .line 298
    :cond_61
    const/4 v5, 0x1

    sput-boolean v5, Lcom/sprint/smps/properties/Properties;->loggedIn:Z

    .line 299
    invoke-static {}, Lcom/sprint/smps/activities/Login;->access$0()Lcom/sprint/smps/activities/Login;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sprint/smps/activities/Login;->removeDialog(I)V

    .line 300
    const-string v5, "Login"

    invoke-static {v5}, Lcom/sprint/smps/activities/ActivityHelper;->dismissAllActivitiesBut(Ljava/lang/String;)V

    .line 312
    .end local v0           #intent:Landroid/content/Intent;
    .end local v4           #runnable:Ljava/lang/Runnable;
    :goto_70
    return-void

    .line 306
    :cond_71
    const-string v5, "Invalid PIN."

    invoke-static {v5}, Lcom/sprint/smps/activities/Login;->access$2(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getErrorDesc()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_83

    .line 308
    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getErrorDesc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sprint/smps/activities/Login;->access$2(Ljava/lang/String;)V

    .line 310
    :cond_83
    invoke-static {}, Lcom/sprint/smps/activities/Login;->access$0()Lcom/sprint/smps/activities/Login;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sprint/smps/activities/Login;->removeDialog(I)V

    goto :goto_70
.end method

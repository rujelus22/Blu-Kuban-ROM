.class Lcom/sprint/smps/SMPSClient$SMPSStartup$1;
.super Ljava/lang/Object;
.source "SMPSClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/SMPSClient$SMPSStartup;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/SMPSClient$SMPSStartup;


# direct methods
.method constructor <init>(Lcom/sprint/smps/SMPSClient$SMPSStartup;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->this$1:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup$1;)Lcom/sprint/smps/SMPSClient$SMPSStartup;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->this$1:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    return-object v0
.end method

.method private mustBeOn3gNetwork()V
    .registers 5

    .prologue
    .line 89
    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$3()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/smps/service/ClientResponse;->getErrorDesc()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, msg:Ljava/lang/String;
    new-instance v0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$1;-><init>(Lcom/sprint/smps/SMPSClient$SMPSStartup$1;)V

    .line 97
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->this$1:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    #getter for: Lcom/sprint/smps/SMPSClient$SMPSStartup;->this$0:Lcom/sprint/smps/SMPSClient;
    invoke-static {v2}, Lcom/sprint/smps/SMPSClient$SMPSStartup;->access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup;)Lcom/sprint/smps/SMPSClient;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Lcom/sprint/smps/SMPSClient;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$0()Lcom/sprint/smps/SMPSClient;

    move-result-object v3

    invoke-static {v2, v1, v3, v0}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 98
    return-void
.end method

.method private mustDoUpgrade()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 115
    new-instance v5, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$3;

    invoke-direct {v5, p0}, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$3;-><init>(Lcom/sprint/smps/SMPSClient$SMPSStartup$1;)V

    .line 123
    .local v5, listener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->this$1:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    #getter for: Lcom/sprint/smps/SMPSClient$SMPSStartup;->this$0:Lcom/sprint/smps/SMPSClient;
    invoke-static {v0}, Lcom/sprint/smps/SMPSClient$SMPSStartup;->access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup;)Lcom/sprint/smps/SMPSClient;

    move-result-object v0

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Lcom/sprint/smps/SMPSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->this$1:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    #getter for: Lcom/sprint/smps/SMPSClient$SMPSStartup;->this$0:Lcom/sprint/smps/SMPSClient;
    invoke-static {v1}, Lcom/sprint/smps/SMPSClient$SMPSStartup;->access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup;)Lcom/sprint/smps/SMPSClient;

    move-result-object v1

    const v3, 0x7f060019

    invoke-virtual {v1, v3}, Lcom/sprint/smps/SMPSClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$0()Lcom/sprint/smps/SMPSClient;

    move-result-object v4

    const/4 v6, 0x1

    move-object v3, v2

    invoke-static/range {v0 .. v6}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 124
    return-void
.end method

.method private serverError()V
    .registers 6

    .prologue
    .line 103
    new-instance v0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$2;-><init>(Lcom/sprint/smps/SMPSClient$SMPSStartup$1;)V

    .line 109
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "Server Error"

    iget-object v2, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->this$1:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    #getter for: Lcom/sprint/smps/SMPSClient$SMPSStartup;->this$0:Lcom/sprint/smps/SMPSClient;
    invoke-static {v2}, Lcom/sprint/smps/SMPSClient$SMPSStartup;->access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup;)Lcom/sprint/smps/SMPSClient;

    move-result-object v2

    const v3, 0x7f060017

    invoke-virtual {v2, v3}, Lcom/sprint/smps/SMPSClient;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$0()Lcom/sprint/smps/SMPSClient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 110
    return-void
.end method

.method private wantToDoUpgrade()V
    .registers 7

    .prologue
    .line 129
    new-instance v5, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$4;

    invoke-direct {v5, p0}, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$4;-><init>(Lcom/sprint/smps/SMPSClient$SMPSStartup$1;)V

    .line 142
    .local v5, listener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->this$1:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    #getter for: Lcom/sprint/smps/SMPSClient$SMPSStartup;->this$0:Lcom/sprint/smps/SMPSClient;
    invoke-static {v0}, Lcom/sprint/smps/SMPSClient$SMPSStartup;->access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup;)Lcom/sprint/smps/SMPSClient;

    move-result-object v0

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Lcom/sprint/smps/SMPSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->this$1:Lcom/sprint/smps/SMPSClient$SMPSStartup;

    #getter for: Lcom/sprint/smps/SMPSClient$SMPSStartup;->this$0:Lcom/sprint/smps/SMPSClient;
    invoke-static {v1}, Lcom/sprint/smps/SMPSClient$SMPSStartup;->access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup;)Lcom/sprint/smps/SMPSClient;

    move-result-object v1

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Lcom/sprint/smps/SMPSClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Upgrade"

    const-string v3, "Cancel"

    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$0()Lcom/sprint/smps/SMPSClient;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 143
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$3()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 63
    invoke-direct {p0}, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->mustBeOn3gNetwork()V

    .line 83
    :goto_14
    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$0()Lcom/sprint/smps/SMPSClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/SMPSClient;->deleteDialog(I)V

    .line 84
    return-void

    .line 66
    :cond_1c
    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$3()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getErrorNo()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 67
    invoke-direct {p0}, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->serverError()V

    goto :goto_14

    .line 70
    :cond_30
    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$3()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$3()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x1

    :goto_47
    sput-boolean v0, Lcom/sprint/smps/properties/Properties;->registered:Z

    .line 75
    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$3()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$3()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->mustDoUpgrade()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 76
    invoke-direct {p0}, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->mustDoUpgrade()V

    goto :goto_14

    :cond_5d
    move v0, v1

    .line 70
    goto :goto_47

    .line 77
    :cond_5f
    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$3()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$3()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->doUpgrade()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 78
    invoke-direct {p0}, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->wantToDoUpgrade()V

    goto :goto_14

    .line 80
    :cond_73
    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$0()Lcom/sprint/smps/SMPSClient;

    move-result-object v0

    #calls: Lcom/sprint/smps/SMPSClient;->showWelcome()V
    invoke-static {v0}, Lcom/sprint/smps/SMPSClient;->access$4(Lcom/sprint/smps/SMPSClient;)V

    goto :goto_14
.end method

.class Lcom/sprint/smps/SMPSClient$SMPSStartup$1$3;
.super Ljava/lang/Object;
.source "SMPSClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->mustDoUpgrade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sprint/smps/SMPSClient$SMPSStartup$1;


# direct methods
.method constructor <init>(Lcom/sprint/smps/SMPSClient$SMPSStartup$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$3;->this$2:Lcom/sprint/smps/SMPSClient$SMPSStartup$1;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$3;->this$2:Lcom/sprint/smps/SMPSClient$SMPSStartup$1;

    #getter for: Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->this$1:Lcom/sprint/smps/SMPSClient$SMPSStartup;
    invoke-static {v2}, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup$1;)Lcom/sprint/smps/SMPSClient$SMPSStartup;

    move-result-object v2

    #getter for: Lcom/sprint/smps/SMPSClient$SMPSStartup;->this$0:Lcom/sprint/smps/SMPSClient;
    invoke-static {v2}, Lcom/sprint/smps/SMPSClient$SMPSStartup;->access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup;)Lcom/sprint/smps/SMPSClient;

    move-result-object v2

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Lcom/sprint/smps/SMPSClient;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v0, marketplace:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1$3;->this$2:Lcom/sprint/smps/SMPSClient$SMPSStartup$1;

    #getter for: Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->this$1:Lcom/sprint/smps/SMPSClient$SMPSStartup;
    invoke-static {v1}, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;->access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup$1;)Lcom/sprint/smps/SMPSClient$SMPSStartup;

    move-result-object v1

    #getter for: Lcom/sprint/smps/SMPSClient$SMPSStartup;->this$0:Lcom/sprint/smps/SMPSClient;
    invoke-static {v1}, Lcom/sprint/smps/SMPSClient$SMPSStartup;->access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup;)Lcom/sprint/smps/SMPSClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sprint/smps/SMPSClient;->startActivity(Landroid/content/Intent;)V

    .line 120
    const-string v1, ""

    invoke-static {v1}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivities(Ljava/lang/String;)V

    .line 121
    return-void
.end method

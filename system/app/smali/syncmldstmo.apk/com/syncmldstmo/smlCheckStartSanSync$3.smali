.class Lcom/syncmldstmo/smlCheckStartSanSync$3;
.super Ljava/lang/Object;
.source "smlCheckStartSanSync.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smlCheckStartSanSync;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlCheckStartSanSync;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlCheckStartSanSync;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/syncmldstmo/smlCheckStartSanSync$3;->this$0:Lcom/syncmldstmo/smlCheckStartSanSync;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 42
    const-string v1, "Sync Start"

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlGetRomingState()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 45
    const-string v1, "Roming true..."

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 46
    invoke-static {v2}, Lcom/syncmldstmo/base/smlAgent;->smlSetBackgroundState(Z)V

    .line 47
    invoke-static {v2}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetRoamingUI(Z)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/syncmldstmo/smlCheckStartSanSync$3;->this$0:Lcom/syncmldstmo/smlCheckStartSanSync;

    invoke-virtual {v1}, Lcom/syncmldstmo/smlCheckStartSanSync;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/syncmldstmo/smlCheckRoaming;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/syncmldstmo/smlCheckStartSanSync$3;->this$0:Lcom/syncmldstmo/smlCheckStartSanSync;

    invoke-virtual {v1}, Lcom/syncmldstmo/smlCheckStartSanSync;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 60
    .end local v0           #i:Landroid/content/Intent;
    :goto_3a
    iget-object v1, p0, Lcom/syncmldstmo/smlCheckStartSanSync$3;->this$0:Lcom/syncmldstmo/smlCheckStartSanSync;

    invoke-virtual {v1}, Lcom/syncmldstmo/smlCheckStartSanSync;->finish()V

    .line 61
    return-void

    .line 56
    :cond_40
    invoke-static {v2}, Lcom/syncmldstmo/base/smlAgent;->setSyncStart(Z)V

    .line 57
    invoke-static {v2}, Lcom/syncmldstmo/base/smlAgent;->smlSetBackgroundState(Z)V

    .line 58
    invoke-static {v3, v4, v4}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3a
.end method

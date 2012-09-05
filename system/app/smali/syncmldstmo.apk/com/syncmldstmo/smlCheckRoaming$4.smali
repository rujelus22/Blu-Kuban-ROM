.class Lcom/syncmldstmo/smlCheckRoaming$4;
.super Ljava/lang/Object;
.source "smlCheckRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smlCheckRoaming;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlCheckRoaming;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlCheckRoaming;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/syncmldstmo/smlCheckRoaming$4;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetRoamingUI(Z)V

    .line 45
    iget-object v0, p0, Lcom/syncmldstmo/smlCheckRoaming$4;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/smlCheckRoaming;->removeDialog(I)V

    .line 46
    iget-object v0, p0, Lcom/syncmldstmo/smlCheckRoaming$4;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlCheckRoaming;->finish()V

    .line 48
    invoke-static {}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlIsRoamingChecked()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 50
    sget-object v0, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    :cond_1d
    :goto_1d
    return-void

    .line 52
    :cond_1e
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getSyncStart()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 54
    sget-object v0, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1d

    .line 58
    :cond_2c
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/syncmldstmo/base/smlAgent;->setSyncStart(Z)V

    .line 59
    const/16 v0, 0x20

    invoke-static {v0, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->smlGetBackgroundState()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 61
    iget-object v0, p0, Lcom/syncmldstmo/smlCheckRoaming$4;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    #calls: Lcom/syncmldstmo/smlCheckRoaming;->smluiStartSync()V
    invoke-static {v0}, Lcom/syncmldstmo/smlCheckRoaming;->access$000(Lcom/syncmldstmo/smlCheckRoaming;)V

    goto :goto_1d
.end method

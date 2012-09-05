.class public Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AddAccountEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/account/AddAccountEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/AddAccountEdit;


# direct methods
.method public constructor <init>(Lcom/infraware/common/account/AddAccountEdit;)V
    .registers 2
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 464
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 467
    const-string v1, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 468
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #getter for: Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AddAccountEdit;->access$8(Lcom/infraware/common/account/AddAccountEdit;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 469
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #getter for: Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AddAccountEdit;->access$8(Lcom/infraware/common/account/AddAccountEdit;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 470
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    #getter for: Lcom/infraware/common/account/AddAccountEdit;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/account/AddAccountEdit;->access$8(Lcom/infraware/common/account/AddAccountEdit;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 472
    :cond_2b
    iget-object v1, p0, Lcom/infraware/common/account/AddAccountEdit$CloseReceiver;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v1, v1, Lcom/infraware/common/account/AddAccountEdit;->mEventHandler:Landroid/os/Handler;

    const/16 v2, 0x190

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 475
    :cond_36
    return-void
.end method

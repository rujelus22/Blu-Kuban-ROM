.class public Lcom/infraware/common/setting/SettingActivity$CloseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/setting/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/setting/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/common/setting/SettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_92

    .line 274
    const-string v1, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 275
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$1(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 276
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$1(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 277
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$1(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 279
    :cond_2b
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$2(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 280
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$2(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 281
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$2(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 283
    :cond_48
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$3(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 284
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$3(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 286
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/infraware/common/setting/SettingActivity;->onStopService(I)Z

    .line 287
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$3(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 289
    :cond_6b
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$4(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 290
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$4(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 291
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #getter for: Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$4(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 294
    :cond_88
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    #calls: Lcom/infraware/common/setting/SettingActivity;->setSettingValue()V
    invoke-static {v1}, Lcom/infraware/common/setting/SettingActivity;->access$5(Lcom/infraware/common/setting/SettingActivity;)V

    .line 295
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;->this$0:Lcom/infraware/common/setting/SettingActivity;

    invoke-virtual {v1}, Lcom/infraware/common/setting/SettingActivity;->finish()V

    .line 298
    :cond_92
    return-void
.end method

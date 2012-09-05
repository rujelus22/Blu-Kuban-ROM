.class Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;
.super Ljava/lang/Object;
.source "PopUpSearchDeviceList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

.field final synthetic val$device:Lcom/samsung/api/DeviceItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;Lcom/samsung/api/DeviceItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iput-object p2, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->val$device:Lcom/samsung/api/DeviceItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 214
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->stopVirtualRenderer()V

    .line 216
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentVirtualRenderer()Lcom/sec/android/app/dlna/playback/IVirtualRenderer;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/dlna/playback/IVirtualRenderer;->startRenderer()V

    .line 218
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->isMyPlayerSelected()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #calls: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->clearDimState()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$200(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V

    .line 222
    :cond_2b
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setMyPlayerSelected(Z)V

    .line 224
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->val$device:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0, v1}, Lcom/samsung/api/DeviceItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #calls: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->clearDimState()V
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$200(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V

    .line 229
    :cond_54
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 230
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->val$device:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->selectPlayer(Lcom/samsung/api/DeviceItem;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$300(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$300(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$300(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 235
    :cond_8a
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v2, v2, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    const-class v3, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->startActivity(Landroid/content/Intent;)V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->finish()V

    .line 247
    :goto_a9
    return-void

    .line 242
    :cond_aa
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$300(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$300(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->access$300(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 245
    :cond_cd
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1$1;->this$1:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->mGuiHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a9
.end method

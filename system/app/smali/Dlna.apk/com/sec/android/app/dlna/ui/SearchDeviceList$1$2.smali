.class Lcom/sec/android/app/dlna/ui/SearchDeviceList$1$2;
.super Ljava/lang/Object;
.source "SearchDeviceList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;

.field final synthetic val$device:Lcom/samsung/api/DeviceItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;Lcom/samsung/api/DeviceItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1$2;->this$1:Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;

    iput-object p2, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1$2;->val$device:Lcom/samsung/api/DeviceItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestStop()Z

    .line 176
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 182
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1$2;->val$device:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->selectServer(Lcom/samsung/api/DeviceItem;)Z

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1$2;->this$1:Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1$2;->this$1:Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;

    iget-object v2, v2, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    const-class v3, Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1$2;->this$1:Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;

    iget-object v2, v2, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

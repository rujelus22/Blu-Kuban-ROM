.class Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;
.super Ljava/lang/Object;
.source "SearchDeviceList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/SearchDeviceList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$000(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    #getter for: Lcom/sec/android/app/dlna/ui/SearchDeviceList;->mode:I
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->access$100(Lcom/sec/android/app/dlna/ui/SearchDeviceList;)I

    move-result v1

    packed-switch v1, :pswitch_data_a8

    .line 207
    :goto_15
    return-void

    .line 162
    :pswitch_16
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-eqz v1, :cond_7d

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/api/DeviceItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v1

    if-lez v1, :cond_7d

    .line 165
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    const v3, 0x7f090074

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1$2;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1$2;-><init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;Lcom/samsung/api/DeviceItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1$1;-><init>(Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_15

    .line 200
    :cond_7d
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/DLNAManager;->selectServer(Lcom/samsung/api/DeviceItem;)Z

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    const-class v3, Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/SearchDeviceList$1;->this$0:Lcom/sec/android/app/dlna/ui/SearchDeviceList;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/SearchDeviceList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_15

    .line 160
    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_16
    .end packed-switch
.end method

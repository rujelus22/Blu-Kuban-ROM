.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;
.super Ljava/lang/Object;
.source "MediaExplorerList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/MediaExplorerList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 2
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f090039

    const/4 v5, 0x0

    .line 694
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsList:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$1900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 696
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isChecked()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 697
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_51

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_51
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 702
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 705
    :cond_69
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_bc

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 707
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a8

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsListView:Lcom/sec/android/app/dlna/view/MultiSelectListView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Lcom/sec/android/app/dlna/view/MultiSelectListView;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MultiSelectListView;->softKey:Lcom/sec/android/app/dlna/view/BottomSoftkeyView;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->setLeftEnabled(Z)V

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const-class v3, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MODE"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->startActivity(Landroid/content/Intent;)V

    .line 739
    :goto_a7
    return-void

    .line 713
    :cond_a8
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a7

    .line 719
    :cond_bc
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c8

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #calls: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->showDownloadProgressDialog(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2400(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Ljava/util/ArrayList;)V

    goto :goto_a7

    .line 722
    :cond_c8
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$4;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-static {v0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a7
.end method

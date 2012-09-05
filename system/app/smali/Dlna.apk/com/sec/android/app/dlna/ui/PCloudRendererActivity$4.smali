.class Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$4;
.super Ljava/lang/Object;
.source "PCloudRendererActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    .line 162
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/DLNAManager;->selectPlayer(Lcom/samsung/api/DeviceItem;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 163
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/model/Playlist;->setCurrentPlayItem(I)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    const-class v2, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$4;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->finish()V

    .line 169
    :cond_3f
    return-void
.end method

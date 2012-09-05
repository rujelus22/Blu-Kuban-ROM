.class Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;
.super Ljava/lang/Object;
.source "PCloudContentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v2, 0xce

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$400(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 324
    .local v0, playItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$502(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;Lcom/sec/android/app/dlna/model/PlaylistItem;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPosition:I
    invoke-static {v1, p3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$602(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;I)I

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$700(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    :cond_41
    :goto_41
    return-void

    .line 331
    :cond_42
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-nez v1, :cond_66

    if-eqz v0, :cond_66

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$502(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;Lcom/sec/android/app/dlna/model/PlaylistItem;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPosition:I
    invoke-static {v1, p3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$602(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;I)I

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$700(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 337
    :cond_66
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$502(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;Lcom/sec/android/app/dlna/model/PlaylistItem;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 340
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mPosition:I
    invoke-static {v1, p3}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$602(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;I)I

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$11;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$700(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41
.end method

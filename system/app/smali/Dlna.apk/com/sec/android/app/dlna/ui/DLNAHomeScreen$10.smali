.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$10;
.super Ljava/lang/Object;
.source "DLNAHomeScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$10;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

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

    .line 357
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$10;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$400(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 359
    .local v0, playItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$10;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #setter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$502(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;Lcom/sec/android/app/dlna/model/PlaylistItem;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 363
    invoke-static {p3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$602(I)I

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$10;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$700(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    :cond_3f
    :goto_3f
    return-void

    .line 365
    :cond_40
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-nez v1, :cond_3f

    if-eqz v0, :cond_3f

    .line 367
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$10;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #setter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$502(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;Lcom/sec/android/app/dlna/model/PlaylistItem;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 368
    invoke-static {p3}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$602(I)I

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$10;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$700(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3f
.end method

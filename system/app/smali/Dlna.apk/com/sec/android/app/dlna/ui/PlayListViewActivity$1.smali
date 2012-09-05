.class Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;
.super Ljava/lang/Object;
.source "PlayListViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
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
    const-wide/16 v6, 0x7d0

    const/16 v2, 0xce

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$000(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 80
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->isMyPlayerSelected()Z

    move-result v1

    if-eqz v1, :cond_1fc

    .line 81
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-eqz v1, :cond_116

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_116

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.dlna.player_started"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playItNowDMP(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 87
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v1

    if-ne v1, v5, :cond_f2

    .line 88
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    const-class v3, Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    :goto_6e
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media File Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v2, "contentID"

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v2, "mediaName"

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v2, "uri"

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v2, "classtype"

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v0, "extension"

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    :cond_ec
    :goto_ec
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->finish()V

    .line 149
    :goto_f1
    return-void

    .line 89
    :cond_f2
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v1

    if-ne v1, v4, :cond_10b

    .line 91
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    const-class v3, Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_6e

    .line 93
    :cond_10b
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    const-class v3, Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_6e

    .line 107
    :cond_116
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-nez v1, :cond_ec

    if-eqz v0, :cond_ec

    .line 109
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.app.dlna.player_started"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playItNowDMP(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 112
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v1

    if-ne v1, v5, :cond_1d8

    .line 113
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    const-class v3, Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    :goto_158
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media File Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v2, "contentID"

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v2, "mediaName"

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v2, "uri"

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v2, "classtype"

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v0, "extension"

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_ec

    .line 114
    :cond_1d8
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentPlayListType()I

    move-result v1

    if-ne v1, v4, :cond_1f1

    .line 116
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    const-class v3, Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_158

    .line 118
    :cond_1f1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    const-class v3, Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_158

    .line 135
    :cond_1fc
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-eqz v1, :cond_236

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_236

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$102(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;Lcom/sec/android/app/dlna/model/PlaylistItem;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPosition:I
    invoke-static {v0, p3}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$202(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;I)I

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$300(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    :cond_22f
    :goto_22f
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->finish()V

    goto/16 :goto_f1

    .line 141
    :cond_236
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    if-nez v1, :cond_22f

    if-eqz v0, :cond_22f

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPlayItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v1, v0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$102(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;Lcom/sec/android/app/dlna/model/PlaylistItem;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #setter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mPosition:I
    invoke-static {v0, p3}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$202(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;I)I

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PlayListViewActivity$1;->this$0:Lcom/sec/android/app/dlna/ui/PlayListViewActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->mGuiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PlayListViewActivity;->access$300(Lcom/sec/android/app/dlna/ui/PlayListViewActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_22f
.end method

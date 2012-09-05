.class Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "AlbumViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/AlbumViewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/AlbumViewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAlbumComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetAlbumComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_23

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->access$000(Lcom/google/android/apps/plus/fragments/AlbumViewFragment;Landroid/view/View;)V

    .line 144
    :cond_23
    return-void
.end method

.method public onGetPhotoConsumptionStreamComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetPhotoConsumptionStreamComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_23

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->access$000(Lcom/google/android/apps/plus/fragments/AlbumViewFragment;Landroid/view/View;)V

    .line 154
    :cond_23
    return-void
.end method

.method public onGetPhotosOfUserComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetPhotosOfUserComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_23

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->access$000(Lcom/google/android/apps/plus/fragments/AlbumViewFragment;Landroid/view/View;)V

    .line 164
    :cond_23
    return-void
.end method

.method public onGetStreamPhotosComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetStreamPhotosComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_23

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->access$000(Lcom/google/android/apps/plus/fragments/AlbumViewFragment;Landroid/view/View;)V

    .line 174
    :cond_23
    return-void
.end method

.method public onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 7
    .parameter "ref"
    .parameter "bitmap"
    .parameter "type"
    .parameter "cropType"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 134
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AlbumViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/AlbumViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/AlbumViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;

    invoke-virtual {v1, v0, p1, p4, p2}, Lcom/google/android/apps/plus/phone/AlbumViewAdapter;->setThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;ILandroid/graphics/Bitmap;)V

    .line 135
    return-void
.end method

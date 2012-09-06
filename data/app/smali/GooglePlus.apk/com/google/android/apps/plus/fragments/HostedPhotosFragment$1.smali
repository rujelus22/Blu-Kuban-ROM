.class Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "HostedPhotosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

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
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_20

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$000(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;Landroid/view/View;)V

    .line 188
    :cond_20
    return-void
.end method

.method public onGetEventActivitiesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_20

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$000(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;Landroid/view/View;)V

    .line 179
    :cond_20
    return-void
.end method

.method public onGetPhotoConsumptionStreamComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_20

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$000(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;Landroid/view/View;)V

    .line 197
    :cond_20
    return-void
.end method

.method public onGetPhotosOfUserComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_20

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$000(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;Landroid/view/View;)V

    .line 206
    :cond_20
    return-void
.end method

.method public onGetStreamPhotosComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_20

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$000(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;Landroid/view/View;)V

    .line 215
    :cond_20
    return-void
.end method

.method public onLocalPhotoDelete(ILjava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;",
            "Lcom/google/android/apps/plus/service/ServiceResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->handlePhotosServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 230
    return-void
.end method

.method public onPhotoActionComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "action"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/apps/plus/service/ServiceResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    .local p4, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->handlePhotosServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p5}, Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedPhotosFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 222
    return-void
.end method

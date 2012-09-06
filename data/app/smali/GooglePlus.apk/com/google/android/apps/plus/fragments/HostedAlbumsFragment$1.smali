.class Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "HostedAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAlbumListComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_37

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mGaiaId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->access$000(Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getPhotosOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;Landroid/view/View;)V

    .line 93
    :cond_37
    return-void
.end method

.method public onGetPhotosOfUserComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_20

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;Landroid/view/View;)V

    .line 84
    :cond_20
    return-void
.end method

.method public onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 5
    .parameter "ref"
    .parameter "bitmap"
    .parameter "type"
    .parameter "cropType"

    .prologue
    .line 66
    return-void
.end method

.method public onPhotosHomeComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_37

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mGaiaId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->access$000(Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedAlbumsFragment;Landroid/view/View;)V

    .line 75
    :cond_37
    return-void
.end method

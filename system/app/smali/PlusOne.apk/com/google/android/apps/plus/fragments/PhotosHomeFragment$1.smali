.class Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "PhotosHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAlbumListComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 9
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_3d

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->access$000(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserId:J
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getPhotosOfUser(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;Landroid/view/View;)V

    .line 87
    :cond_3d
    return-void
.end method

.method public onGetPhotosOfUserComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_20

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;Landroid/view/View;)V

    .line 78
    :cond_20
    return-void
.end method

.method public onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 7
    .parameter "ref"
    .parameter "bitmap"
    .parameter "type"
    .parameter "cropType"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 59
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;

    invoke-virtual {v1, v0, p1, p4, p2}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->setCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;ILandroid/graphics/Bitmap;)V

    .line 60
    return-void
.end method

.method public onPhotosHomeComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 9
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_3d

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->access$000(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mUserId:J
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/service/EsService;->getAlbumList(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->updateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotosHomeFragment;Landroid/view/View;)V

    .line 69
    :cond_3d
    return-void
.end method

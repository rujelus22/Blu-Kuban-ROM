.class Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "PhotoPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;II)Z
    .registers 8
    .parameter "ref"
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 73
    if-eq p3, p4, :cond_4

    .line 85
    :cond_3
    :goto_3
    return v1

    .line 76
    :cond_4
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->access$000(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->access$000(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIsPhotoLoading:Z
    invoke-static {v2, v1}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->access$102(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;Z)Z

    .line 78
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;)Lcom/google/android/apps/plus/views/PhotoHeaderView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->bindPhoto(Landroid/graphics/Bitmap;)V

    .line 81
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->updateView(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->access$300(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;Landroid/view/View;)V

    .line 82
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 8
    .parameter "ref"
    .parameter "bitmap"
    .parameter "type"
    .parameter "cropType"

    .prologue
    .line 56
    if-eqz p4, :cond_3

    .line 68
    :cond_2
    :goto_2
    return-void

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->access$000(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->access$000(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;)Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mIsPhotoLoading:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->access$102(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;Z)Z

    .line 62
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;)Lcom/google/android/apps/plus/views/PhotoHeaderView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->bindPhoto(Landroid/graphics/Bitmap;)V

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->updateView(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;->access$300(Lcom/google/android/apps/plus/fragments/PhotoPickerFragment;Landroid/view/View;)V

    goto :goto_2
.end method

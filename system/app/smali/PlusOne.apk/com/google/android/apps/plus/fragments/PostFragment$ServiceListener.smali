.class Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "PostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/fragments/PostFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$100(Lcom/google/android/apps/plus/fragments/PostFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 185
    return-void
.end method

.method public onEditActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$100(Lcom/google/android/apps/plus/fragments/PostFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 194
    return-void
.end method

.method public onLocalImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;II)Z
    .registers 6
    .parameter "mediaRef"
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 211
    if-eq p3, p4, :cond_4

    .line 212
    const/4 v0, 0x0

    .line 215
    :goto_3
    return v0

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$200(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->setBitmap(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)Z

    .line 215
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 6
    .parameter "mediaRef"
    .parameter "bitmap"
    .parameter "type"
    .parameter "cropType"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mPhotoAdapter:Lcom/google/android/apps/plus/fragments/PhotoAdapter;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$200(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/android/apps/plus/fragments/PhotoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p2}, Lcom/google/android/apps/plus/fragments/PhotoAdapter;->setBitmap(Lcom/google/android/apps/plus/api/MediaRef;ILandroid/graphics/Bitmap;)V

    .line 203
    return-void
.end method

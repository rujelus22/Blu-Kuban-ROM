.class final Lcom/google/android/apps/plus/service/EsService$1;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/EsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/plus/service/PhotoCache$CacheListener",
        "<",
        "Lcom/google/android/apps/plus/service/EsService$ImageKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsService$ImageKey;III)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 502
    invoke-interface {p3}, Lcom/google/android/apps/plus/service/EsService$ImageKey;->getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v2

    .line 505
    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/MediaRef;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    move-object v1, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 506
    #calls: Lcom/google/android/apps/plus/service/EsService;->downloadCoverThumbnailImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->access$100(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V

    .line 511
    :goto_12
    return-void

    .line 509
    :cond_13
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$200()Lcom/google/android/apps/plus/service/PhotoCache;

    move-result-object v3

    const/4 v5, 0x0

    move-object v4, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/apps/plus/service/PhotoCache;->downloadComplete(Ljava/lang/Object;Landroid/graphics/Bitmap;III)V

    goto :goto_12
.end method

.method public bridge synthetic onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)V
    .registers 14
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 498
    move-object v3, p3

    check-cast v3, Lcom/google/android/apps/plus/service/EsService$ImageKey;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService$1;->onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsService$ImageKey;III)V

    return-void
.end method

.method public onImageLoaded(Lcom/google/android/apps/plus/service/EsService$ImageKey;Landroid/graphics/Bitmap;I)V
    .registers 10
    .parameter "key"
    .parameter "image"
    .parameter "cropType"

    .prologue
    .line 516
    invoke-interface {p1}, Lcom/google/android/apps/plus/service/EsService$ImageKey;->getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v3

    .line 517
    .local v3, ref:Lcom/google/android/apps/plus/api/MediaRef;
    instance-of v4, p1, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    if-eqz v4, :cond_2b

    move-object v2, p1

    .line 518
    check-cast v2, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    .line 519
    .local v2, localKey:Lcom/google/android/apps/plus/service/EsService$LocalImageKey;
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$300()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 520
    .local v1, listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    #getter for: Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mWidth:I
    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->access$400(Lcom/google/android/apps/plus/service/EsService$LocalImageKey;)I

    move-result v4

    #getter for: Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mHeight:I
    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->access$500(Lcom/google/android/apps/plus/service/EsService$LocalImageKey;)I

    move-result v5

    invoke-virtual {v1, v3, p2, v4, v5}, Lcom/google/android/apps/plus/service/EsServiceListener;->onLocalImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;II)Z

    goto :goto_13

    .line 522
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    .end local v2           #localKey:Lcom/google/android/apps/plus/service/EsService$LocalImageKey;
    :cond_2b
    instance-of v4, p1, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    if-eqz v4, :cond_48

    .line 523
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$300()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 524
    .restart local v1       #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4, p3}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    goto :goto_37

    .line 527
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    :cond_48
    return-void
.end method

.method public bridge synthetic onImageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 498
    check-cast p1, Lcom/google/android/apps/plus/service/EsService$ImageKey;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService$1;->onImageLoaded(Lcom/google/android/apps/plus/service/EsService$ImageKey;Landroid/graphics/Bitmap;I)V

    return-void
.end method

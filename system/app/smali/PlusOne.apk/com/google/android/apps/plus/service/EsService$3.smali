.class final Lcom/google/android/apps/plus/service/EsService$3;
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
        "Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;Ljava/lang/Object;III)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 382
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v2

    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    move-object v0, p1

    move-object v1, p2

    move v3, p5

    move v4, p6

    move v5, p7

    .line 383
    #calls: Lcom/google/android/apps/plus/service/EsService;->downloadCoverThumbnailImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->access$200(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V

    .line 384
    return-void
.end method

.method public bridge synthetic onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)V
    .registers 16
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 378
    move-object v3, p3

    check-cast v3, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/plus/service/EsService$3;->onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;Ljava/lang/Object;III)V

    return-void
.end method

.method public onImageLoaded(Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;Landroid/graphics/Bitmap;Ljava/lang/Object;I)V
    .registers 9
    .parameter "key"
    .parameter "image"
    .parameter "data"
    .parameter "cropType"

    .prologue
    .line 389
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v2

    .line 390
    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 391
    .local v1, listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p4}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    goto :goto_c

    .line 393
    .end local v1           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    :cond_1d
    return-void
.end method

.method public bridge synthetic onImageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;I)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 378
    check-cast p1, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    .end local p1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/service/EsService$3;->onImageLoaded(Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;Landroid/graphics/Bitmap;Ljava/lang/Object;I)V

    return-void
.end method

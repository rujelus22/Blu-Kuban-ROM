.class final Lcom/google/android/apps/plus/service/EsService$5;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;


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
        "Lcom/google/android/apps/plus/service/ImagesCache$CacheListener",
        "<",
        "Lcom/google/android/apps/plus/service/EsService$LocalImageKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsService$LocalImageKey;Ljava/lang/Object;II)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "imageKey"
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 520
    return-void
.end method

.method public bridge synthetic onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 14
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 516
    move-object v3, p3

    check-cast v3, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService$5;->onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsService$LocalImageKey;Ljava/lang/Object;II)V

    return-void
.end method

.method public onImageLoaded(Lcom/google/android/apps/plus/service/EsService$LocalImageKey;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .registers 9
    .parameter "imageKey"
    .parameter "image"
    .parameter "data"

    .prologue
    .line 525
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 526
    .local v1, listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->mediaRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->width()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->height()I

    move-result v4

    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/google/android/apps/plus/service/EsServiceListener;->onLocalImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;II)Z

    goto :goto_8

    .line 529
    .end local v1           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    :cond_24
    return-void
.end method

.method public bridge synthetic onImageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 516
    check-cast p1, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService$5;->onImageLoaded(Lcom/google/android/apps/plus/service/EsService$LocalImageKey;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-void
.end method

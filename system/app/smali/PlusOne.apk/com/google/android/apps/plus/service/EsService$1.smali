.class final Lcom/google/android/apps/plus/service/EsService$1;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 14
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 311
    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService$1;->onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Object;II)V

    return-void
.end method

.method public onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Object;II)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 315
    move-object v3, p4

    check-cast v3, Ljava/lang/String;

    .local v3, type:Ljava/lang/String;
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v4, p5

    move v5, p6

    .line 316
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/ImageDownloader;->downloadImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;II)V

    .line 317
    return-void
.end method

.method public bridge synthetic onImageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 311
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsService$1;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-void
.end method

.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .registers 8
    .parameter "url"
    .parameter "image"
    .parameter "data"

    .prologue
    .line 322
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    .line 323
    .local v2, type:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 324
    .local v1, listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_b

    .line 326
    .end local v1           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    :cond_1b
    return-void
.end method

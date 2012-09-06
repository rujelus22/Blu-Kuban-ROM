.class final Lcom/google/android/apps/plus/service/EsService$4;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/EsService;->getLocalPhotoAsync(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$maxSize:I

.field final synthetic val$ref:Lcom/google/android/apps/plus/api/MediaRef;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/api/MediaRef;ILandroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$ref:Lcom/google/android/apps/plus/api/MediaRef;

    iput p2, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$maxSize:I

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 1666
    new-instance v3, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$ref:Lcom/google/android/apps/plus/api/MediaRef;

    iget v1, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$maxSize:I

    iget v2, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$maxSize:I

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .line 1667
    .local v3, key:Lcom/google/android/apps/plus/service/EsService$LocalImageKey;
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$200()Lcom/google/android/apps/plus/service/PhotoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    iget v4, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$maxSize:I

    iget v5, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$maxSize:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/PhotoCache;->get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1670
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1e

    .line 1678
    :cond_1d
    return-void

    .line 1675
    :cond_1e
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$300()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 1676
    .local v9, listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$ref:Lcom/google/android/apps/plus/api/MediaRef;

    iget v1, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$maxSize:I

    iget v2, p0, Lcom/google/android/apps/plus/service/EsService$4;->val$maxSize:I

    invoke-virtual {v9, v0, v7, v1, v2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onLocalImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;II)Z

    goto :goto_26
.end method

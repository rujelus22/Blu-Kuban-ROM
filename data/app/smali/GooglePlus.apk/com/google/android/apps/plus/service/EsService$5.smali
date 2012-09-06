.class final Lcom/google/android/apps/plus/service/EsService$5;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/EsService;->getRemotePhotoAsync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cropType:I

.field final synthetic val$height:I

.field final synthetic val$ref:Lcom/google/android/apps/plus/api/MediaRef;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/api/MediaRef;ILandroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$ref:Lcom/google/android/apps/plus/api/MediaRef;

    iput p2, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$cropType:I

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput p5, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$width:I

    iput p6, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 1707
    new-instance v3, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$ref:Lcom/google/android/apps/plus/api/MediaRef;

    iget v1, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$cropType:I

    invoke-direct {v3, v0, v1}, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;-><init>(Lcom/google/android/apps/plus/api/MediaRef;I)V

    .line 1708
    .local v3, key:Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$200()Lcom/google/android/apps/plus/service/PhotoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget v4, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$width:I

    iget v5, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$height:I

    iget v6, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$cropType:I

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/PhotoCache;->get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1711
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1e

    .line 1719
    :cond_1d
    return-void

    .line 1716
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

    .line 1717
    .local v9, listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$ref:Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/apps/plus/service/EsService$5;->val$cropType:I

    invoke-virtual {v9, v0, v7, v1, v2}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    goto :goto_26
.end method

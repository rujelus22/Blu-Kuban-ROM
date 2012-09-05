.class final Lcom/google/android/apps/plus/service/EsService$9;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/EsService;->getCoverThumbnailAsynchronous(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;
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
    .line 1628
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$ref:Lcom/google/android/apps/plus/api/MediaRef;

    iput p2, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$cropType:I

    iput-object p3, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput p5, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$width:I

    iput p6, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v4, 0x0

    .line 1631
    new-instance v3, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$ref:Lcom/google/android/apps/plus/api/MediaRef;

    iget v1, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$cropType:I

    invoke-direct {v3, v0, v1}, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;-><init>(Lcom/google/android/apps/plus/api/MediaRef;I)V

    .line 1632
    .local v3, key:Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$700()Lcom/google/android/apps/plus/service/PhotoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget v5, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$width:I

    iget v6, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$height:I

    iget v7, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$cropType:I

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/plus/service/PhotoCache;->get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1634
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-nez v8, :cond_1f

    .line 1642
    :cond_1e
    return-void

    .line 1639
    :cond_1f
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 1640
    .local v10, listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    iget-object v0, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$ref:Lcom/google/android/apps/plus/api/MediaRef;

    iget v1, p0, Lcom/google/android/apps/plus/service/EsService$9;->val$cropType:I

    invoke-virtual {v10, v0, v8, v4, v1}, Lcom/google/android/apps/plus/service/EsServiceListener;->onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    goto :goto_27
.end method

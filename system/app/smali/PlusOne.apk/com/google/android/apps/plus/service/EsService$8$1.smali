.class Lcom/google/android/apps/plus/service/EsService$8$1;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/EsService$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/EsService$8;

.field final synthetic val$fBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/EsService$8;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$8$1;->this$0:Lcom/google/android/apps/plus/service/EsService$8;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$8$1;->val$fBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1477
    const/4 v2, 0x0

    .line 1478
    .local v2, processed:Z
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 1479
    .local v1, listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    if-nez v2, :cond_2b

    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$8$1;->this$0:Lcom/google/android/apps/plus/service/EsService$8;

    iget-object v3, v3, Lcom/google/android/apps/plus/service/EsService$8;->val$ref:Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$8$1;->val$fBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService$8$1;->this$0:Lcom/google/android/apps/plus/service/EsService$8;

    iget v5, v5, Lcom/google/android/apps/plus/service/EsService$8;->val$maxSize:I

    iget-object v6, p0, Lcom/google/android/apps/plus/service/EsService$8$1;->this$0:Lcom/google/android/apps/plus/service/EsService$8;

    iget v6, v6, Lcom/google/android/apps/plus/service/EsService$8;->val$maxSize:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/apps/plus/service/EsServiceListener;->onLocalImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;II)Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_2b
    const/4 v2, 0x1

    :goto_2c
    goto :goto_9

    :cond_2d
    const/4 v2, 0x0

    goto :goto_2c

    .line 1484
    .end local v1           #listener:Lcom/google/android/apps/plus/service/EsServiceListener;
    :cond_2f
    if-nez v2, :cond_3a

    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$8$1;->val$fBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3a

    .line 1485
    iget-object v3, p0, Lcom/google/android/apps/plus/service/EsService$8$1;->val$fBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1487
    :cond_3a
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$600()Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/service/EsService$8$1;->this$0:Lcom/google/android/apps/plus/service/EsService$8;

    iget-object v4, v4, Lcom/google/android/apps/plus/service/EsService$8;->val$uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1488
    return-void
.end method

.class Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;
.super Ljava/lang/Object;
.source "ImagesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

.field final synthetic val$imageBytes:[B


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;[B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 451
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;,"Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3.1;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->val$imageBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 457
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;,"Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3.1;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->val$imageBytes:[B

    if-eqz v0, :cond_2b

    .line 458
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->val$imageBytes:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->val$imageBytes:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 460
    .local v7, bitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImagesCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iget-object v1, v1, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    new-instance v2, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iget-object v3, v3, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->val$imageBytes:[B

    invoke-direct {v2, v3, v4, v7}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;-><init>(Ljava/lang/Object;[BLandroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iget-object v3, v3, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$data:Ljava/lang/Object;

    #calls: Lcom/google/android/apps/plus/service/ImagesCache;->imageLoaded(Ljava/lang/Object;Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/ImagesCache;->access$300(Lcom/google/android/apps/plus/service/ImagesCache;Ljava/lang/Object;Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;Ljava/lang/Object;)V

    .line 467
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :goto_2a
    return-void

    .line 464
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImagesCache;

    #getter for: Lcom/google/android/apps/plus/service/ImagesCache;->mListener:Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImagesCache;->access$700(Lcom/google/android/apps/plus/service/ImagesCache;)Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iget-object v1, v1, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iget-object v2, v2, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iget-object v3, v3, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iget-object v4, v4, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$data:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iget v5, v5, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$width:I

    iget-object v6, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;

    iget v6, v6, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$height:I

    invoke-interface/range {v0 .. v6}, Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;->onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_2a
.end method

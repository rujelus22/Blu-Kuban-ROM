.class Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;
.super Ljava/lang/Object;
.source "ImagesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 399
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;,"Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2.1;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 406
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;,"Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2.1;"
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_25

    .line 407
    new-instance v0, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;

    iget-object v1, v1, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->val$imageKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;

    iget-object v2, v2, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->val$imageBytes:[B

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;-><init>(Ljava/lang/Object;[BLandroid/graphics/Bitmap;)V

    .line 412
    .local v0, image:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    :goto_13
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;

    iget-object v1, v1, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    iget-object v1, v1, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImagesCache;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;

    iget-object v2, v2, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->val$imageKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;->this$2:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;

    iget-object v3, v3, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->val$data:Ljava/lang/Object;

    #calls: Lcom/google/android/apps/plus/service/ImagesCache;->imageLoaded(Ljava/lang/Object;Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;Ljava/lang/Object;)V
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/apps/plus/service/ImagesCache;->access$300(Lcom/google/android/apps/plus/service/ImagesCache;Ljava/lang/Object;Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;Ljava/lang/Object;)V

    .line 413
    return-void

    .line 409
    .end local v0           #image:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    :cond_25
    const/4 v0, 0x0

    .restart local v0       #image:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    goto :goto_13
.end method

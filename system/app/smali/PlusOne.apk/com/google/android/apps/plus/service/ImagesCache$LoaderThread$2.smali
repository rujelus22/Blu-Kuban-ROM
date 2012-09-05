.class Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;
.super Ljava/lang/Object;
.source "ImagesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->put(Ljava/lang/Object;[BLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$imageBytes:[B

.field final synthetic val$imageKey:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;[BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;,"Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread.2;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->val$imageBytes:[B

    iput-object p3, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->val$imageKey:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 397
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;,"Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread.2;"
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->val$imageBytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->val$imageBytes:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 399
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;->this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    #getter for: Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->access$400(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2$1;-><init>(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 415
    return-void
.end method

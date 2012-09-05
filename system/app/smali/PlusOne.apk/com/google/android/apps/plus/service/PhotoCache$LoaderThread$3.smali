.class Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;
.super Ljava/lang/Object;
.source "PhotoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cropType:I

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$height:I

.field final synthetic val$imageKey:Ljava/lang/Object;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Ljava/lang/Object;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;IIILjava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.3;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput p5, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$width:I

    iput p6, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$height:I

    iput p7, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$cropType:I

    iput-object p8, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 354
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.3;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/PhotoCache;

    #getter for: Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/PhotoCache;->access$600(Lcom/google/android/apps/plus/service/PhotoCache;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 355
    .local v8, tempBitmap:Landroid/graphics/Bitmap;
    if-nez v8, :cond_36

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/PhotoCache;

    #getter for: Lcom/google/android/apps/plus/service/PhotoCache;->mImageLoader:Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/PhotoCache;->access$700(Lcom/google/android/apps/plus/service/PhotoCache;)Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$width:I

    iget v5, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$height:I

    iget v6, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$cropType:I

    invoke-interface/range {v0 .. v6}, Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;->loadImageBytesFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)[B

    move-result-object v9

    .line 358
    .local v9, tempBytes:[B
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iget v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$width:I

    iget v2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$height:I

    iget v3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$cropType:I

    #calls: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->createBitmap([BIII)Landroid/graphics/Bitmap;
    invoke-static {v0, v9, v1, v2, v3}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$300(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;[BIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 362
    .end local v9           #tempBytes:[B
    :cond_36
    move-object v7, v8

    .line 364
    .local v7, imageBitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    #getter for: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$500(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;

    invoke-direct {v1, p0, v7}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method

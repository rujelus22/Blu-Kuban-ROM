.class Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;
.super Ljava/lang/Object;
.source "PhotoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$cachedBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cropType:I

.field final synthetic val$height:I

.field final synthetic val$imageKey:Ljava/lang/Object;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/Object;IIILcom/google/android/apps/plus/content/EsAccount;)V
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
    .line 317
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.3;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$cachedBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    iput p5, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$width:I

    iput p6, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$height:I

    iput p7, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$cropType:I

    iput-object p8, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 321
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.3;"
    iget-object v7, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$cachedBitmap:Landroid/graphics/Bitmap;

    .line 322
    .local v7, tempBitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1a

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/PhotoCache;

    #getter for: Lcom/google/android/apps/plus/service/PhotoCache;->mImageLoader:Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/PhotoCache;->access$500(Lcom/google/android/apps/plus/service/PhotoCache;)Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$width:I

    iget v4, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$height:I

    iget v5, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$cropType:I

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;->loadBitmapFromStorage(Landroid/content/Context;Ljava/lang/Object;III)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 328
    :cond_1a
    move-object v6, v7

    .line 330
    .local v6, imageBitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    #getter for: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$700(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;

    invoke-direct {v1, p0, v6}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.class Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;
.super Ljava/lang/Object;
.source "ImagesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$height:I

.field final synthetic val$imageKey:Ljava/lang/Object;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;Ljava/lang/Object;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;IILjava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;,"Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread.3;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput p5, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$width:I

    iput p6, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$height:I

    iput-object p7, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 442
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;,"Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread.3;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImagesCache;

    #getter for: Lcom/google/android/apps/plus/service/ImagesCache;->mImages:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImagesCache;->access$500(Lcom/google/android/apps/plus/service/ImagesCache;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;

    .line 445
    .local v6, image:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    if-eqz v6, :cond_2b

    invoke-virtual {v6}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 446
    invoke-virtual {v6}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getBytes()[B

    move-result-object v7

    .line 451
    .local v7, imageBytes:[B
    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    #getter for: Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->access$400(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;

    invoke-direct {v1, p0, v7}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3$1;-><init>(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    return-void

    .line 448
    .end local v7           #imageBytes:[B
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/ImagesCache;

    #getter for: Lcom/google/android/apps/plus/service/ImagesCache;->mImageLoader:Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/ImagesCache;->access$600(Lcom/google/android/apps/plus/service/ImagesCache;)Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$width:I

    iget v5, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$3;->val$height:I

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;->loadImageBytesFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;II)[B

    move-result-object v7

    .restart local v7       #imageBytes:[B
    goto :goto_1c
.end method

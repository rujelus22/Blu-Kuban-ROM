.class Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;
.super Ljava/lang/Object;
.source "PhotoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

.field final synthetic val$imageBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 364
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3.1;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->val$imageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 367
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3.1;"
    const-string v0, "EsPhotoCache"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 368
    const-string v1, "EsPhotoCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhotoCache#load; bitmap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->val$imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget-object v2, v2, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_34
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->val$imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5a

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/PhotoCache;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget-object v1, v1, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->val$imageBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget-object v3, v3, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$data:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget v4, v4, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$width:I

    iget-object v5, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget v5, v5, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$height:I

    iget-object v6, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget v6, v6, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$cropType:I

    #calls: Lcom/google/android/apps/plus/service/PhotoCache;->imageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;III)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/PhotoCache;->access$400(Lcom/google/android/apps/plus/service/PhotoCache;Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;III)V

    .line 379
    :goto_57
    return-void

    .line 368
    :cond_58
    const/4 v0, 0x0

    goto :goto_1b

    .line 376
    :cond_5a
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    iget-object v0, v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/PhotoCache;

    #getter for: Lcom/google/android/apps/plus/service/PhotoCache;->mListener:Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/PhotoCache;->access$800(Lcom/google/android/apps/plus/service/PhotoCache;)Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget-object v1, v1, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget-object v2, v2, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget-object v3, v3, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$imageKey:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget-object v4, v4, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$data:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget v5, v5, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$width:I

    iget-object v6, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget v6, v6, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$height:I

    iget-object v7, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3$1;->this$2:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    iget v7, v7, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;->val$cropType:I

    invoke-interface/range {v0 .. v7}, Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;->onImageDownload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)V

    goto :goto_57
.end method

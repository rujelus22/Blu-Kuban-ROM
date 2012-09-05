.class Lcom/cooliris/media/CropImage$2$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/CropImage$2;->onMediaScannerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/CropImage$2;

.field final synthetic val$connection:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor <init>(Lcom/cooliris/media/CropImage$2;Landroid/media/MediaScannerConnection;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/cooliris/media/CropImage$2$1;->this$0:Lcom/cooliris/media/CropImage$2;

    iput-object p2, p0, Lcom/cooliris/media/CropImage$2$1;->val$connection:Landroid/media/MediaScannerConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 254
    :try_start_0
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/cooliris/media/CropImage$2$1$1;

    invoke-direct {v3, p0}, Lcom/cooliris/media/CropImage$2$1$1;-><init>(Lcom/cooliris/media/CropImage$2$1;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 262
    .local v1, futureTask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 265
    const-wide/16 v3, 0x12

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 267
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_2a

    .line 268
    iget-object v3, p0, Lcom/cooliris/media/CropImage$2$1;->val$connection:Landroid/media/MediaScannerConnection;

    iget-object v4, p0, Lcom/cooliris/media/CropImage$2$1;->this$0:Lcom/cooliris/media/CropImage$2;

    iget-object v4, v4, Lcom/cooliris/media/CropImage$2;->val$item:Lcom/cooliris/media/MediaItem;

    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v1           #futureTask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .end local v2           #path:Ljava/lang/String;
    :goto_29
    return-void

    .line 270
    .restart local v1       #futureTask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v2       #path:Ljava/lang/String;
    :cond_2a
    iget-object v3, p0, Lcom/cooliris/media/CropImage$2$1;->this$0:Lcom/cooliris/media/CropImage$2;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/cooliris/media/CropImage$2;->shutdown(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_29

    .line 272
    .end local v1           #futureTask:Ljava/util/concurrent/FutureTask;,"Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .end local v2           #path:Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/cooliris/media/CropImage$2$1;->this$0:Lcom/cooliris/media/CropImage$2;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/cooliris/media/CropImage$2;->shutdown(Ljava/lang/String;)V

    goto :goto_29
.end method

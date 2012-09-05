.class Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$1;
.super Ljava/lang/Object;
.source "ImagesCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;)V
    .registers 2
    .parameter

    .prologue
    .line 349
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$1;,"Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread.1;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$1;->this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 357
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$1;,"Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread.1;"
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread$1;->this$1:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    #getter for: Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->mQueue:Ljava/util/Queue;
    invoke-static {v3}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->access$200(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .local v1, runnable:Ljava/lang/Runnable;
    if-eqz v1, :cond_31

    .line 359
    :try_start_e
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_11} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_24

    goto :goto_0

    .line 360
    :catch_12
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "EsImagesCache"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    const-string v3, "EsImagesCache"

    const-string v4, "Cannot load an image"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 364
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_24
    move-exception v2

    .line 365
    .local v2, t:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 369
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_31
    return-void
.end method

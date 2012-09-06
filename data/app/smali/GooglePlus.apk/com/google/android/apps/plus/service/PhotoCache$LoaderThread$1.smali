.class Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$1;
.super Ljava/lang/Object;
.source "PhotoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)V
    .registers 2
    .parameter

    .prologue
    .line 253
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$1;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.1;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$1;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 258
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$1;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.1;"
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$1;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    #calls: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->pollFirstEntry()Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$200(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Ljava/lang/Runnable;

    move-result-object v1

    .local v1, runnable:Ljava/lang/Runnable;
    if-eqz v1, :cond_2b

    .line 260
    :try_start_8
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_b} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_b} :catch_1e

    goto :goto_0

    .line 261
    :catch_c
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "EsPhotoCache"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    const-string v3, "EsPhotoCache"

    const-string v4, "Cannot load an image"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 265
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1e
    move-exception v2

    .line 266
    .local v2, t:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 270
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2b
    return-void
.end method

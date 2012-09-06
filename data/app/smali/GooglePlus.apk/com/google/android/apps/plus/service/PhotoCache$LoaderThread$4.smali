.class Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$4;
.super Ljava/lang/Object;
.source "PhotoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->run()V
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
    .line 362
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$4;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.4;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$4;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 365
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$4;,"Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread.4;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$4;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    #getter for: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$900(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$4;->this$1:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    #getter for: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$800(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.class Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1;
.super Ljava/lang/Object;
.source "HoneycombAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;->execute(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;

.field final synthetic val$uiThreadHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    .local p0, this:Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1;,"Lcom/google/android/apps/unveil/env/HoneycombAsyncTask.1;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1;->this$0:Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;

    iput-object p2, p0, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1;->val$uiThreadHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 39
    .local p0, this:Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1;,"Lcom/google/android/apps/unveil/env/HoneycombAsyncTask.1;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1;->this$0:Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, response:Ljava/lang/Object;,"TResult;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1;->val$uiThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1$1;-><init>(Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method

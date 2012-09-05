.class Lcom/google/android/apps/plus/service/ServiceThread$2;
.super Ljava/lang/Object;
.source "ServiceThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/ServiceThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/ServiceThread;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ServiceThread;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ServiceThread$2;->this$0:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread$2;->this$0:Lcom/google/android/apps/plus/service/ServiceThread;

    #getter for: Lcom/google/android/apps/plus/service/ServiceThread;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/service/ServiceThread;->access$300(Lcom/google/android/apps/plus/service/ServiceThread;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ServiceThread$2;->this$0:Lcom/google/android/apps/plus/service/ServiceThread;

    #getter for: Lcom/google/android/apps/plus/service/ServiceThread;->mProcessQueueRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/ServiceThread;->access$200(Lcom/google/android/apps/plus/service/ServiceThread;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

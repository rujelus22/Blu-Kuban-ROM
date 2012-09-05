.class Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory$1;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory$1;->this$0:Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;

    iput-object p2, p0, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory$1;->this$0:Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;

    #getter for: Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;->threadPriority:I
    invoke-static {v0}, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;->access$100(Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 420
    iget-object v0, p0, Lcom/google/android/youtube/core/BaseApplication$PriorityThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 421
    return-void
.end method

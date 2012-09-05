.class Lcom/google/android/youtube/core/cache/PersistentCache$2;
.super Ljava/lang/Object;
.source "PersistentCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/cache/PersistentCache;->init(Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/cache/PersistentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/cache/PersistentCache;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/cache/PersistentCache;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache$2;,"Lcom/google/android/youtube/core/cache/PersistentCache.2;"
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/PersistentCache$2;->this$0:Lcom/google/android/youtube/core/cache/PersistentCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 109
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache$2;,"Lcom/google/android/youtube/core/cache/PersistentCache.2;"
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache$2;->this$0:Lcom/google/android/youtube/core/cache/PersistentCache;

    #calls: Lcom/google/android/youtube/core/cache/PersistentCache;->doInit()V
    invoke-static {v0}, Lcom/google/android/youtube/core/cache/PersistentCache;->access$000(Lcom/google/android/youtube/core/cache/PersistentCache;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache$2;->this$0:Lcom/google/android/youtube/core/cache/PersistentCache;

    #getter for: Lcom/google/android/youtube/core/cache/PersistentCache;->initialized:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/google/android/youtube/core/cache/PersistentCache;->access$100(Lcom/google/android/youtube/core/cache/PersistentCache;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 111
    return-void
.end method

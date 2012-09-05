.class final Lcom/cooliris/cache/CacheService$2;
.super Ljava/lang/Thread;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/cache/CacheService;->restartThread(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/Runnable;

.field final synthetic val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/cooliris/cache/CacheService$2;->val$action:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/cooliris/cache/CacheService$2;->val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1717
    :try_start_1
    iget-object v0, p0, Lcom/cooliris/cache/CacheService$2;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_c

    .line 1719
    iget-object v0, p0, Lcom/cooliris/cache/CacheService$2;->val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1721
    return-void

    .line 1719
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/cooliris/cache/CacheService$2;->val$threadRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v0
.end method

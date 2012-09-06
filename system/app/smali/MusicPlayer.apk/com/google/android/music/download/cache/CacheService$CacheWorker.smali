.class Lcom/google/android/music/download/cache/CacheService$CacheWorker;
.super Lcom/google/android/music/Worker;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/cache/CacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/download/cache/CacheService;


# direct methods
.method public constructor <init>(Lcom/google/android/music/download/cache/CacheService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "name"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/music/download/cache/CacheService$CacheWorker;->this$0:Lcom/google/android/music/download/cache/CacheService;

    .line 26
    invoke-direct {p0, p2}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 38
    :goto_5
    iget-object v0, p0, Lcom/google/android/music/download/cache/CacheService$CacheWorker;->this$0:Lcom/google/android/music/download/cache/CacheService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/download/cache/CacheService;->stopSelf(I)V

    .line 39
    return-void

    .line 33
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/music/download/cache/CacheService$CacheWorker;->this$0:Lcom/google/android/music/download/cache/CacheService;

    #calls: Lcom/google/android/music/download/cache/CacheService;->handleClearOrphaned()V
    invoke-static {v0}, Lcom/google/android/music/download/cache/CacheService;->access$000(Lcom/google/android/music/download/cache/CacheService;)V

    goto :goto_5

    .line 31
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

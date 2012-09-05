.class Lcom/android/providers/media/MtpService$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 53
    iget-object v3, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v3}, Lcom/android/providers/media/MtpService;->access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v4

    monitor-enter v4

    .line 55
    :try_start_13
    iget-object v3, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mMtpDisabled:Z
    invoke-static {v3}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 56
    iget-object v3, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/providers/media/MtpService;->access$200(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorage;

    .line 57
    .local v2, storage:Landroid/mtp/MtpStorage;
    iget-object v3, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    #calls: Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/mtp/MtpStorage;)V
    invoke-static {v3, v2}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;Landroid/mtp/MtpStorage;)V

    goto :goto_29

    .line 61
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #storage:Landroid/mtp/MtpStorage;
    :catchall_3b
    move-exception v3

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_13 .. :try_end_3d} :catchall_3b

    throw v3

    .line 59
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3e
    :try_start_3e
    iget-object v3, p0, Lcom/android/providers/media/MtpService$1;->this$0:Lcom/android/providers/media/MtpService;

    const/4 v5, 0x0

    #setter for: Lcom/android/providers/media/MtpService;->mMtpDisabled:Z
    invoke-static {v3, v5}, Lcom/android/providers/media/MtpService;->access$102(Lcom/android/providers/media/MtpService;Z)Z

    .line 61
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_44
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    .line 63
    :cond_45
    return-void
.end method

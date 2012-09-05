.class Lcom/android/exchange/EasSyncService$1;
.super Landroid/os/storage/StorageEventListener;
.source "EasSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/EasSyncService;


# direct methods
.method constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 2
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/exchange/EasSyncService$1;->this$0:Lcom/android/exchange/EasSyncService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 771
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_40

    .line 772
    iget-object v0, p0, Lcom/android/exchange/EasSyncService$1;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received storage state changed notification that "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flagRemoteWipe = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/exchange/EasSyncService;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_40
    invoke-static {}, Lcom/android/exchange/EasSyncService;->access$000()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_66

    invoke-static {}, Lcom/android/exchange/EasSyncService;->access$100()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-static {}, Lcom/android/exchange/EasSyncService;->access$100()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_66

    .line 780
    :cond_57
    new-instance v0, Lcom/android/exchange/EasSyncService$1$1;

    invoke-direct {v0, p0}, Lcom/android/exchange/EasSyncService$1$1;-><init>(Lcom/android/exchange/EasSyncService$1;)V

    invoke-static {v0}, Lcom/android/exchange/EasSyncService;->access$102(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 794
    invoke-static {}, Lcom/android/exchange/EasSyncService;->access$100()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 797
    :cond_66
    return-void
.end method

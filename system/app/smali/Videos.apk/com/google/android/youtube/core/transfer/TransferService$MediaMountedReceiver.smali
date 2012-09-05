.class Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaMountedReceiver"
.end annotation


# instance fields
.field private mediaMounted:Z

.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/TransferService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 4
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 677
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->mediaMounted:Z

    .line 678
    return-void
.end method


# virtual methods
.method public isMediaMounted()Z
    .registers 2

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->mediaMounted:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 698
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->mediaMounted:Z

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media mounted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->mediaMounted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 701
    return-void
.end method

.method public register()V
    .registers 3

    .prologue
    .line 685
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 686
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 690
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 694
    return-void
.end method

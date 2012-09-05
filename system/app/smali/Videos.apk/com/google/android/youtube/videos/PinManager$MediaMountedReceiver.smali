.class Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/PinManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaMountedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/PinManager;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/PinManager;)V
    .registers 2
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;-><init>(Lcom/google/android/youtube/videos/PinManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->downloadsRestored:Z
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$2200(Lcom/google/android/youtube/videos/PinManager;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 530
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #calls: Lcom/google/android/youtube/videos/PinManager;->updateDirectoryStats()V
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$2300(Lcom/google/android/youtube/videos/PinManager;)V

    .line 531
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/videos/PinManager$Listener;->onDirectoryMountedChange()V

    .line 533
    :cond_16
    return-void
.end method

.method public register()V
    .registers 3

    .prologue
    .line 516
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 517
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/youtube/videos/PinManager;->access$1700(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 521
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->this$0:Lcom/google/android/youtube/videos/PinManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->access$1700(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 525
    return-void
.end method

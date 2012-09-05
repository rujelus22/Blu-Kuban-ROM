.class Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 6546
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 6558
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->access$5700(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6559
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/Launcher;->mAppUnistallList:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6562
    if-ne p2, v1, :cond_23

    :goto_17
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 6563
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    #getter for: Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$5700(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6565
    return-void

    .line 6562
    :cond_23
    const/4 v1, 0x0

    goto :goto_17
.end method

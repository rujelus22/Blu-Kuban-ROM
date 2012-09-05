.class public Lcom/sprint/w/installer/PackUninstaller$DeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PackUninstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackUninstaller;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/PackUninstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$DeleteObserver;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 5
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 960
    const/4 v0, 0x1

    if-eq p2, v0, :cond_e

    .line 961
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$DeleteObserver;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #getter for: Lcom/sprint/w/installer/PackUninstaller;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v0}, Lcom/sprint/w/installer/PackUninstaller;->access$400(Lcom/sprint/w/installer/PackUninstaller;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v1, "Delete failed for an app"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 963
    :cond_e
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$DeleteObserver;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v0, Lcom/sprint/w/installer/PackUninstaller;->mPackageManagerSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    :try_start_13
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$DeleteObserver;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackUninstaller;->mPackageManagerSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 965
    monitor-exit v1

    .line 967
    return-void

    .line 965
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.class public Lcom/sprint/w/installer/PackInstaller$InstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 10
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1533
    packed-switch p2, :pswitch_data_b2

    .line 1542
    :pswitch_4
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installation failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 1543
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iput-boolean v6, v2, Lcom/sprint/w/installer/PackInstaller;->mRollbackInstall:Z

    .line 1547
    :goto_2c
    :pswitch_2c
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    #getter for: Lcom/sprint/w/installer/PackInstaller;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sprint/w/installer/PackInstaller;->access$1800(Lcom/sprint/w/installer/PackInstaller;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1548
    :try_start_33
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    #getter for: Lcom/sprint/w/installer/PackInstaller;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/sprint/w/installer/PackInstaller;->access$1800(Lcom/sprint/w/installer/PackInstaller;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1549
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_8b

    .line 1551
    if-eqz p1, :cond_53

    .line 1552
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInstaller;->mFileMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1553
    .local v1, filePath:Ljava/lang/String;
    if-eqz v1, :cond_53

    .line 1555
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1559
    .end local v1           #filePath:Ljava/lang/String;
    :cond_53
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-boolean v2, v2, Lcom/sprint/w/installer/PackInstaller;->mLastFile:Z

    if-eqz v2, :cond_69

    .line 1561
    :try_start_59
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    new-instance v3, Ljava/util/jar/JarFile;

    iget-object v4, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    #calls: Lcom/sprint/w/installer/PackInstaller;->getTargetFile()Ljava/io/File;
    invoke-static {v4}, Lcom/sprint/w/installer/PackInstaller;->access$600(Lcom/sprint/w/installer/PackInstaller;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    #calls: Lcom/sprint/w/installer/PackInstaller;->configureHomeScreenAndFinish(Ljava/util/jar/JarFile;)V
    invoke-static {v2, v3}, Lcom/sprint/w/installer/PackInstaller;->access$2000(Lcom/sprint/w/installer/PackInstaller;Ljava/util/jar/JarFile;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_69} :catch_8e

    .line 1571
    :cond_69
    :goto_69
    return-void

    .line 1535
    :pswitch_6a
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " installed successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    goto :goto_2c

    .line 1549
    :catchall_8b
    move-exception v2

    :try_start_8c
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v2

    .line 1562
    :catch_8e
    move-exception v0

    .line 1564
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    if-eqz v2, :cond_a2

    .line 1565
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v3, v3, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->ERROR_UNKNOWN:Lcom/sprint/w/installer/DeliveryState;

    const-string v5, "-configureHomeScreenAndFinish"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 1567
    :cond_a2
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v2

    const-string v3, "Error opening pack file"

    invoke-virtual {v2, v3, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1568
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v2}, Lcom/sprint/w/installer/PackInstaller;->finish()V

    goto :goto_69

    .line 1533
    nop

    :pswitch_data_b2
    .packed-switch -0x1
        :pswitch_2c
        :pswitch_4
        :pswitch_6a
    .end packed-switch
.end method

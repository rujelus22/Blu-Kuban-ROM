.class Lcom/sprint/w/installer/PackRemover$1;
.super Ljava/lang/Object;
.source "PackRemover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackRemover;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackRemover;

.field final synthetic val$packId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackRemover;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    iput-object p2, p0, Lcom/sprint/w/installer/PackRemover$1;->val$packId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v4, 0x1

    .line 54
    iget-object v3, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v5, p0, Lcom/sprint/w/installer/PackRemover$1;->val$packId:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/sprint/w/installer/PackInfo;->loadPackDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v0

    .line 56
    .local v0, info:Lcom/sprint/w/installer/PackInfo;
    iget-object v5, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v6, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v3, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    const v7, 0x7f06006e

    invoke-virtual {v3, v7}, Lcom/sprint/w/installer/PackRemover;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    const v9, 0x7f06004d

    invoke-virtual {v8, v9}, Lcom/sprint/w/installer/PackRemover;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v0, :cond_90

    const-string v3, ""

    :goto_2c
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, v5, Lcom/sprint/w/installer/PackRemover;->mProgresDialog:Landroid/app/ProgressDialog;

    .line 58
    new-instance v2, Lcom/sprint/w/installer/PackRemover$1$1;

    invoke-direct {v2, p0, v0}, Lcom/sprint/w/installer/PackRemover$1$1;-><init>(Lcom/sprint/w/installer/PackRemover$1;Lcom/sprint/w/installer/PackInfo;)V

    .line 71
    .local v2, t:Ljava/lang/Thread;
    iget-object v3, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    #getter for: Lcom/sprint/w/installer/PackRemover;->mLoadHome:Z
    invoke-static {v3}, Lcom/sprint/w/installer/PackRemover;->access$100(Lcom/sprint/w/installer/PackRemover;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 72
    invoke-static {}, Lcom/sprint/w/installer/PackRemover;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getting ready to start the SwitchIDThread. Null Service? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v3, v3, Lcom/sprint/w/installer/PackRemover;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {v3}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->getService()Lcom/sprint/id/ISprintIDService;

    move-result-object v3

    if-nez v3, :cond_a6

    move v3, v4

    :goto_61
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/sprint/w/installer/SwitchIDThread;

    iget-object v3, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v3, v3, Lcom/sprint/w/installer/PackRemover;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {v3}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->getService()Lcom/sprint/id/ISprintIDService;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    const-string v5, "HOME"

    invoke-direct {v1, v3, v4, v5}, Lcom/sprint/w/installer/SwitchIDThread;-><init>(Lcom/sprint/id/ISprintIDService;Landroid/app/Activity;Ljava/lang/String;)V

    .line 74
    .local v1, st:Lcom/sprint/w/installer/SwitchIDThread;
    iget-object v3, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v4, v3, Lcom/sprint/w/installer/PackRemover;->mThreadSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 75
    :try_start_82
    invoke-virtual {v1}, Lcom/sprint/w/installer/SwitchIDThread;->start()V

    .line 76
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_a8

    .line 79
    .end local v1           #st:Lcom/sprint/w/installer/SwitchIDThread;
    :cond_86
    iget-object v3, p0, Lcom/sprint/w/installer/PackRemover$1;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v4, v3, Lcom/sprint/w/installer/PackRemover;->mThreadSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 80
    :try_start_8b
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 81
    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_ab

    .line 82
    return-void

    .line 56
    .end local v2           #t:Ljava/lang/Thread;
    :cond_90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v0, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    .line 72
    .restart local v2       #t:Ljava/lang/Thread;
    :cond_a6
    const/4 v3, 0x0

    goto :goto_61

    .line 76
    .restart local v1       #st:Lcom/sprint/w/installer/SwitchIDThread;
    :catchall_a8
    move-exception v3

    :try_start_a9
    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v3

    .line 81
    .end local v1           #st:Lcom/sprint/w/installer/SwitchIDThread;
    :catchall_ab
    move-exception v3

    :try_start_ac
    monitor-exit v4
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v3
.end method

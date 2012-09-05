.class Lcom/sprint/w/installer/PackUninstaller$1;
.super Ljava/lang/Thread;
.source "PackUninstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackUninstaller;->reloadAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackUninstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackUninstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v0, Lcom/sprint/w/installer/PackUninstaller;->mThreadSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_5
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->loadContent()V
    invoke-static {v0}, Lcom/sprint/w/installer/PackUninstaller;->access$000(Lcom/sprint/w/installer/PackUninstaller;)V

    .line 116
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->rebuildList()V
    invoke-static {v0}, Lcom/sprint/w/installer/PackUninstaller;->access$100(Lcom/sprint/w/installer/PackUninstaller;)V

    .line 117
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1b

    .line 118
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$1;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    new-instance v1, Lcom/sprint/w/installer/PackUninstaller$1$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackUninstaller$1$1;-><init>(Lcom/sprint/w/installer/PackUninstaller$1;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackUninstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    return-void

    .line 117
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

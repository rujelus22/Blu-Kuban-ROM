.class Lcom/sprint/w/installer/PackUninstaller$4;
.super Ljava/lang/Object;
.source "PackUninstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackUninstaller;->rebuildList()V
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
    .line 468
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$4;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$4;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v0, Lcom/sprint/w/installer/PackUninstaller;->mThreadSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_5
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$4;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackUninstaller;->mAdapter:Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackUninstaller$UninstallerAdapter;->notifyDataSetChanged()V

    .line 473
    monitor-exit v1

    .line 474
    return-void

    .line 473
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

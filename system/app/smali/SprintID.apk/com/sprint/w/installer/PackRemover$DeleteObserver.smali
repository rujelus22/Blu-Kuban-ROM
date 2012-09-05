.class public Lcom/sprint/w/installer/PackRemover$DeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "PackRemover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackRemover;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/PackRemover;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sprint/w/installer/PackRemover$DeleteObserver;->this$0:Lcom/sprint/w/installer/PackRemover;

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
    .line 170
    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    .line 171
    invoke-static {}, Lcom/sprint/w/installer/PackRemover;->access$200()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v1, "Delete failed for an app"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 173
    :cond_c
    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover$DeleteObserver;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v1, v0, Lcom/sprint/w/installer/PackRemover;->mPackageManagerSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_11
    iget-object v0, p0, Lcom/sprint/w/installer/PackRemover$DeleteObserver;->this$0:Lcom/sprint/w/installer/PackRemover;

    iget-object v0, v0, Lcom/sprint/w/installer/PackRemover;->mPackageManagerSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit v1

    .line 176
    return-void

    .line 175
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v0
.end method

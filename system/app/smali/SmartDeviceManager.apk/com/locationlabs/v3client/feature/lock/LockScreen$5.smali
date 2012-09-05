.class final Lcom/locationlabs/v3client/feature/lock/LockScreen$5;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/locationlabs/v3client/feature/lock/LockScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/locationlabs/v3client/feature/lock/LockScreen;


# direct methods
.method constructor <init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$5;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter

    .prologue
    .line 707
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$5;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 708
    :try_start_7
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$5;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 710
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$5;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->showDialog(I)V

    .line 714
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

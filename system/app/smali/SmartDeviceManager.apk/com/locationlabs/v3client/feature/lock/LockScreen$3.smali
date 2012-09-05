.class final Lcom/locationlabs/v3client/feature/lock/LockScreen$3;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 670
    iput-object p1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$3;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 673
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$3;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v0}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 674
    :try_start_8
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$3;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 676
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$3;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->b(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 679
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$3;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 686
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$3;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    .line 687
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$3;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->showDialog(I)V

    .line 692
    :goto_38
    monitor-exit v0

    return-void

    .line 683
    :cond_3a
    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$3;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$3;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v2}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->a(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_4f

    goto :goto_26

    .line 692
    :catchall_4f
    move-exception v1

    monitor-exit v0

    throw v1

    .line 690
    :cond_52
    :try_start_52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4f

    goto :goto_38
.end method

.class public LOZ;
.super Lcg;
.source "AddCollaboratorTextDialogFragment.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 419
    :try_start_1
    iget-object v0, p0, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LPj;

    invoke-interface {v0}, LPj;->a()Ljava/util/List;

    move-result-object v0

    .line 420
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_47

    move-result v1

    if-eqz v1, :cond_19

    .line 448
    iget-object v0, p0, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0, v3}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;Lcg;)Lcg;

    .line 450
    :goto_18
    return-void

    .line 424
    :cond_19
    :try_start_19
    iget-object v1, p0, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 427
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_47

    move-result v1

    if-eqz v1, :cond_33

    .line 448
    iget-object v0, p0, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0, v3}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;Lcg;)Lcg;

    goto :goto_18

    .line 430
    :cond_33
    :try_start_33
    iget-object v1, p0, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, LPa;

    invoke-direct {v2, p0, v0}, LPa;-><init>(LOZ;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_47

    .line 448
    iget-object v0, p0, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0, v3}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;Lcg;)Lcg;

    goto :goto_18

    :catchall_47
    move-exception v0

    iget-object v1, p0, LOZ;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v1, v3}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;Lcg;)Lcg;

    throw v0
.end method

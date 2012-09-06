.class public LOX;
.super Lcg;
.source "AddCollaboratorTextDialogFragment.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 354
    :try_start_1
    iget-object v0, p0, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    iget-object v0, v0, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a:LPj;

    invoke-interface {v0}, LPj;->a()Ljava/util/List;

    move-result-object v0

    .line 355
    invoke-static {}, Lcg;->b()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_56

    move-result v1

    if-eqz v1, :cond_15

    .line 398
    iget-object v0, p0, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0, v3}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;Lcg;)Lcg;

    .line 400
    :goto_14
    return-void

    .line 359
    :cond_15
    :try_start_15
    iget-object v1, p0, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 363
    invoke-static {}, Lcg;->b()Z
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_56

    move-result v1

    if-eqz v1, :cond_2b

    .line 398
    iget-object v0, p0, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0, v3}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;Lcg;)Lcg;

    goto :goto_14

    .line 369
    :cond_2b
    :try_start_2b
    invoke-static {v0}, LPe;->a(Ljava/util/List;)LZX;
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_56
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_3b

    move-result-object v0

    .line 377
    :try_start_2f
    invoke-static {}, Lcg;->b()Z
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_56

    move-result v1

    if-eqz v1, :cond_42

    .line 398
    iget-object v0, p0, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0, v3}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;Lcg;)Lcg;

    goto :goto_14

    .line 371
    :catch_3b
    move-exception v0

    .line 398
    iget-object v0, p0, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0, v3}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;Lcg;)Lcg;

    goto :goto_14

    .line 380
    :cond_42
    :try_start_42
    iget-object v1, p0, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, LOY;

    invoke-direct {v2, p0, v0}, LOY;-><init>(LOX;LZX;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_56

    .line 398
    iget-object v0, p0, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v0, v3}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;Lcg;)Lcg;

    goto :goto_14

    :catchall_56
    move-exception v0

    iget-object v1, p0, LOX;->a:Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;

    invoke-static {v1, v3}, Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;->a(Lcom/google/android/apps/docs/sharingactivity/AddCollaboratorTextDialogFragment;Lcg;)Lcg;

    throw v0
.end method

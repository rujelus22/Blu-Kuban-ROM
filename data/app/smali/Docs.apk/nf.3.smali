.class public Lnf;
.super Lcg;
.source "CooperateStateMachineProgressFragment.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lnf;->a:Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;

    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lnf;->a:Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a()Lans;

    move-result-object v0

    iget-object v1, p0, Lnf;->a:Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 94
    const/4 v0, 0x0

    .line 95
    :goto_10
    if-ltz v0, :cond_23

    invoke-virtual {p0}, Lnf;->a()Z

    move-result v1

    if-nez v1, :cond_23

    .line 96
    iget-object v1, p0, Lnf;->a:Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;

    invoke-static {v1}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a(Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;)LnQ;

    move-result-object v1

    invoke-interface {v1, v0}, LnQ;->a(I)I

    move-result v0

    goto :goto_10

    .line 98
    :cond_23
    invoke-virtual {p0}, Lnf;->a()Z

    move-result v0

    if-nez v0, :cond_39

    .line 99
    iget-object v0, p0, Lnf;->a:Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/app/BaseActivity;

    .line 100
    new-instance v1, Lng;

    invoke-direct {v1, p0, v0}, Lng;-><init>(Lnf;Lcom/google/android/apps/docs/app/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/app/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 112
    :cond_39
    return-void
.end method

.class Lng;
.super LcI;
.source "CooperateStateMachineProgressFragment.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/BaseActivity;

.field final synthetic a:Lnf;


# direct methods
.method constructor <init>(Lnf;Lcom/google/android/apps/docs/app/BaseActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lng;->a:Lnf;

    iput-object p2, p0, Lng;->a:Lcom/google/android/apps/docs/app/BaseActivity;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lng;->a:Lcom/google/android/apps/docs/app/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/BaseActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 105
    iget-object v0, p0, Lng;->a:Lnf;

    iget-object v0, v0, Lnf;->a:Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a()V

    .line 109
    :goto_f
    return-void

    .line 107
    :cond_10
    iget-object v0, p0, Lng;->a:Lnf;

    iget-object v0, v0, Lnf;->a:Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a(Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;Z)Z

    goto :goto_f
.end method

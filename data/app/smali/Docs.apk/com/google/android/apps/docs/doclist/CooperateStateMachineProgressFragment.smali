.class public Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "CooperateStateMachineProgressFragment.java"

# interfaces
.implements LZN;


# instance fields
.field private a:Lcg;

.field private a:LkR;

.field private a:LnQ;

.field private a:Loc;

.field private m:I

.field private v:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(LnQ;LkR;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    .line 49
    if-eqz p1, :cond_13

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, LafQ;->a(Z)V

    .line 50
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:LnQ;

    .line 51
    invoke-interface {p1, p0}, LnQ;->a(LZN;)V

    .line 52
    iput-object p2, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:LkR;

    .line 53
    iput p3, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->m:I

    .line 54
    return-void

    .line 49
    :cond_13
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;)LnQ;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:LnQ;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->v:Z

    return p1
.end method

.method private p()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:Lcg;

    if-eqz v0, :cond_c

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:Lcg;

    invoke-virtual {v0}, Lcg;->a()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:Lcg;

    .line 146
    :cond_c
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a()Lans;

    move-result-object v1

    invoke-static {v1, v0}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 61
    new-instance v1, Loc;

    iget v2, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->m:I

    invoke-direct {v1, v0, v2}, Loc;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:Loc;

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:LkR;

    invoke-virtual {v0}, LkR;->a()LkU;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, LkU;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:LkR;

    invoke-virtual {v1}, LkR;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:LkR;

    invoke-virtual {v2}, LkR;->d()Z

    move-result v2

    invoke-static {v0, v1, v2}, LkT;->b(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:Loc;

    invoke-virtual {v1, v0}, Loc;->setIcon(I)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:Loc;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:LnQ;

    invoke-interface {v1}, LnQ;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Loc;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:Loc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loc;->setCancelable(Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:Loc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loc;->setCanceledOnTouchOutside(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:Loc;

    return-object v0
.end method

.method public a(JJLjava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Loc;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Loc;->b(JJLjava/lang/String;)V

    .line 78
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 82
    const-string v0, "CooperateStateMachineProgressFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a(Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:LnQ;

    if-nez v0, :cond_12

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a()V

    .line 115
    :goto_11
    return-void

    .line 90
    :cond_12
    new-instance v0, Lnf;

    invoke-direct {v0, p0}, Lnf;-><init>(Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:Lcg;

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a:Lcg;

    invoke-virtual {v0}, Lcg;->start()V

    goto :goto_11
.end method

.method public f()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->f()V

    .line 121
    iget-boolean v0, p0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->v:Z

    if-eqz v0, :cond_a

    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a()V

    .line 124
    :cond_a
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 128
    const-string v0, "CooperateStateMachineProgressFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->p()V

    .line 130
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->h()V

    .line 131
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->p()V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 139
    return-void
.end method

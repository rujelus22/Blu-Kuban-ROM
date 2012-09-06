.class public abstract Lcom/google/android/apps/docs/app/AccountListeningActivity;
.super Lcom/google/android/apps/docs/app/BaseDialogActivity;
.source "AccountListeningActivity.java"

# interfaces
.implements LXp;


# instance fields
.field private final a:LXm;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/AccountListeningActivity;-><init>(I)V

    .line 47
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogActivity;-><init>(I)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/AccountListeningActivity;->i:Z

    .line 35
    new-instance v0, LXm;

    new-instance v1, LXq;

    invoke-direct {v1}, LXq;-><init>()V

    invoke-direct {v0, p0, v1}, LXm;-><init>(LXp;LXr;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/AccountListeningActivity;->a:LXm;

    .line 36
    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountListeningActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/AccountListeningActivity;->i:Z

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountListeningActivity;->a:LXm;

    invoke-virtual {v0, p0}, LXm;->a(Landroid/content/Context;)V

    .line 60
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onPause()V

    .line 61
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogActivity;->onResume()V

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/docs/app/AccountListeningActivity;->a:LXm;

    iget-boolean v1, p0, Lcom/google/android/apps/docs/app/AccountListeningActivity;->i:Z

    invoke-virtual {v0, p0, v1}, LXm;->a(Landroid/content/Context;Z)V

    .line 53
    return-void
.end method

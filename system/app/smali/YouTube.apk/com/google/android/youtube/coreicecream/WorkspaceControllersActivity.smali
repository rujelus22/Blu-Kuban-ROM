.class public abstract Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;
.super Lcom/google/android/youtube/coreicecream/ControllerActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/ui/b;


# instance fields
.field private m:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

.field private n:Landroid/app/ActionBar;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->m:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->m:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->setContentView(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->m:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->setOnTabSelectedListener(Lcom/google/android/youtube/core/ui/b;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->n:Landroid/app/ActionBar;

    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->n:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->n:Landroid/app/ActionBar;

    const/16 v1, 0x10

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 39
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/android/youtube/coreicecream/ControllerActivity;->onStart()V

    .line 44
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->o:Z

    if-nez v0, :cond_19

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->o:Z

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->m:Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->n:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->f()Lcom/google/android/youtube/coreicecream/Controller;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/coreicecream/WorkspaceControllersActivity;->a(Lcom/google/android/youtube/coreicecream/Controller;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;->a(Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;Landroid/app/ActionBar;I)Lcom/google/android/youtube/coreicecream/ui/ActionBarWorkspace;

    .line 48
    :cond_19
    return-void
.end method

.class public Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;
.super Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;
.source "ActionBarMenuHandler.java"


# instance fields
.field public a:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/docs/editors/kix/menu/MenuHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()V
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->a:Landroid/view/ActionMode;

    if-nez v0, :cond_b

    .line 33
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->q()V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->b(I)V

    .line 36
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->r()V

    .line 37
    return-void
.end method

.method protected b(I)V
    .registers 4
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->k()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 42
    if-nez p1, :cond_29

    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->a:Landroid/view/ActionMode;

    if-nez v0, :cond_29

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->a:Lcom/google/android/apps/docs/editors/kix/KixEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->setCursorVisible(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LAc;

    invoke-direct {v1, p0}, LAc;-><init>(Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->a:Landroid/view/ActionMode;

    .line 76
    :cond_29
    return-void
.end method

.method public p()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->a:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->a:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 89
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->r()V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->s()V

    .line 91
    return-void
.end method

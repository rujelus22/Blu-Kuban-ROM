.class public LAc;
.super Ljava/lang/Object;
.source "ActionBarMenuHandler.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, LAc;->a:Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, LAc;->a:Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 61
    sget v1, Lur;->menu_editor_editing_action_bar:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
    sget v0, Lup;->menu_action_toolbar:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 63
    iget-object v1, p0, LAc;->a:Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->b(Landroid/view/View;)V

    .line 64
    sget v1, Lup;->toolbar_slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 65
    sget v1, Lup;->toolbar_buttons_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, LAc;->a:Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->b(Landroid/view/View;)V

    .line 54
    iget-object v0, p0, LAc;->a:Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;

    iput-object v1, v0, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->a:Landroid/view/ActionMode;

    .line 55
    iget-object v0, p0, LAc;->a:Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/menu/ActionBarMenuHandler;->p()V

    .line 56
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

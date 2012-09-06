.class LCG;
.super Ljava/lang/Object;
.source "SelectionModeHoneyComb.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic a:LCE;


# direct methods
.method private constructor <init>(LCE;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, LCG;->a:LCE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LCE;LCF;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, LCG;-><init>(LCE;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, LCG;->a:LCE;

    invoke-static {v0}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, LCG;->a:LCE;

    invoke-static {v0}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_1d
    return v0

    :cond_1e
    iget-object v0, p0, LCG;->a:LCE;

    invoke-static {v0}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->b(I)Z

    move-result v0

    goto :goto_1d
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, LCG;->a:LCE;

    invoke-static {v1}, LCE;->a(LCE;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 31
    const v1, 0x102001f

    const v2, 0x104000d

    invoke-interface {p2, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x61

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 34
    iget-object v1, p0, LCG;->a:LCE;

    invoke-static {v1}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->d()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 35
    const v1, 0x1020020

    const-string v2, ""

    invoke-interface {p2, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x78

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    sget v2, LCz;->ic_menu_cut_holo_dark:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 40
    :cond_4e
    iget-object v1, p0, LCG;->a:LCE;

    invoke-static {v1}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->p()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 41
    const v1, 0x1020021

    const-string v2, ""

    invoke-interface {p2, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x63

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    sget v2, LCz;->ic_menu_copy_holo_dark:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 46
    :cond_72
    iget-object v1, p0, LCG;->a:LCE;

    invoke-static {v1}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->e()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 47
    const v1, 0x1020022

    const-string v2, ""

    invoke-interface {p2, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x76

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    sget v2, LCz;->ic_menu_paste_holo_dark:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 52
    :cond_96
    iget-object v1, p0, LCG;->a:LCE;

    invoke-static {v1}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/view/ActionMode$Callback;

    move-result-object v1

    if-eqz v1, :cond_b3

    .line 53
    iget-object v1, p0, LCG;->a:LCE;

    invoke-static {v1}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/view/ActionMode$Callback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 63
    :cond_b2
    :goto_b2
    return v0

    .line 59
    :cond_b3
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_bf

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b2

    .line 60
    :cond_bf
    iget-object v0, p0, LCG;->a:LCE;

    invoke-static {v0}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDp;

    move-result-object v0

    invoke-virtual {v0}, LDp;->a()V

    .line 61
    const/4 v0, 0x1

    goto :goto_b2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, LCG;->a:LCE;

    invoke-static {v0}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 87
    iget-object v0, p0, LCG;->a:LCE;

    invoke-static {v0}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 91
    :cond_19
    iget-object v0, p0, LCG;->a:LCE;

    invoke-static {v0}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDp;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 92
    iget-object v0, p0, LCG;->a:LCE;

    invoke-static {v0}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()LDp;

    move-result-object v0

    invoke-virtual {v0}, LDp;->b()V

    .line 95
    :cond_32
    iget-object v0, p0, LCG;->a:LCE;

    invoke-static {v0}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->u()V

    .line 96
    iget-object v0, p0, LCG;->a:LCE;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LCE;->a(LCE;Z)Z

    .line 97
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, LCG;->a:LCE;

    invoke-static {v0}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 70
    iget-object v0, p0, LCG;->a:LCE;

    invoke-static {v0}, LCE;->a(LCE;)Lcom/google/android/apps/docs/editors/text/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a()Landroid/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 72
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x1

    goto :goto_1a
.end method

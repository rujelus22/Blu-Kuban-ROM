.class public abstract Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;
.super Landroid/support/v4/app/FragmentActivity;
.source "_ActionBarSherlockTrojanHorse.java"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "_ActionBarSherlockTrojanHorse"


# instance fields
.field private mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
.end method

.method public abstract onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end method

.method public onCreatePanelMenu(ILcom/actionbarsherlock/view/Menu;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 44
    if-nez p1, :cond_2e

    .line 45
    invoke-virtual {p0, p2}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v6

    .line 48
    invoke-virtual {p0}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v7

    .line 50
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_7d

    move v4, v5

    move v1, v5

    .line 52
    :goto_14
    iget-object v0, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_2f

    .line 65
    :goto_1e
    iget-object v0, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    .line 66
    :goto_22
    iget-object v0, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_63

    .line 74
    :cond_2a
    iput-object v2, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mCreatedMenus:Ljava/util/ArrayList;

    .line 77
    or-int v5, v6, v1

    .line 82
    :cond_2e
    return v5

    .line 53
    :cond_2f
    iget-object v0, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 54
    if-eqz v0, :cond_7b

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_7b

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_7b

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_7b

    instance-of v3, v0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnCreateOptionsMenuListener;

    if-eqz v3, :cond_7b

    .line 55
    const/4 v3, 0x1

    move-object v1, v0

    .line 56
    check-cast v1, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnCreateOptionsMenuListener;

    invoke-interface {v1, p2, v7}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnCreateOptionsMenuListener;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 57
    if-nez v2, :cond_79

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    :goto_59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    move v0, v3

    .line 52
    :goto_5e
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_14

    .line 67
    :cond_63
    iget-object v0, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 68
    if-eqz v2, :cond_73

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 69
    :cond_73
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 66
    :cond_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_79
    move-object v1, v2

    goto :goto_59

    :cond_7b
    move v0, v1

    goto :goto_5e

    :cond_7d
    move v1, v5

    goto :goto_1e
.end method

.method public onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    if-nez p1, :cond_b

    .line 119
    invoke-virtual {p0, p2}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v2, v3

    .line 134
    :cond_b
    :goto_b
    return v2

    .line 123
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    move v1, v2

    .line 124
    :goto_13
    iget-object v0, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 125
    iget-object v0, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 126
    if-eqz v0, :cond_43

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v4, :cond_43

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_43

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_43

    instance-of v4, v0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnOptionsItemSelectedListener;

    if-eqz v4, :cond_43

    .line 127
    check-cast v0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnOptionsItemSelectedListener;

    invoke-interface {v0, p2}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnOptionsItemSelectedListener;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v2, v3

    .line 128
    goto :goto_b

    .line 124
    :cond_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13
.end method

.method public abstract onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
.end method

.method public abstract onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end method

.method public onPreparePanel(ILandroid/view/View;Lcom/actionbarsherlock/view/Menu;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 89
    if-nez p1, :cond_20

    .line 90
    invoke-virtual {p0, p3}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v3

    .line 94
    iget-object v1, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v1, :cond_47

    move v1, v0

    move v2, v0

    .line 95
    :goto_f
    iget-object v0, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_21

    .line 105
    :goto_19
    or-int v0, v3, v2

    .line 107
    invoke-interface {p3}, Lcom/actionbarsherlock/view/Menu;->hasVisibleItems()Z

    move-result v1

    and-int/2addr v0, v1

    .line 111
    :cond_20
    return v0

    .line 96
    :cond_21
    iget-object v0, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 97
    if-eqz v0, :cond_43

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v4, :cond_43

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_43

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_43

    instance-of v4, v0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnPrepareOptionsMenuListener;

    if-eqz v4, :cond_43

    .line 98
    const/4 v2, 0x1

    .line 99
    check-cast v0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnPrepareOptionsMenuListener;

    invoke-interface {v0, p3}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnPrepareOptionsMenuListener;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    .line 95
    :cond_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_47
    move v2, v0

    goto :goto_19
.end method

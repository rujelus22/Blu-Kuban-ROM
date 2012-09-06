.class public Lcom/actionbarsherlock/internal/ActionBarSherlockNative;
.super Lcom/actionbarsherlock/ActionBarSherlock;
.source "ActionBarSherlockNative.java"


# annotations
.annotation runtime Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
    api = 0xe
.end annotation


# instance fields
.field private mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

.field private mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;-><init>(Landroid/app/Activity;I)V

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    return-void
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    return-object v0
.end method

.method private initActionBar()V
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_d

    .line 43
    :cond_c
    :goto_c
    return-void

    .line 42
    :cond_d
    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    goto :goto_c
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 137
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->unwrap()Landroid/view/Menu;

    move-result-object v0

    if-eq p1, v0, :cond_13

    .line 57
    :cond_c
    new-instance v0, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-direct {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    .line 60
    :cond_13
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->callbackCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 62
    return v0
.end method

.method public dispatchInvalidateOptionsMenu()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 50
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->findItem(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->callbackOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 80
    return v0
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->callbackPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 71
    return v0
.end method

.method public getActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 34
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    return-object v0
.end method

.method protected getThemedContext()Landroid/content/Context;
    .registers 6

    .prologue
    .line 183
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    .line 184
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 186
    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_20

    .line 190
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 192
    :goto_1f
    return-object v0

    :cond_20
    move-object v0, v1

    goto :goto_1f
.end method

.method public hasFeature(I)Z
    .registers 3
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    .line 89
    return v0
.end method

.method public requestFeature(I)Z
    .registers 3
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    .line 98
    return v0
.end method

.method public setContentView(I)V
    .registers 3
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 120
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 121
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 129
    return-void
.end method

.method public setProgress(I)V
    .registers 3
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgress(I)V

    .line 172
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .registers 3
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 165
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .registers 3
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 158
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .registers 3
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 151
    return-void
.end method

.method public setSecondaryProgress(I)V
    .registers 3
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setSecondaryProgress(I)V

    .line 179
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public setUiOptions(I)V
    .registers 3
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setUiOptions(I)V

    .line 106
    return-void
.end method

.method public setUiOptions(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setUiOptions(II)V

    .line 113
    return-void
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .registers 4
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    if-eqz v0, :cond_9

    .line 200
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->finish()V

    .line 202
    :cond_9
    const/4 v0, 0x0

    .line 203
    if-eqz p1, :cond_11

    .line 204
    new-instance v0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;Lcom/actionbarsherlock/view/ActionMode$Callback;)V

    .line 211
    :cond_11
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 213
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    return-object v0
.end method

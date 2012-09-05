.class public Lcom/google/android/music/widgets/TopBarDisplayModeSelector;
.super Lcom/google/android/music/widgets/DisplayModeSelector;
.source "TopBarDisplayModeSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/widgets/TopBarDisplayModeSelector$RootDisplayArrayAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;",
            ">;"
        }
    .end annotation
.end field

.field private mModeSelectorText:Landroid/widget/TextView;

.field private mPopup:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/widgets/DisplayModeSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 41
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-direct {v1, p1, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mPopup:Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mPopup:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ListPopupWindow;

    .line 43
    .local v0, popup:Landroid/widget/ListPopupWindow;
    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 47
    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    new-instance v1, Lcom/google/android/music/widgets/TopBarDisplayModeSelector$RootDisplayArrayAdapter;

    invoke-direct {v1, p1}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector$RootDisplayArrayAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 49
    iget-object v1, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    .end local v0           #popup:Landroid/widget/ListPopupWindow;
    :cond_39
    return-void
.end method


# virtual methods
.method protected addSelector(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;I)V
    .registers 4
    .parameter "state"
    .parameter "order"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_a

    .line 65
    iget-object v0, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 69
    :goto_9
    return-void

    .line 67
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/google/android/music/widgets/DisplayModeSelector;->addSelector(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;I)V

    goto :goto_9
.end method

.method protected createModeSelectorMenu(Lcom/google/android/music/menu/MusicMenu$Callback;)Lcom/google/android/music/menu/MusicMenu;
    .registers 7
    .parameter "callback"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    .line 79
    .local v2, musicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_8
    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 80
    new-instance v0, Lcom/google/android/music/menu/MusicDropdownMenu;

    invoke-virtual {p0}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mModeSelectorText:Landroid/widget/TextView;

    invoke-direct {v0, v3, p1, v4}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 82
    .local v0, dropdown:Lcom/google/android/music/menu/MusicDropdownMenu;
    iget-object v3, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mModeSelectorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonView(Landroid/view/View;)V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_31

    .line 83
    move-object v1, v0

    .line 88
    .end local v0           #dropdown:Lcom/google/android/music/menu/MusicDropdownMenu;
    .local v1, modeSelectorMenu:Lcom/google/android/music/menu/MusicMenu;
    :goto_1f
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 91
    return-object v1

    .line 85
    .end local v1           #modeSelectorMenu:Lcom/google/android/music/menu/MusicMenu;
    :cond_23
    :try_start_23
    new-instance v1, Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {p0}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, v3, p1, v4}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_31

    .restart local v1       #modeSelectorMenu:Lcom/google/android/music/menu/MusicMenu;
    goto :goto_1f

    .line 88
    .end local v1           #modeSelectorMenu:Lcom/google/android/music/menu/MusicMenu;
    :catchall_31
    move-exception v3

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v3
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->showModeSelectorMenu()V

    .line 101
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 55
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mModeSelectorText:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mModeSelectorText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-super {p0}, Lcom/google/android/music/widgets/DisplayModeSelector;->onFinishInflate()V

    .line 59
    new-instance v0, Lcom/google/android/music/FadingColorDrawable;

    invoke-virtual {p0}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 117
    iget-object v0, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mPopup:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->switchRootViewState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 120
    :cond_1c
    return-void
.end method

.method public setSelectedDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 4
    .parameter "rootState"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mModeSelectorText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->getTextResourceId(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    return-void
.end method

.method protected showModeSelectorMenu()V
    .registers 3

    .prologue
    .line 105
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v1

    if-nez v1, :cond_a

    .line 106
    invoke-super {p0}, Lcom/google/android/music/widgets/DisplayModeSelector;->showModeSelectorMenu()V

    .line 113
    :cond_9
    :goto_9
    return-void

    .line 108
    :cond_a
    iget-object v0, p0, Lcom/google/android/music/widgets/TopBarDisplayModeSelector;->mPopup:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ListPopupWindow;

    .line 109
    .local v0, popup:Landroid/widget/ListPopupWindow;
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_9

    .line 110
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_9
.end method

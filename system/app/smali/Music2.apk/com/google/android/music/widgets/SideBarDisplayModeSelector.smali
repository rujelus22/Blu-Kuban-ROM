.class public Lcom/google/android/music/widgets/SideBarDisplayModeSelector;
.super Lcom/google/android/music/widgets/DisplayModeSelector;
.source "SideBarDisplayModeSelector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/widgets/DisplayModeSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/widgets/DisplayModeSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected createModeSelectorMenu(Lcom/google/android/music/menu/MusicMenu$Callback;)Lcom/google/android/music/menu/MusicMenu;
    .registers 4
    .parameter "callback"

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/music/menu/MusicSidebarMenu;

    invoke-virtual {p0}, Lcom/google/android/music/widgets/SideBarDisplayModeSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/music/menu/MusicSidebarMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/google/android/music/widgets/DisplayModeSelector;->onFinishInflate()V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/music/widgets/SideBarDisplayModeSelector;->showModeSelectorMenu()V

    .line 30
    return-void
.end method

.method public setSelectedDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 4
    .parameter "rootState"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/android/music/widgets/SideBarDisplayModeSelector;->getModeSelectorMenu()Lcom/google/android/music/menu/MusicMenu;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenu;->setItemSelected(I)V

    .line 40
    return-void
.end method

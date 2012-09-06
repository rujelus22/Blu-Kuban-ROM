.class public abstract Lcom/google/android/music/widgets/DisplayModeSelector;
.super Landroid/widget/LinearLayout;
.source "DisplayModeSelector.java"

# interfaces
.implements Lcom/google/android/music/menu/MusicMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/widgets/DisplayModeSelector$1;
    }
.end annotation


# instance fields
.field private mModeSelectorMenu:Lcom/google/android/music/menu/MusicMenu;

.field private mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method protected static getTextResourceId(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)I
    .registers 4
    .parameter "rootState"

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/music/widgets/DisplayModeSelector$1;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown root state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_24
    const v0, 0x7f0d00d6

    .line 75
    :goto_27
    return v0

    .line 67
    :pswitch_28
    const v0, 0x7f0d00d7

    goto :goto_27

    .line 69
    :pswitch_2c
    const v0, 0x7f0d00d8

    goto :goto_27

    .line 71
    :pswitch_30
    const v0, 0x7f0d00db

    goto :goto_27

    .line 73
    :pswitch_34
    const v0, 0x7f0d00da

    goto :goto_27

    .line 75
    :pswitch_38
    const v0, 0x7f0d00d9

    goto :goto_27

    .line 62
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method protected addSelector(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;I)V
    .registers 6
    .parameter "state"
    .parameter "order"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/music/widgets/DisplayModeSelector;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    invoke-static {p1}, Lcom/google/android/music/widgets/DisplayModeSelector;->getTextResourceId(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 83
    return-void
.end method

.method protected abstract createModeSelectorMenu(Lcom/google/android/music/menu/MusicMenu$Callback;)Lcom/google/android/music/menu/MusicMenu;
.end method

.method protected getModeSelectorMenu()Lcom/google/android/music/menu/MusicMenu;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/widgets/DisplayModeSelector;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicMenu;

    return-object v0
.end method

.method protected getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/music/widgets/DisplayModeSelector;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 45
    invoke-virtual {p0, p0}, Lcom/google/android/music/widgets/DisplayModeSelector;->createModeSelectorMenu(Lcom/google/android/music/menu/MusicMenu$Callback;)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/widgets/DisplayModeSelector;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicMenu;

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, ordinal:I
    invoke-virtual {p0}, Lcom/google/android/music/widgets/DisplayModeSelector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentCarouselViewEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 49
    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ordinal:I
    .local v1, ordinal:I
    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/widgets/DisplayModeSelector;->addSelector(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;I)V

    move v0, v1

    .line 51
    .end local v1           #ordinal:I
    .restart local v0       #ordinal:I
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/music/widgets/DisplayModeSelector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isRecentWallViewEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 52
    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_WALL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ordinal:I
    .restart local v1       #ordinal:I
    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/widgets/DisplayModeSelector;->addSelector(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;I)V

    move v0, v1

    .line 54
    .end local v1           #ordinal:I
    .restart local v0       #ordinal:I
    :cond_2e
    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ALBUMS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ordinal:I
    .restart local v1       #ordinal:I
    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/widgets/DisplayModeSelector;->addSelector(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;I)V

    .line 55
    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ARTISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #ordinal:I
    .restart local v0       #ordinal:I
    invoke-virtual {p0, v2, v1}, Lcom/google/android/music/widgets/DisplayModeSelector;->addSelector(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;I)V

    .line 56
    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->SONGS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ordinal:I
    .restart local v1       #ordinal:I
    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/widgets/DisplayModeSelector;->addSelector(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;I)V

    .line 57
    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->PLAYLISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #ordinal:I
    .restart local v0       #ordinal:I
    invoke-virtual {p0, v2, v1}, Lcom/google/android/music/widgets/DisplayModeSelector;->addSelector(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;I)V

    .line 58
    sget-object v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->GENRES:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ordinal:I
    .restart local v1       #ordinal:I
    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/widgets/DisplayModeSelector;->addSelector(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;I)V

    .line 59
    return-void
.end method

.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 97
    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->values()[Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v2

    aget-object v0, v1, v2

    .line 98
    .local v0, rootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    iget-object v1, p0, Lcom/google/android/music/widgets/DisplayModeSelector;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v1, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->switchRootViewState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 99
    const/4 v1, 0x1

    return v1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/music/widgets/DisplayModeSelector;->getModeSelectorMenu()Lcom/google/android/music/menu/MusicMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->findSelectedItem()Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 105
    .local v0, selectedItem:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v0, :cond_f

    .line 106
    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenuItem;->requestFocus()Z

    move-result v1

    .line 108
    :goto_e
    return v1

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_e
.end method

.method public setMusicStateController(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 2
    .parameter "musicStateController"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/music/widgets/DisplayModeSelector;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 35
    return-void
.end method

.method public abstract setSelectedDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
.end method

.method protected showModeSelectorMenu()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/music/widgets/DisplayModeSelector;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 94
    return-void
.end method

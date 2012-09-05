.class public Lcom/google/android/music/TabbedLists;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "TabbedLists.java"

# interfaces
.implements Lcom/google/android/music/Workspace$ScreenSwitchListener;
.implements Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TabbedLists$TabSetupInfo;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final sGetFragmentClassFromTabSetupFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/android/music/TabbedLists$TabSetupInfo;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLastRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;


# instance fields
.field private mActiveTab:I

.field mContentViewContainer:Landroid/view/ViewGroup;

.field private mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mScrollView:Lcom/google/android/music/Workspace;

.field private mSubState:Lcom/google/android/music/activitymanagement/MusicState;

.field private mSubViewLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

.field private mTabScroller:Lcom/google/android/music/TabRow;

.field private mTabSetupInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/TabbedLists$TabSetupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-string v0, "TabbedLists"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/TabbedLists;->LOGV:Z

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/TabbedLists;->sLastRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 310
    new-instance v0, Lcom/google/android/music/TabbedLists$1;

    invoke-direct {v0}, Lcom/google/android/music/TabbedLists$1;-><init>()V

    sput-object v0, Lcom/google/android/music/TabbedLists;->sGetFragmentClassFromTabSetupFunction:Lcom/google/common/base/Function;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 75
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    invoke-direct {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mSubViewLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    .line 77
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 78
    const-class v1, Lcom/google/android/music/RecentBrowserActivity;

    const v2, 0x7f0d004f

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabSetupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 80
    const-class v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;

    const v2, 0x7f0d004a

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ARTISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabSetupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 82
    const-class v1, Lcom/google/android/music/AlbumBrowserActivity;

    const v2, 0x7f0d004b

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ALBUMS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabSetupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 84
    const-class v1, Lcom/google/android/music/TrackBrowserActivity;

    const v2, 0x7f0d004d

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->SONGS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabSetupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 86
    const-class v1, Lcom/google/android/music/PlaylistBrowserActivity;

    const v2, 0x7f0d004e

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->PLAYLISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabSetupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 88
    const-class v1, Lcom/google/android/music/GenreAlbumBrowserActivity;

    const v2, 0x7f0d004c

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->GENRES:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabSetupInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 91
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mTabSetupInfo:Ljava/util/List;

    .line 92
    return-void
.end method

.method private getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;
    .registers 4

    .prologue
    .line 170
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTabSetupInfo:Ljava/util/List;

    iget v2, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/TabbedLists$TabSetupInfo;

    .line 171
    .local v0, tabSetupInfo:Lcom/google/android/music/TabbedLists$TabSetupInfo;
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    #getter for: Lcom/google/android/music/TabbedLists$TabSetupInfo;->mFragmentClass:Ljava/lang/Class;
    invoke-static {v0}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->access$100(Lcom/google/android/music/TabbedLists$TabSetupInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v1

    return-object v1
.end method

.method private loadTopLevelDisplayMode()V
    .registers 4

    .prologue
    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTabSetupInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 212
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTabSetupInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/TabbedLists$TabSetupInfo;

    #getter for: Lcom/google/android/music/TabbedLists$TabSetupInfo;->mRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    invoke-static {v1}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->access$200(Lcom/google/android/music/TabbedLists$TabSetupInfo;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/TabbedLists;->sLastRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 213
    iput v0, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    .line 217
    :cond_1f
    return-void

    .line 211
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 238
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_2d

    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mView:Landroid/view/View;

    const v3, 0x7f1000ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 240
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    if-eqz v2, :cond_2d

    .line 241
    iget-object v2, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    iget-object v3, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    invoke-virtual {v3}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 242
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_2d

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 244
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 248
    .end local v1           #v:Landroid/view/View;
    :cond_2d
    if-nez v0, :cond_33

    .line 249
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 251
    :cond_33
    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 13
    .parameter "state"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicStateController;->getCurrentDisplayMode()Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v8

    sput-object v8, Lcom/google/android/music/TabbedLists;->sLastRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 121
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v4, subIntent:Landroid/content/Intent;
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v3

    .line 124
    .local v3, savedBundle:Landroid/os/Bundle;
    if-nez v3, :cond_44

    .line 125
    const/4 v5, 0x0

    .line 129
    .local v5, subStatesBundle:Landroid/os/Bundle;
    :goto_19
    new-instance v8, Lcom/google/android/music/activitymanagement/MusicState;

    invoke-direct {v8, v4, p0, v5}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v8, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 130
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    .line 132
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mTabSetupInfo:Ljava/util/List;

    sget-object v9, Lcom/google/android/music/TabbedLists;->sGetFragmentClassFromTabSetupFunction:Lcom/google/common/base/Function;

    invoke-static {v8, v9}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v2

    .line 134
    .local v2, requiredFragments:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    iget-object v9, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    invoke-virtual {v8, v2, v9}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->launchFragments(Ljava/util/Collection;Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 136
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mTabSetupInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4b

    .line 137
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "the list of tabs was empty"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 127
    .end local v2           #requiredFragments:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    .end local v5           #subStatesBundle:Landroid/os/Bundle;
    :cond_44
    const-string v8, "substates"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .restart local v5       #subStatesBundle:Landroid/os/Bundle;
    goto :goto_19

    .line 139
    .restart local v2       #requiredFragments:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    :cond_4b
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mTabSetupInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/TabbedLists$TabSetupInfo;

    .line 140
    .local v6, tab:Lcom/google/android/music/TabbedLists$TabSetupInfo;
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    #getter for: Lcom/google/android/music/TabbedLists$TabSetupInfo;->mTitleResId:I
    invoke-static {v6}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->access$000(Lcom/google/android/music/TabbedLists$TabSetupInfo;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/music/TabRow;->addTab(I)V

    .line 141
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    #getter for: Lcom/google/android/music/TabbedLists$TabSetupInfo;->mFragmentClass:Ljava/lang/Class;
    invoke-static {v6}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->access$100(Lcom/google/android/music/TabbedLists$TabSetupInfo;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    .line 142
    .local v0, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getView()Landroid/view/View;

    move-result-object v7

    .line 143
    .local v7, view:Landroid/view/View;
    if-nez v7, :cond_93

    .line 144
    new-instance v8, Ljava/lang/NullPointerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Null view for fragment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Lcom/google/android/music/TabbedLists$TabSetupInfo;->mFragmentClass:Ljava/lang/Class;
    invoke-static {v6}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->access$100(Lcom/google/android/music/TabbedLists$TabSetupInfo;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 146
    :cond_93
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mContentViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_51

    .line 149
    .end local v0           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    .end local v6           #tab:Lcom/google/android/music/TabbedLists$TabSetupInfo;
    .end local v7           #view:Landroid/view/View;
    :cond_99
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->loadTopLevelDisplayMode()V

    .line 150
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    iget v9, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    invoke-virtual {v8, v9}, Lcom/google/android/music/TabRow;->setCurrentTab(I)V

    .line 151
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    iget v9, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    invoke-virtual {v8, v9}, Lcom/google/android/music/Workspace;->setCurrentScreen(I)V

    .line 153
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    invoke-virtual {v8, p0}, Lcom/google/android/music/Workspace;->setScreenSwitchListener(Lcom/google/android/music/Workspace$ScreenSwitchListener;)V

    .line 154
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/music/Workspace;->setHorizontalFadingEdgeEnabled(Z)V

    .line 155
    iget-object v8, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    const v9, 0x7f020209

    invoke-virtual {v8, v9}, Lcom/google/android/music/Workspace;->setSeparator(I)V

    .line 156
    return-void
.end method

.method public isFullScreen()Z
    .registers 2

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 6
    .parameter "actionbarConfig"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x1

    .line 185
    invoke-virtual {p1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 186
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 187
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 188
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mTabSetupInfo:Ljava/util/List;

    iget v1, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/TabbedLists$TabSetupInfo;

    #getter for: Lcom/google/android/music/TabbedLists$TabSetupInfo;->mRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    invoke-static {v0}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->access$200(Lcom/google/android/music/TabbedLists$TabSetupInfo;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->PLAYLISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    if-ne v0, v1, :cond_28

    .line 189
    invoke-virtual {p1, v3}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->show(I)V

    .line 193
    :goto_24
    invoke-virtual {p1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->setSplitActionBar(Z)V

    .line 194
    return-void

    .line 191
    :cond_28
    invoke-virtual {p1, v3}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    goto :goto_24
.end method

.method protected onCreate()V
    .registers 4

    .prologue
    .line 96
    sget-boolean v0, Lcom/google/android/music/TabbedLists;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "TabbedLists"

    const-string v1, "onCreate()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_b
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 98
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 100
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/activitymanagement/MusicUIController;Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;)V

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    .line 102
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onCreate()V

    .line 104
    const v0, 0x7f040047

    invoke-virtual {p0, v0}, Lcom/google/android/music/TabbedLists;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mView:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mView:Landroid/view/View;

    const v1, 0x7f1000ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/TabRow;

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    .line 107
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mView:Landroid/view/View;

    const v1, 0x7f1000cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/Workspace;

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    .line 109
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    iput-object v0, p0, Lcom/google/android/music/TabbedLists;->mContentViewContainer:Landroid/view/ViewGroup;

    .line 111
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    invoke-virtual {v0, v1}, Lcom/google/android/music/Workspace;->setTabHolder(Lcom/google/android/music/TabRow;)V

    .line 112
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 265
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 228
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onDestroy()V

    .line 229
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 5
    .parameter "layoutConfig"

    .prologue
    .line 175
    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setUseSystemBackground(Z)V

    .line 177
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    .line 179
    .local v0, primaryFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mSubViewLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V

    .line 180
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mSubViewLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getFocusedAlbumId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setFocusedAlbumId(J)V

    .line 181
    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mSubViewLayoutConfig:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->getNoMusicView()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNoMusicView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V

    .line 182
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->dispatchLowMemory()V

    .line 161
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onPause()V

    .line 222
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 223
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->getPrimaryFragment()Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 270
    return-void
.end method

.method public onReconfigRequested(Lcom/google/android/music/activitymanagement/MusicFragment;)V
    .registers 2
    .parameter "fragment"

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->requestReconfig()V

    .line 321
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 198
    sget-boolean v0, Lcom/google/android/music/TabbedLists;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "TabbedLists"

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_b
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/google/android/music/TabbedLists;->loadTopLevelDisplayMode()V

    .line 203
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mTabScroller:Lcom/google/android/music/TabRow;

    iget v1, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/TabRow;->setCurrentTab(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mScrollView:Lcom/google/android/music/Workspace;

    iget v1, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/Workspace;->setCurrentScreen(I)V

    .line 205
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;->saveState(Ljava/util/Set;)V

    .line 166
    const-string v0, "substates"

    iget-object v1, p0, Lcom/google/android/music/TabbedLists;->mSubState:Lcom/google/android/music/activitymanagement/MusicState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicState;->getAllSavedStates()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public onScreenSwitch(Landroid/view/View;I)V
    .registers 5
    .parameter "newScreen"
    .parameter "newScreenIndex"

    .prologue
    .line 255
    iput p2, p0, Lcom/google/android/music/TabbedLists;->mActiveTab:I

    .line 256
    iget-object v0, p0, Lcom/google/android/music/TabbedLists;->mTabSetupInfo:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/TabbedLists$TabSetupInfo;

    #getter for: Lcom/google/android/music/TabbedLists$TabSetupInfo;->mRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;
    invoke-static {v0}, Lcom/google/android/music/TabbedLists$TabSetupInfo;->access$200(Lcom/google/android/music/TabbedLists$TabSetupInfo;)Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/TabbedLists;->sLastRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    .line 257
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/TabbedLists;->sLastRootViewState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->setDisplayModeWithNoLaunch(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/music/TabbedLists;->requestReconfig()V

    .line 259
    return-void
.end method

.class Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TabbedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TabbedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabbedListPagerAdapter"
.end annotation


# instance fields
.field private final mTabInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/TabbedLists$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/music/TabbedLists;


# direct methods
.method public constructor <init>(Lcom/google/android/music/TabbedLists;)V
    .registers 6
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->this$0:Lcom/google/android/music/TabbedLists;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 323
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 324
    const-class v1, Lcom/google/android/music/PlaylistBrowserActivity;

    const v2, 0x7f0d005e

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->PLAYLISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 326
    const-class v1, Lcom/google/android/music/RecentBrowserActivity;

    const v2, 0x7f0d005f

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 328
    const-class v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;

    const v2, 0x7f0d005a

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ARTISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 330
    const-class v1, Lcom/google/android/music/AlbumBrowserActivity;

    const v2, 0x7f0d005b

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ALBUMS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 332
    const-class v1, Lcom/google/android/music/TrackBrowserActivity;

    const v2, 0x7f0d005d

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->SONGS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 334
    const-class v1, Lcom/google/android/music/GenreAlbumBrowserActivity;

    const v2, 0x7f0d005c

    sget-object v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->GENRES:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-static {v1, v2, v3}, Lcom/google/android/music/TabbedLists$TabInfo;->createTabSetupInfo(Ljava/lang/Class;ILcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)Lcom/google/android/music/TabbedLists$TabInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 337
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->mTabInfo:Ljava/util/List;

    .line 338
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->mTabInfo:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 8
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 358
    move-object v1, p3

    check-cast v1, Lcom/google/android/music/TabbedLists$TabInfo;

    .line 359
    .local v1, tabInfo:Lcom/google/android/music/TabbedLists$TabInfo;
    iget-object v2, p0, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->this$0:Lcom/google/android/music/TabbedLists;

    #getter for: Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;
    invoke-static {v2}, Lcom/google/android/music/TabbedLists;->access$300(Lcom/google/android/music/TabbedLists;)Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    move-result-object v2

    #getter for: Lcom/google/android/music/TabbedLists$TabInfo;->mFragmentClass:Ljava/lang/Class;
    invoke-static {v1}, Lcom/google/android/music/TabbedLists$TabInfo;->access$100(Lcom/google/android/music/TabbedLists$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    .line 360
    .local v0, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 361
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->mTabInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3
    .parameter "object"

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 4
    .parameter "position"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->this$0:Lcom/google/android/music/TabbedLists;

    iget-object v0, p0, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->mTabInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/TabbedLists$TabInfo;

    #getter for: Lcom/google/android/music/TabbedLists$TabInfo;->mTitleResId:I
    invoke-static {v0}, Lcom/google/android/music/TabbedLists$TabInfo;->access$400(Lcom/google/android/music/TabbedLists$TabInfo;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/music/TabbedLists;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7
    .parameter "container"
    .parameter "position"

    .prologue
    .line 343
    iget-object v2, p0, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->mTabInfo:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/TabbedLists$TabInfo;

    .line 344
    .local v1, tabInfo:Lcom/google/android/music/TabbedLists$TabInfo;
    iget-object v2, p0, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->this$0:Lcom/google/android/music/TabbedLists;

    #getter for: Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;
    invoke-static {v2}, Lcom/google/android/music/TabbedLists;->access$300(Lcom/google/android/music/TabbedLists;)Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    move-result-object v2

    #getter for: Lcom/google/android/music/TabbedLists$TabInfo;->mFragmentClass:Ljava/lang/Class;
    invoke-static {v1}, Lcom/google/android/music/TabbedLists$TabInfo;->access$100(Lcom/google/android/music/TabbedLists$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    .line 345
    .local v0, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 346
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 6
    .parameter "view"
    .parameter "obj"

    .prologue
    .line 351
    move-object v0, p2

    check-cast v0, Lcom/google/android/music/TabbedLists$TabInfo;

    .line 352
    .local v0, tabInfo:Lcom/google/android/music/TabbedLists$TabInfo;
    iget-object v1, p0, Lcom/google/android/music/TabbedLists$TabbedListPagerAdapter;->this$0:Lcom/google/android/music/TabbedLists;

    #getter for: Lcom/google/android/music/TabbedLists;->mMusicFragmentManager:Lcom/google/android/music/activitymanagement/MusicFragmentManager;
    invoke-static {v1}, Lcom/google/android/music/TabbedLists;->access$300(Lcom/google/android/music/TabbedLists;)Lcom/google/android/music/activitymanagement/MusicFragmentManager;

    move-result-object v1

    #getter for: Lcom/google/android/music/TabbedLists$TabInfo;->mFragmentClass:Ljava/lang/Class;
    invoke-static {v0}, Lcom/google/android/music/TabbedLists$TabInfo;->access$100(Lcom/google/android/music/TabbedLists$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_19

    const/4 v1, 0x1

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

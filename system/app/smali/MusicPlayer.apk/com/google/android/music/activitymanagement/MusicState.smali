.class public Lcom/google/android/music/activitymanagement/MusicState;
.super Ljava/lang/Object;
.source "MusicState.java"


# instance fields
.field public mInTab:Z

.field private mIsTopLevelLaunch:Z

.field private mPrimaryFragmentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

.field private mPrimaryFragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryFragmentLayout:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

.field private mRequiredFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSavedStates:Landroid/os/Bundle;

.field private final mStateIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .registers 4
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/activitymanagement/MusicState;-><init>(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5
    .parameter "intent"
    .parameter "context"
    .parameter "savedStates"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mInTab:Z

    .line 68
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mStateIntent:Landroid/content/Intent;

    .line 70
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicState;->resolveRequiredFragments(Landroid/content/Intent;)V

    .line 71
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    invoke-direct {v0, p2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentLayout:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    .line 72
    new-instance v0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    invoke-direct {v0, p2}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    .line 73
    iput-object p3, p0, Lcom/google/android/music/activitymanagement/MusicState;->mSavedStates:Landroid/os/Bundle;

    .line 74
    return-void
.end method

.method private static createFragmentSavedStateKey(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isSameComponentClass(Ljava/lang/Class;Landroid/content/Intent;)Z
    .registers 3
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/music/activitymanagement/MusicState;->isSameComponentClass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private static isSameComponentClass(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 4
    .parameter "className"
    .parameter "intent"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 123
    .local v0, component:Landroid/content/ComponentName;
    if-eqz p0, :cond_14

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private resolveRequiredFragments(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    .line 77
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 83
    const-class v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/activitymanagement/MusicState;->isSameComponentClass(Ljava/lang/Class;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 84
    const-class v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 85
    const-class v1, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentClass:Ljava/lang/Class;

    .line 114
    :goto_15
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mRequiredFragments:Ljava/util/Set;

    .line 115
    return-void

    .line 86
    :cond_1c
    const-class v1, Lcom/google/android/music/carousel/CarouselActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/activitymanagement/MusicState;->isSameComponentClass(Ljava/lang/Class;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 87
    const-class v1, Lcom/google/android/music/carousel/CarouselActivity;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 88
    const-class v1, Lcom/google/android/music/carousel/CarouselActivity;

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentClass:Ljava/lang/Class;

    goto :goto_15

    .line 89
    :cond_2e
    const-class v1, Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/activitymanagement/MusicState;->isSameComponentClass(Ljava/lang/Class;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 90
    const-class v1, Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 91
    const-class v1, Lcom/google/android/music/TrackBrowserActivity;

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentClass:Ljava/lang/Class;

    goto :goto_15

    .line 92
    :cond_40
    const-class v1, Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/activitymanagement/MusicState;->isSameComponentClass(Ljava/lang/Class;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 93
    const-class v1, Lcom/google/android/music/AlbumBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 94
    const-class v1, Lcom/google/android/music/AlbumBrowserActivity;

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentClass:Ljava/lang/Class;

    goto :goto_15

    .line 95
    :cond_52
    const-class v1, Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/activitymanagement/MusicState;->isSameComponentClass(Ljava/lang/Class;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 96
    const-class v1, Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 97
    const-class v1, Lcom/google/android/music/PlaylistBrowserActivity;

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentClass:Ljava/lang/Class;

    goto :goto_15

    .line 98
    :cond_64
    const-class v1, Lcom/google/android/music/QueryBrowserActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/activitymanagement/MusicState;->isSameComponentClass(Ljava/lang/Class;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 99
    const-class v1, Lcom/google/android/music/QueryBrowserActivity;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 100
    const-class v1, Lcom/google/android/music/QueryBrowserActivity;

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentClass:Ljava/lang/Class;

    goto :goto_15

    .line 101
    :cond_76
    const-class v1, Lcom/google/android/music/TabbedLists;

    invoke-static {v1, p1}, Lcom/google/android/music/activitymanagement/MusicState;->isSameComponentClass(Ljava/lang/Class;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 102
    const-class v1, Lcom/google/android/music/TabbedLists;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 103
    const-class v1, Lcom/google/android/music/TabbedLists;

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentClass:Ljava/lang/Class;

    goto :goto_15

    .line 104
    :cond_88
    const-class v1, Lcom/google/android/music/athome/AtHomePlaybackActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/activitymanagement/MusicState;->isSameComponentClass(Ljava/lang/Class;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 105
    const-class v1, Lcom/google/android/music/athome/AtHomePlaybackActivity;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 106
    const-class v1, Lcom/google/android/music/athome/AtHomePlaybackActivity;

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentClass:Ljava/lang/Class;

    goto/16 :goto_15

    .line 107
    :cond_9b
    const-class v1, Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v1, p1}, Lcom/google/android/music/activitymanagement/MusicState;->isSameComponentClass(Ljava/lang/Class;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 108
    const-class v1, Lcom/google/android/music/MediaPlaybackActivity;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 109
    const-class v1, Lcom/google/android/music/MediaPlaybackActivity;

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentClass:Ljava/lang/Class;

    goto/16 :goto_15

    .line 111
    :cond_ae
    const-string v1, "MusicState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15
.end method


# virtual methods
.method public equals(Lcom/google/android/music/activitymanagement/MusicState;)Z
    .registers 4
    .parameter "state"

    .prologue
    .line 233
    if-eqz p1, :cond_20

    iget-object v0, p1, Lcom/google/android/music/activitymanagement/MusicState;->mStateIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/music/activitymanagement/MusicState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->bundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 224
    if-eqz p1, :cond_10

    instance-of v0, p1, Lcom/google/android/music/activitymanagement/MusicState;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/google/android/music/activitymanagement/MusicState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/activitymanagement/MusicState;->equals(Lcom/google/android/music/activitymanagement/MusicState;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getAllSavedStates()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mSavedStates:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFragmentActionbarConfig()Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentActionbarConfig:Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;

    return-object v0
.end method

.method public getFragmentLayoutConfig()Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentLayout:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mStateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPrimaryFragmentClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mPrimaryFragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getRequiredFragments()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mRequiredFragments:Ljava/util/Set;

    return-object v0
.end method

.method public getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;
    .registers 4
    .parameter "fragment"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mSavedStates:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mSavedStates:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/MusicState;->createFragmentSavedStateKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 214
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->filterHashCode()I

    move-result v1

    .line 215
    .local v1, hashCode:I
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 216
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_17

    .line 217
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    .line 219
    :cond_17
    return v1
.end method

.method isClearTop()Z
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method isSingleTop()Z
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isTopLevelState()Z
    .registers 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicState;->mIsTopLevelLaunch:Z

    return v0
.end method

.method public saveState(Ljava/util/Set;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, fragments:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v4, totalState:Landroid/os/Bundle;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 150
    .local v0, fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 151
    .local v1, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v2, fragmentState:Landroid/os/Bundle;
    invoke-virtual {v0, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 154
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/MusicState;->createFragmentSavedStateKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    .line 157
    .end local v0           #fragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    .end local v1           #fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    .end local v2           #fragmentState:Landroid/os/Bundle;
    :cond_2f
    iput-object v4, p0, Lcom/google/android/music/activitymanagement/MusicState;->mSavedStates:Landroid/os/Bundle;

    .line 158
    return-void
.end method

.method public setTopLevelState(Z)V
    .registers 2
    .parameter "topLevel"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicState;->mIsTopLevelLaunch:Z

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "MusicState {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicState;->mStateIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " clear_top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicState;->isClearTop()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " single_top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicState;->isSingleTop()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class synthetic Lcom/google/android/music/activitymanagement/MusicStateController$4;
.super Ljava/lang/Object;
.source "MusicStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/MusicStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$ViewLevel:[I

.field static final synthetic $SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1003
    invoke-static {}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->values()[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$ViewLevel:[I

    :try_start_9
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$ViewLevel:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NOW_PLAYING_SCREEN:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_93

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$ViewLevel:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TRACK_LISTING:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_91

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$ViewLevel:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->TOP_LEVEL:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_8f

    .line 526
    :goto_2a
    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->values()[Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    :try_start_33
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_CAROUSEL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_8d

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->NEW_AND_RECENT_WALL:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_8b

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->SONGS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_89

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->GENRES:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_87

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->PLAYLISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_85

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ARTISTS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_83

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->$SwitchMap$com$google$android$music$activitymanagement$TopLevelActivity$RootViewState:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ALBUMS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_81

    :goto_80
    return-void

    :catch_81
    move-exception v0

    goto :goto_80

    :catch_83
    move-exception v0

    goto :goto_75

    :catch_85
    move-exception v0

    goto :goto_6a

    :catch_87
    move-exception v0

    goto :goto_5f

    :catch_89
    move-exception v0

    goto :goto_54

    :catch_8b
    move-exception v0

    goto :goto_49

    :catch_8d
    move-exception v0

    goto :goto_3e

    .line 1003
    :catch_8f
    move-exception v0

    goto :goto_2a

    :catch_91
    move-exception v0

    goto :goto_1f

    :catch_93
    move-exception v0

    goto :goto_14
.end method

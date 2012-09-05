.class synthetic Lcom/google/android/music/EmptyViewController$6;
.super Ljava/lang/Object;
.source "EmptyViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/EmptyViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$NoMusicView:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 113
    invoke-static {}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->values()[Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/music/EmptyViewController$6;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$NoMusicView:[I

    :try_start_9
    sget-object v0, Lcom/google/android/music/EmptyViewController$6;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$NoMusicView:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/music/EmptyViewController$6;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$NoMusicView:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->MUSIC:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/music/EmptyViewController$6;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$NoMusicView:[I

    sget-object v1, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->PLAYLISTS:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method

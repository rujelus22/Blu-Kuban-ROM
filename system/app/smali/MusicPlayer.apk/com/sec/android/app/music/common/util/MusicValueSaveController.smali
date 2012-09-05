.class public Lcom/sec/android/app/music/common/util/MusicValueSaveController;
.super Ljava/lang/Object;
.source "MusicValueSaveController.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCurrentTab:I

.field private static mCustomEqualizer:Ljava/lang/String;

.field private static mEffect:I

.field private static mEqualizer:I

.field private static mLyric:Z

.field private static mMusicMenu:Ljava/lang/String;

.field private static mMusicMenuOrder:Ljava/lang/String;

.field private static mPlaylistMenu:Ljava/lang/String;

.field private static mRecentFilePath:Ljava/lang/String;

.field private static mRecentFilterValue:Ljava/lang/String;

.field private static mRecentListType:I

.field private static mRepeat:I

.field private static mSaveCurrentTab:Z

.field private static mSaveCustomEqualizer:Z

.field private static mSaveEffect:Z

.field private static mSaveEqualizer:Z

.field private static mSaveMusicMenu:Z

.field private static mSaveMusicMenuOrder:Z

.field private static mSavePlaylistMenu:Z

.field private static mSaveRepeat:Z

.field private static mSaveShuffle:Z

.field private static mSaveVisualization:Z

.field private static mShuffle:I

.field private static mVisualization:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 21
    const-class v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->TAG:Ljava/lang/String;

    .line 46
    sput v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEffect:I

    .line 48
    sput v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 50
    sput v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 52
    sput v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 55
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mVisualization:Z

    .line 57
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mLyric:Z

    .line 59
    sput v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentListType:I

    .line 67
    sput v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCurrentTab:I

    .line 74
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveMusicMenuOrder:Z

    .line 76
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 78
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 80
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    .line 82
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 84
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 86
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 88
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 90
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveVisualization:Z

    .line 94
    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveCurrentTab:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentTab(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 269
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCurrentTab:I

    if-ne v1, v2, :cond_11

    .line 270
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "prefer.currenttab"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCurrentTab:I

    .line 273
    .end local v0           #settings:Landroid/content/SharedPreferences;
    :cond_11
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCurrentTab:I

    return v1
.end method

.method public static getCustomEqualizer(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 149
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 150
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 159
    :goto_6
    return-object v1

    .line 152
    :cond_7
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "user_equalizer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 155
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    if-nez v1, :cond_1f

    .line 156
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 157
    const-string v1, "0|0|0|0|0|0|0|0|"

    sput-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 159
    :cond_1f
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static getEffect(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 164
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEffect:I

    if-eq v1, v2, :cond_8

    .line 165
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEffect:I

    .line 173
    :goto_7
    return v1

    .line 167
    :cond_8
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "effect"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEffect:I

    .line 169
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEffect:I

    if-ne v1, v2, :cond_1e

    .line 170
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 171
    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEffect:I

    .line 173
    :cond_1e
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEffect:I

    goto :goto_7
.end method

.method public static getEqualizer(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 178
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEqualizer:I

    if-eq v1, v2, :cond_9

    .line 179
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 187
    :goto_8
    return v1

    .line 181
    :cond_9
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 182
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "equalizer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 183
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEqualizer:I

    if-ne v1, v2, :cond_1d

    .line 184
    sput-boolean v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 185
    sput v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 187
    :cond_1d
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEqualizer:I

    goto :goto_8
.end method

.method public static getLyric(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 213
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "lyric"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mLyric:Z

    .line 215
    sget-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mLyric:Z

    return v1
.end method

.method public static getMusicMenu(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "context"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 117
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 118
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 127
    :goto_9
    return-object v1

    .line 120
    :cond_a
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "tab_menu_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 122
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    if-nez v1, :cond_3b

    .line 123
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 124
    const-string v1, "%d|%d|%d|"

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 127
    :cond_3b
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static getMusicMenuOrder(Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .parameter "context"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 99
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 100
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    .line 112
    :goto_b
    return-object v1

    .line 102
    :cond_c
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "tab_menu_list_order"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    .line 105
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    if-nez v1, :cond_51

    .line 106
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveMusicMenuOrder:Z

    .line 108
    const-string v1, "%d|%d|%d|%d|%d|%d|"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    .line 112
    :cond_51
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 132
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 133
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 144
    :goto_7
    return-object v1

    .line 135
    :cond_8
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "playlist_menu_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 138
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    if-nez v1, :cond_40

    .line 139
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 141
    const-string v1, "%d|%d|%d|"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 144
    :cond_40
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static getRecentFilePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 246
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentFilePath:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 247
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentFilePath:Ljava/lang/String;

    .line 251
    :goto_6
    return-object v1

    .line 249
    :cond_7
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "RECENT_FILEPATH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentFilePath:Ljava/lang/String;

    .line 251
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentFilePath:Ljava/lang/String;

    goto :goto_6
.end method

.method public static getRecentFilterValue(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 256
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentFilterValue:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 257
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentFilterValue:Ljava/lang/String;

    .line 261
    :goto_6
    return-object v1

    .line 259
    :cond_7
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 260
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "RECENT_FILTER_VALUE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentFilterValue:Ljava/lang/String;

    .line 261
    sget-object v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentFilterValue:Ljava/lang/String;

    goto :goto_6
.end method

.method public static getRecentListType(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 233
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentListType:I

    if-eq v1, v2, :cond_8

    .line 234
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentListType:I

    .line 241
    :goto_7
    return v1

    .line 236
    :cond_8
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "RECENT_LIST_TYPE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentListType:I

    .line 238
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentListType:I

    if-ne v1, v2, :cond_1b

    .line 239
    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentListType:I

    .line 241
    :cond_1b
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRecentListType:I

    goto :goto_7
.end method

.method public static getRepeat(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 192
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRepeat:I

    if-eq v1, v2, :cond_8

    .line 193
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 201
    :goto_7
    return v1

    .line 195
    :cond_8
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "prefer.repeat"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 197
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRepeat:I

    if-ne v1, v2, :cond_1e

    .line 198
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 199
    const/4 v1, 0x2

    sput v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 201
    :cond_1e
    sget v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRepeat:I

    goto :goto_7
.end method

.method public static getShuffle(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 219
    sget v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mShuffle:I

    if-eq v3, v4, :cond_e

    .line 220
    sget v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mShuffle:I

    if-nez v3, :cond_c

    .line 228
    :cond_b
    :goto_b
    return v1

    :cond_c
    move v1, v2

    .line 220
    goto :goto_b

    .line 222
    :cond_e
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 223
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v3, "prefer.shuffle"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 224
    sget v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mShuffle:I

    if-ne v3, v4, :cond_22

    .line 225
    sput-boolean v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 226
    sput v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 228
    :cond_22
    sget v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mShuffle:I

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_b
.end method

.method public static getVisualization(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 207
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 208
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "visualization"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mVisualization:Z

    .line 209
    sget-boolean v1, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mVisualization:Z

    return v1
.end method

.method public static savePlayFilterValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "listType"
    .parameter "filePath"
    .parameter "filterValue"

    .prologue
    .line 420
    sget-object v2, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savePlayFilterValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 423
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 424
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "RECENT_LIST_TYPE"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 425
    const-string v2, "RECENT_FILEPATH"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 426
    const-string v2, "RECENT_FILTER_VALUE"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 428
    return-void
.end method

.method public static saveSettingValue(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 333
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 334
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 335
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .line 337
    .local v0, changed:Z
    sget-boolean v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveMusicMenuOrder:Z

    if-eqz v3, :cond_18

    .line 338
    const-string v3, "tab_menu_list_order"

    sget-object v4, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveMusicMenuOrder:Z

    .line 340
    const/4 v0, 0x1

    .line 343
    :cond_18
    sget-boolean v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    if-eqz v3, :cond_41

    .line 344
    const-string v3, "tab_menu_list"

    sget-object v4, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 346
    const/4 v0, 0x1

    .line 352
    sget-object v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    sget v4, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCurrentTab:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 353
    sget-object v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->TAG:Ljava/lang/String;

    const-string v4, "Make current tab as All tab."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v3, -0x1

    sput v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCurrentTab:I

    .line 357
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveCurrentTab:Z

    .line 362
    :cond_41
    sget-boolean v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    if-eqz v3, :cond_4f

    .line 363
    const-string v3, "playlist_menu_list"

    sget-object v4, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 364
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 365
    const/4 v0, 0x1

    .line 368
    :cond_4f
    sget-boolean v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    if-eqz v3, :cond_5d

    .line 369
    const-string v3, "user_equalizer"

    sget-object v4, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    .line 371
    const/4 v0, 0x1

    .line 374
    :cond_5d
    sget-boolean v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    if-eqz v3, :cond_6b

    .line 375
    const-string v3, "effect"

    sget v4, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEffect:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 376
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 377
    const/4 v0, 0x1

    .line 380
    :cond_6b
    sget-boolean v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    if-eqz v3, :cond_79

    .line 381
    const-string v3, "equalizer"

    sget v4, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEqualizer:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 382
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 383
    const/4 v0, 0x1

    .line 386
    :cond_79
    sget-boolean v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    if-eqz v3, :cond_87

    .line 387
    const-string v3, "prefer.repeat"

    sget v4, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRepeat:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 388
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 389
    const/4 v0, 0x1

    .line 397
    :cond_87
    sget-boolean v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    if-eqz v3, :cond_95

    .line 398
    const-string v3, "prefer.shuffle"

    sget v4, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mShuffle:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 399
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 400
    const/4 v0, 0x1

    .line 405
    :cond_95
    sget-boolean v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveCurrentTab:Z

    if-eqz v3, :cond_a3

    .line 406
    const-string v3, "prefer.currenttab"

    sget v4, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCurrentTab:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 407
    sput-boolean v5, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveCurrentTab:Z

    .line 408
    const/4 v0, 0x1

    .line 412
    :cond_a3
    if-eqz v0, :cond_af

    .line 413
    sget-object v3, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->TAG:Ljava/lang/String;

    const-string v4, "Data saved"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    :cond_af
    return-void
.end method

.method public static setCurrentTab(I)V
    .registers 2
    .parameter "currentTab"

    .prologue
    .line 325
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveCurrentTab:Z

    .line 326
    sput p0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCurrentTab:I

    .line 327
    return-void
.end method

.method public static setCustomEqualizer(Ljava/lang/String;)V
    .registers 2
    .parameter "customEqualizer"

    .prologue
    .line 294
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    .line 295
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public static setEffect(I)V
    .registers 2
    .parameter "effect"

    .prologue
    .line 299
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 300
    sput p0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEffect:I

    .line 301
    return-void
.end method

.method public static setEqualizer(I)V
    .registers 2
    .parameter "equalizer"

    .prologue
    .line 304
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 305
    sput p0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 306
    return-void
.end method

.method public static setMusicMenu(Ljava/lang/String;)V
    .registers 2
    .parameter "musicMenu"

    .prologue
    .line 284
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 285
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public static setMusicMenuOrder(Ljava/lang/String;)V
    .registers 2
    .parameter "musicMenuOrder"

    .prologue
    .line 279
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveMusicMenuOrder:Z

    .line 280
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public static setPlaylistMenu(Ljava/lang/String;)V
    .registers 2
    .parameter "playlistMenu"

    .prologue
    .line 289
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 290
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public static setRepeat(I)V
    .registers 2
    .parameter "repeat"

    .prologue
    .line 309
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 310
    sput p0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 311
    return-void
.end method

.method public static setShuffle(Z)V
    .registers 2
    .parameter "shuffle"

    .prologue
    const/4 v0, 0x1

    .line 318
    sput-boolean v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 319
    if-eqz p0, :cond_8

    :goto_5
    sput v0, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 320
    return-void

    .line 319
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

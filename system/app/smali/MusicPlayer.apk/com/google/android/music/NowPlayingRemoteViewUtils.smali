.class public Lcom/google/android/music/NowPlayingRemoteViewUtils;
.super Ljava/lang/Object;
.source "NowPlayingRemoteViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    return-void
.end method

.method public static buildConfig(Landroid/content/Context;I)Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    .registers 10
    .parameter "context"
    .parameter "layoutId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 337
    new-instance v0, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;

    invoke-direct {v0}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;-><init>()V

    .line 338
    .local v0, config:Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;
    invoke-virtual {v0, p1}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setLayoutId(I)V

    .line 342
    :try_start_a
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 343
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v2, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 344
    .local v3, v:Landroid/view/View;
    const/4 v7, 0x1

    const v6, 0x7f1000cc

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_b5

    move v6, v4

    :goto_1e
    invoke-virtual {v0, v7, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setElement(IZ)V

    .line 346
    const/16 v7, 0x20

    const v6, 0x7f1000e6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_b8

    move v6, v4

    :goto_2d
    invoke-virtual {v0, v7, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setElement(IZ)V

    .line 348
    const/4 v7, 0x4

    const v6, 0x7f100065

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_bb

    move v6, v4

    :goto_3b
    invoke-virtual {v0, v7, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setElement(IZ)V

    .line 350
    const/4 v7, 0x2

    const v6, 0x7f100066

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_be

    move v6, v4

    :goto_49
    invoke-virtual {v0, v7, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setElement(IZ)V

    .line 352
    const/16 v7, 0x200

    const v6, 0x7f1000e7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_c0

    move v6, v4

    :goto_58
    invoke-virtual {v0, v7, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setElement(IZ)V

    .line 354
    const/16 v7, 0x40

    const v6, 0x7f100027

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_c2

    move v6, v4

    :goto_67
    invoke-virtual {v0, v7, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setElement(IZ)V

    .line 356
    const/16 v7, 0x80

    const v6, 0x7f10004d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_c4

    move v6, v4

    :goto_76
    invoke-virtual {v0, v7, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setElement(IZ)V

    .line 358
    const/16 v7, 0x100

    const v6, 0x7f10002d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_c6

    move v6, v4

    :goto_85
    invoke-virtual {v0, v7, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setElement(IZ)V

    .line 360
    const/16 v7, 0x400

    const v6, 0x7f10011f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_c8

    move v6, v4

    :goto_94
    invoke-virtual {v0, v7, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setElement(IZ)V

    .line 362
    const/16 v7, 0x800

    const v6, 0x7f1000c4

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_ca

    move v6, v4

    :goto_a3
    invoke-virtual {v0, v7, v6}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setElement(IZ)V

    .line 364
    const/16 v6, 0x1000

    const v7, 0x7f1000c5

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_cc

    :goto_b1
    invoke-virtual {v0, v6, v4}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->setElement(IZ)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b4} :catch_ce

    .line 370
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #v:Landroid/view/View;
    :goto_b4
    return-object v0

    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v3       #v:Landroid/view/View;
    :cond_b5
    move v6, v5

    .line 344
    goto/16 :goto_1e

    :cond_b8
    move v6, v5

    .line 346
    goto/16 :goto_2d

    :cond_bb
    move v6, v5

    .line 348
    goto/16 :goto_3b

    :cond_be
    move v6, v5

    .line 350
    goto :goto_49

    :cond_c0
    move v6, v5

    .line 352
    goto :goto_58

    :cond_c2
    move v6, v5

    .line 354
    goto :goto_67

    :cond_c4
    move v6, v5

    .line 356
    goto :goto_76

    :cond_c6
    move v6, v5

    .line 358
    goto :goto_85

    :cond_c8
    move v6, v5

    .line 360
    goto :goto_94

    :cond_ca
    move v6, v5

    .line 362
    goto :goto_a3

    :cond_cc
    move v4, v5

    .line 364
    goto :goto_b1

    .line 366
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #v:Landroid/view/View;
    :catch_ce
    move-exception v1

    .line 367
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "NowPlayingRemoteViewUtils"

    const-string v5, "Failed to inflate layout to extract config info"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b4
.end method

.method public static createViews(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;)Landroid/widget/RemoteViews;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->getLayoutId()I

    move-result v1

    invoke-direct {v10, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 41
    const v0, 0x7f100065

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 46
    const v0, 0x7f100066

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 51
    const v0, 0x7f1000e8

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.veto"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 59
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasPreviousButton()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 60
    const v1, 0x7f100065

    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->isPreviousVisible()Z

    move-result v0

    if-eqz v0, :cond_23f

    const/4 v0, 0x0

    :goto_68
    invoke-virtual {v10, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 66
    :cond_6b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    const-string v1, "removeNotification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const-string v1, "googlemusic"

    const-string v2, "togglePause"

    const-string v3, "removeNotification"

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    const v1, 0x7f1000cc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 72
    const v1, 0x7f100064

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 74
    const v1, 0x7f10011e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 81
    const-string v0, "playing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_243

    .line 83
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v8, v0

    .line 99
    :goto_d8
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    const-string v0, "track"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "album"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    const-string v1, "albumId"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v1, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 104
    const-string v4, "supportsRating"

    const/4 v7, 0x1

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 107
    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_268

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_268

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_268

    const/4 v4, 0x1

    .line 110
    :goto_112
    if-eqz v5, :cond_26b

    .line 111
    const v6, 0x7f100123

    const/4 v7, 0x0

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 112
    const v6, 0x7f10004d

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasTrackName()Z

    move-result v6

    if-eqz v6, :cond_139

    .line 114
    const v6, 0x7f100027

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 115
    const v6, 0x7f100122

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 117
    :cond_139
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasArtistName()Z

    move-result v6

    if-eqz v6, :cond_147

    .line 118
    const v6, 0x7f10004d

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 120
    :cond_147
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasAlbumName()Z

    move-result v6

    if-eqz v6, :cond_155

    .line 121
    const v6, 0x7f10002d

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 123
    :cond_155
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasAlbumArtist()Z

    move-result v6

    if-eqz v6, :cond_163

    .line 124
    const v6, 0x7f1000e7

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 127
    :cond_163
    const v6, 0x7f100123

    invoke-virtual {v10, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 128
    const v6, 0x7f100123

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object v6, v3

    move-object v7, v0

    .line 189
    :goto_171
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasRatings()Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 190
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->isRatingsVisible()Z

    move-result v0

    if-eqz v0, :cond_3b3

    .line 191
    if-eqz v9, :cond_39a

    .line 192
    const-string v0, "rating"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 194
    invoke-static {v0}, Lcom/google/android/music/RatingSelector;->convertRatingToThumbs(I)I

    move-result v0

    .line 196
    const/4 v3, 0x5

    if-ne v0, v3, :cond_343

    .line 198
    const v0, 0x7f10011f

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 199
    const v0, 0x7f100120

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 200
    const v0, 0x7f100121

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    const v0, 0x7f100120

    const/4 v3, 0x0

    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/google/android/music/NowPlayingRemoteViewUtils;->getRatingIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {p0, v3, v9, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 240
    :cond_1b5
    :goto_1b5
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasPlayPauseButton()Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 241
    const-string v0, "playing"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3cd

    .line 242
    const v0, 0x7f1000cc

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 243
    const v0, 0x7f100064

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 244
    const v0, 0x7f10011e

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 245
    const v0, 0x7f10003b

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 263
    :cond_1e3
    :goto_1e3
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_1f6

    .line 264
    const v3, 0x7f100066

    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->isNextVisible()Z

    move-result v0

    if-eqz v0, :cond_412

    const/4 v0, 0x0

    :goto_1f3
    invoke-virtual {v10, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 270
    :cond_1f6
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasPreviousButton()Z

    move-result v0

    if-eqz v0, :cond_209

    .line 271
    const v3, 0x7f100065

    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->isPreviousVisible()Z

    move-result v0

    if-eqz v0, :cond_416

    const/4 v0, 0x0

    :goto_206
    invoke-virtual {v10, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 277
    :cond_209
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasAlbumArt()Z

    move-result v0

    if-eqz v0, :cond_23e

    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->isAlbumArtVisible()Z

    move-result v0

    if-eqz v0, :cond_23e

    .line 278
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->getAlbumArtWidth()I

    move-result v3

    .line 279
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->getAlbumArtHeight()I

    move-result v4

    .line 281
    const/4 v5, 0x0

    .line 282
    const/4 v9, -0x1

    .line 283
    const-string v0, "albumArtFromService"

    const/4 v11, 0x0

    invoke-virtual {p1, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_41a

    .line 285
    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    move v0, v9

    .line 301
    :goto_230
    if-eqz v1, :cond_45b

    .line 302
    const v0, 0x7f1000e6

    invoke-virtual {v10, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 303
    const v0, 0x7f1000e6

    invoke-virtual {v10, v0, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 312
    :cond_23e
    :goto_23e
    return-object v10

    .line 60
    :cond_23f
    const/16 v0, 0x8

    goto/16 :goto_68

    .line 91
    :cond_243
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    const-class v4, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_d8

    .line 107
    :cond_268
    const/4 v4, 0x0

    goto/16 :goto_112

    .line 130
    :cond_26b
    const v7, 0x7f100123

    const/16 v11, 0x8

    invoke-virtual {v10, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_280

    .line 133
    const v0, 0x7f0d0074

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_280
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28d

    .line 136
    const v3, 0x7f0d0075

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    :cond_28d
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasTrackName()Z

    move-result v7

    if-eqz v7, :cond_2a5

    .line 141
    if-eqz v4, :cond_2d9

    .line 142
    const v6, 0x7f100027

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 143
    const v6, 0x7f100122

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 153
    :cond_2a5
    :goto_2a5
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasArtistName()Z

    move-result v6

    if-eqz v6, :cond_2b5

    .line 154
    if-eqz v4, :cond_2f4

    .line 155
    const v6, 0x7f10004d

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 164
    :cond_2b5
    :goto_2b5
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasAlbumName()Z

    move-result v6

    if-eqz v6, :cond_2c5

    .line 165
    if-eqz v4, :cond_308

    .line 166
    const v6, 0x7f10002d

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 175
    :cond_2c5
    :goto_2c5
    invoke-virtual {p2}, Lcom/google/android/music/NowPlayingRemoteViewUtils$Config;->hasAlbumArtist()Z

    move-result v6

    if-eqz v6, :cond_33f

    .line 176
    if-eqz v4, :cond_31c

    .line 177
    const v6, 0x7f1000e7

    const/16 v7, 0x8

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object v6, v3

    move-object v7, v0

    goto/16 :goto_171

    .line 145
    :cond_2d9
    const v7, 0x7f100122

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 146
    const v7, 0x7f100027

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 147
    const v7, 0x7f100027

    invoke-virtual {v10, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 148
    const v6, 0x7f100027

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_2a5

    .line 157
    :cond_2f4
    const v6, 0x7f10004d

    const/4 v7, 0x0

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 158
    const v6, 0x7f10004d

    invoke-virtual {v10, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 159
    const v6, 0x7f10004d

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_2b5

    .line 168
    :cond_308
    const v6, 0x7f10002d

    const/4 v7, 0x0

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 169
    const v6, 0x7f10002d

    invoke-virtual {v10, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 170
    const v6, 0x7f10002d

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_2c5

    .line 179
    :cond_31c
    const v6, 0x7f1000e7

    const/4 v7, 0x0

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 180
    const v6, 0x7f1000e7

    const v7, 0x7f0d019e

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-virtual {p0, v7, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 182
    const v6, 0x7f1000e7

    invoke-virtual {v10, v6, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_33f
    move-object v6, v3

    move-object v7, v0

    goto/16 :goto_171

    .line 204
    :cond_343
    const/4 v3, 0x1

    if-ne v0, v3, :cond_370

    .line 206
    const v0, 0x7f10011f

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 207
    const v0, 0x7f100120

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 208
    const v0, 0x7f100121

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 209
    const v0, 0x7f100121

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/music/NowPlayingRemoteViewUtils;->getRatingIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {p0, v3, v9, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1b5

    .line 214
    :cond_370
    const v0, 0x7f10011f

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 215
    const v0, 0x7f100120

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 216
    const v0, 0x7f100121

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 217
    const v0, 0x7f10011f

    const/4 v3, 0x0

    const/4 v9, 0x5

    invoke-static {p0, v9}, Lcom/google/android/music/NowPlayingRemoteViewUtils;->getRatingIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {p0, v3, v9, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1b5

    .line 226
    :cond_39a
    const v0, 0x7f10011f

    const/4 v3, 0x4

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 227
    const v0, 0x7f100120

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 228
    const v0, 0x7f100121

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1b5

    .line 232
    :cond_3b3
    const v0, 0x7f10011f

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 233
    const v0, 0x7f100120

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 234
    const v0, 0x7f100121

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1b5

    .line 247
    :cond_3cd
    if-eqz v4, :cond_3f1

    if-nez v5, :cond_3f1

    .line 248
    const v0, 0x7f1000cc

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 249
    const v0, 0x7f100064

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 250
    const v0, 0x7f10011e

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 251
    const v0, 0x7f10003b

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1e3

    .line 253
    :cond_3f1
    const v0, 0x7f1000cc

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 254
    const v0, 0x7f100064

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 255
    const v0, 0x7f10011e

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 256
    const v0, 0x7f10003b

    const/16 v3, 0x8

    invoke-virtual {v10, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1e3

    .line 264
    :cond_412
    const/16 v0, 0x8

    goto/16 :goto_1f3

    .line 271
    :cond_416
    const/16 v0, 0x8

    goto/16 :goto_206

    .line 287
    :cond_41a
    const-string v0, "externalAlbumArtUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_433

    .line 288
    const-string v0, "externalAlbumArtUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/google/android/music/utils/AlbumArtUtils;->getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    move v0, v9

    goto/16 :goto_230

    .line 291
    :cond_433
    const-string v0, "albumArtResourceId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_445

    .line 292
    const-string v0, "albumArtResourceId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move-object v1, v5

    goto/16 :goto_230

    .line 293
    :cond_445
    const-wide/16 v6, 0x0

    cmp-long v0, v1, v6

    if-ltz v0, :cond_457

    .line 294
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    move v0, v9

    goto/16 :goto_230

    .line 297
    :cond_457
    const/4 v0, -0x1

    move-object v1, v5

    goto/16 :goto_230

    .line 304
    :cond_45b
    if-lez v0, :cond_46b

    .line 305
    const v1, 0x7f1000e6

    invoke-virtual {v10, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 306
    const v0, 0x7f1000e6

    invoke-virtual {v10, v0, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_23e

    .line 308
    :cond_46b
    const-string v0, "NowPlayingRemoteViewUtils"

    const-string v1, "Failed to set album art for the remote views"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23e
.end method

.method public static getRatingIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 316
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rating"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 318
    const-string v1, "rating"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rating://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 329
    return-object v0
.end method

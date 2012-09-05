.class public abstract Lcom/google/android/music/MediaAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "MediaAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MediaAppWidgetProvider$UpdateService;
    }
.end annotation


# static fields
.field private static sHasAlbumArt:Ljava/lang/Boolean;

.field private static sHasPrev:Ljava/lang/Boolean;

.field private static sInstance:Lcom/google/android/music/MediaAppWidgetProvider;

.field private static sUseHolo:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    .line 36
    sput-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasPrev:Ljava/lang/Boolean;

    .line 37
    sput-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sUseHolo:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;[I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaAppWidgetProvider;->defaultAppWidget(Landroid/content/Context;[I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaAppWidgetProvider;->checkLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sUseHolo:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/MediaAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/widget/RemoteViews;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaAppWidgetProvider;->setButtonsVisible(Landroid/widget/RemoteViews;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/MediaAppWidgetProvider;Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private checkLayout(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 252
    sget-object v3, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    if-nez v3, :cond_4d

    .line 253
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 254
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040004

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 255
    .local v1, v:Landroid/view/View;
    const v3, 0x7f100009

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4e

    move v3, v4

    :goto_1c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    .line 256
    const v3, 0x7f10000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_50

    move v3, v4

    :goto_2c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/google/android/music/MediaAppWidgetProvider;->sHasPrev:Ljava/lang/Boolean;

    .line 257
    const v3, 0x7f100006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 258
    .local v2, vv:Landroid/view/View;
    if-eqz v2, :cond_52

    const-string v3, "holo"

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    :goto_47
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/google/android/music/MediaAppWidgetProvider;->sUseHolo:Ljava/lang/Boolean;

    .line 260
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #v:Landroid/view/View;
    .end local v2           #vv:Landroid/view/View;
    :cond_4d
    return-void

    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    .restart local v1       #v:Landroid/view/View;
    :cond_4e
    move v3, v5

    .line 255
    goto :goto_1c

    :cond_50
    move v3, v5

    .line 256
    goto :goto_2c

    .restart local v2       #vv:Landroid/view/View;
    :cond_52
    move v4, v5

    .line 258
    goto :goto_47
.end method

.method private defaultAppWidget(Landroid/content/Context;[I)V
    .registers 16
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 89
    .local v10, res:Landroid/content/res/Resources;
    new-instance v12, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f040004

    invoke-direct {v12, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 91
    .local v12, views:Landroid/widget/RemoteViews;
    const-string v0, "Music"

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 92
    .local v9, preferences:Landroid/content/SharedPreferences;
    const-string v0, "curalbumid"

    const-wide/16 v3, -0x1

    invoke-interface {v9, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 93
    .local v1, id:J
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gez v0, :cond_5d

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v12, v0}, Lcom/google/android/music/MediaAppWidgetProvider;->setButtonsVisible(Landroid/widget/RemoteViews;Z)V

    .line 96
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 97
    const v0, 0x7f100009

    const v3, 0x7f02024e

    invoke-virtual {v12, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 99
    :cond_3a
    const v0, 0x7f100005

    const/16 v3, 0x8

    invoke-virtual {v12, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 100
    const/high16 v0, 0x7f10

    const v3, 0x7f0d007a

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 122
    :cond_4e
    :goto_4e
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-gez v0, :cond_ae

    const/4 v0, 0x1

    :goto_56
    invoke-direct {p0, p1, v12, v3, v0}, Lcom/google/android/music/MediaAppWidgetProvider;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    .line 123
    invoke-direct {p0, p1, p2, v12}, Lcom/google/android/music/MediaAppWidgetProvider;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 124
    return-void

    .line 103
    :cond_5d
    const/4 v0, 0x1

    invoke-direct {p0, v12, v0}, Lcom/google/android/music/MediaAppWidgetProvider;->setButtonsVisible(Landroid/widget/RemoteViews;Z)V

    .line 104
    const v0, 0x7f100005

    const/4 v3, 0x0

    invoke-virtual {v12, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    const-string v0, "curartist"

    const v3, 0x7f0d0064

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, artist:Ljava/lang/String;
    const-string v0, "curalbum"

    const v3, 0x7f0d0065

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, album:Ljava/lang/String;
    const-string v0, "curtitle"

    const-string v3, ""

    invoke-interface {v9, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 114
    .local v11, title:Ljava/lang/String;
    const v0, 0x7f100005

    invoke-virtual {v12, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 115
    const/high16 v0, 0x7f10

    invoke-virtual {v12, v0, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 116
    const/16 v3, 0x3c

    const/16 v4, 0x3c

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 117
    .local v8, b:Landroid/graphics/Bitmap;
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasAlbumArt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 118
    const v0, 0x7f100009

    invoke-virtual {v12, v0, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_4e

    .line 122
    .end local v6           #album:Ljava/lang/String;
    .end local v7           #artist:Ljava/lang/String;
    .end local v8           #b:Landroid/graphics/Bitmap;
    .end local v11           #title:Ljava/lang/String;
    :cond_ae
    const/4 v0, 0x0

    goto :goto_56
.end method

.method static declared-synchronized getInstance()Lcom/google/android/music/MediaAppWidgetProvider;
    .registers 2

    .prologue
    .line 40
    const-class v1, Lcom/google/android/music/MediaAppWidgetProvider;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sInstance:Lcom/google/android/music/MediaAppWidgetProvider;

    if-nez v0, :cond_e

    .line 41
    new-instance v0, Lcom/android/music/MediaAppWidgetProvider;

    invoke-direct {v0}, Lcom/android/music/MediaAppWidgetProvider;-><init>()V

    sput-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sInstance:Lcom/google/android/music/MediaAppWidgetProvider;

    .line 43
    :cond_e
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sInstance:Lcom/google/android/music/MediaAppWidgetProvider;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 148
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 149
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 151
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 274
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    if-eqz p4, :cond_67

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 279
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 292
    :goto_18
    const v2, 0x7f100004

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 293
    const v2, 0x7f100008

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    const-string v2, "removeNotification"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 298
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 300
    const v2, 0x7f100006

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.next"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 304
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 306
    const v2, 0x7f100007

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.previous"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 310
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 315
    const v1, 0x7f10000a

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 316
    return-void

    .line 282
    :cond_67
    if-eqz p3, :cond_7f

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    :goto_70
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 289
    invoke-static {p1, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_18

    .line 285
    :cond_7f
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    const-class v4, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v2, v3, p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_70
.end method

.method private pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 136
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 137
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_a

    .line 138
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 142
    :goto_9
    return-void

    .line 140
    :cond_a
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_9
.end method

.method private setButtonsVisible(Landroid/widget/RemoteViews;Z)V
    .registers 7
    .parameter "views"
    .parameter "visible"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 127
    sget-object v0, Lcom/google/android/music/MediaAppWidgetProvider;->sHasPrev:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 128
    const v3, 0x7f10000a

    if-eqz p2, :cond_26

    move v0, v1

    :goto_11
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 130
    :cond_14
    const v3, 0x7f100006

    if-eqz p2, :cond_28

    move v0, v1

    :goto_1a
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 131
    const v0, 0x7f100007

    if-eqz p2, :cond_2a

    :goto_22
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 132
    return-void

    :cond_26
    move v0, v2

    .line 128
    goto :goto_11

    :cond_28
    move v0, v2

    .line 130
    goto :goto_1a

    :cond_2a
    move v1, v2

    .line 131
    goto :goto_22
.end method


# virtual methods
.method notifyChange(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V
    .registers 4
    .parameter "service"
    .parameter "what"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaAppWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 159
    const-string v0, "com.android.music.metachanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "com.android.music.playstatechanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 161
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/google/android/music/MusicPlaybackService;[I)V

    .line 164
    :cond_1a
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaAppWidgetProvider;->checkLayout(Landroid/content/Context;)V

    .line 51
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_17

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/MediaAppWidgetProvider$UpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    :goto_16
    return-void

    .line 61
    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v1, "command"

    const-string v2, "appwidgetupdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 65
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_16
.end method

.method declared-synchronized performUpdate(Lcom/google/android/music/MusicPlaybackService;[I)V
    .registers 4
    .parameter "service"
    .parameter "appWidgetIds"

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/music/MediaAppWidgetProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/MediaAppWidgetProvider$1;-><init>(Lcom/google/android/music/MediaAppWidgetProvider;Lcom/google/android/music/MusicPlaybackService;[I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 249
    monitor-exit p0

    return-void

    .line 170
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

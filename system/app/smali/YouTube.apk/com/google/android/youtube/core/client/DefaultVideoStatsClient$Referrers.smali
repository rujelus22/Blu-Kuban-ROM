.class public final enum Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/client/al;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum BROWSE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field private static final BY_STRING:Ljava/util/Map;

.field public static final enum CHANNEL_ACTIVITY:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum CHANNEL_FAVORITES:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum CHANNEL_UPLOADS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum HOME_DEFAULT:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum HOME_FEATURED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum HOME_MOST_DISCUSSED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum HOME_MOST_POPULAR:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum HOME_RECOMMENDED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum LIVE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum LIVE_TEASER:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum MY_FAVORITES:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum MY_UPLOADS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum PLAYLIST:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum SUBSCRIPTIONS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum UNKNOWN:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum UPLOADER_NOTIFICATION:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum WATCH_HISTORY:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum WATCH_LATER:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum WATCH_RELATED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum WATCH_RELATED_MUSIC_VIDEO:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum WIDGET:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

.field public static final enum YOUTUBE_SEARCH:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;


# instance fields
.field private final intentString:Ljava/lang/String;

.field private final sDetail:Ljava/lang/String;

.field private final sourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 73
    new-instance v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v1, "HOME_FEATURED"

    const-string v3, "home_featured"

    const-string v4, "y"

    const-string v5, "f:featured"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_FEATURED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 74
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "HOME_MOST_POPULAR"

    const-string v6, "home_most_popular"

    const-string v7, "y"

    const-string v8, "f:topvideos_mp"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_MOST_POPULAR:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 75
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "HOME_MOST_DISCUSSED"

    const-string v6, "home_most_discussed"

    const-string v7, "y"

    const-string v8, "f:topvideos_md"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_MOST_DISCUSSED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 76
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "HOME_RECOMMENDED"

    const-string v6, "home_recommended"

    move v5, v12

    move-object v7, v9

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_RECOMMENDED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 77
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "HOME_DEFAULT"

    const/4 v5, 0x4

    const-string v6, "home_default"

    move-object v7, v9

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_DEFAULT:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 78
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "SUBSCRIPTIONS"

    const/4 v5, 0x5

    const-string v6, "subscriptions"

    const-string v7, "y"

    const-string v8, "f:feedu"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->SUBSCRIPTIONS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 81
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "WATCH_RELATED"

    const/4 v5, 0x6

    const-string v6, "watch_related"

    const-string v7, "yw"

    const-string v8, "f:related"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_RELATED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 82
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "WATCH_RELATED_MUSIC_VIDEO"

    const/4 v5, 0x7

    const-string v6, "watch_related_music_video"

    const-string v7, "yw"

    const-string v8, "f:BFa"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_RELATED_MUSIC_VIDEO:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 85
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "CHANNEL_ACTIVITY"

    const/16 v5, 0x8

    const-string v6, "channel_activity"

    const-string v7, "y"

    const-string v8, "f:channel_activity"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_ACTIVITY:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 86
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "CHANNEL_UPLOADS"

    const/16 v5, 0x9

    const-string v6, "channel_uploads"

    const-string v7, "y"

    const-string v8, "f:channel_uploads"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_UPLOADS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 87
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "CHANNEL_FAVORITES"

    const/16 v5, 0xa

    const-string v6, "channel_favorites"

    const-string v7, "y"

    const-string v8, "f:channel_favorites"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_FAVORITES:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 90
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "MY_UPLOADS"

    const/16 v5, 0xb

    const-string v6, "my_uploads"

    const-string v7, "y"

    const-string v8, "f:my_uploads"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->MY_UPLOADS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 91
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "MY_FAVORITES"

    const/16 v5, 0xc

    const-string v6, "my_favorites"

    const-string v7, "y"

    const-string v8, "f:my_favorites"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->MY_FAVORITES:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 93
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "YOUTUBE_SEARCH"

    const/16 v5, 0xd

    const-string v6, "youtube_search"

    const-string v7, "ys"

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->YOUTUBE_SEARCH:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 94
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "BROWSE"

    const/16 v5, 0xe

    const-string v6, "browse"

    const-string v7, "y"

    const-string v8, "f:browse"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->BROWSE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 95
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "WIDGET"

    const/16 v5, 0xf

    const-string v6, "widget"

    const-string v7, "y"

    const-string v8, "f:widget"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WIDGET:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 96
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "PLAYLIST"

    const/16 v5, 0x10

    const-string v6, "playlist"

    const-string v7, "y"

    const-string v8, "f:plpp_play_all"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->PLAYLIST:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 97
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "UPLOADER_NOTIFICATION"

    const/16 v5, 0x11

    const-string v6, "uploader_notification"

    const-string v7, "y"

    const-string v8, "f:uploader_notification"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->UPLOADER_NOTIFICATION:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 98
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "LIVE"

    const/16 v5, 0x12

    const-string v6, "live"

    const-string v7, "y"

    const-string v8, "f:lb"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->LIVE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 99
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "LIVE_TEASER"

    const/16 v5, 0x13

    const-string v6, "live_teaser"

    const-string v7, "y"

    const-string v8, "f:live_teaser"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->LIVE_TEASER:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 100
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "WATCH_LATER"

    const/16 v5, 0x14

    const-string v6, "watch_later"

    const-string v7, "y"

    const-string v8, "f:watch_later"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_LATER:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 101
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "WATCH_HISTORY"

    const/16 v5, 0x15

    const-string v6, "watch_history"

    const-string v7, "y"

    const-string v8, "f:watch_history"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_HISTORY:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 102
    new-instance v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    const-string v4, "UNKNOWN"

    const/16 v5, 0x16

    const-string v6, "unknown"

    move-object v7, v9

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->UNKNOWN:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 68
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    sget-object v1, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_FEATURED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_MOST_POPULAR:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_MOST_DISCUSSED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_RECOMMENDED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v1, v0, v12

    const/4 v1, 0x4

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->HOME_DEFAULT:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->SUBSCRIPTIONS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_RELATED:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_RELATED_MUSIC_VIDEO:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_ACTIVITY:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_UPLOADS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0xa

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->CHANNEL_FAVORITES:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0xb

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->MY_UPLOADS:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0xc

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->MY_FAVORITES:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0xd

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->YOUTUBE_SEARCH:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0xe

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->BROWSE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0xf

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WIDGET:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0x10

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->PLAYLIST:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0x11

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->UPLOADER_NOTIFICATION:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0x12

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->LIVE:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0x13

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->LIVE_TEASER:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0x14

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_LATER:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0x15

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->WATCH_HISTORY:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    const/16 v1, 0x16

    sget-object v3, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->UNKNOWN:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    aput-object v3, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->$VALUES:[Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    invoke-static {}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->values()[Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    move-result-object v1

    array-length v3, v1

    :goto_20a
    if-ge v2, v3, :cond_218

    aget-object v4, v1, v2

    .line 116
    invoke-interface {v4}, Lcom/google/android/youtube/core/client/al;->getIntentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_20a

    .line 118
    :cond_218
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->BY_STRING:Ljava/util/Map;

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput-object p3, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->intentString:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->sourceId:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->sDetail:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/youtube/core/client/al;
    .registers 2
    .parameter

    .prologue
    .line 133
    sget-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->BY_STRING:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/al;

    .line 134
    if-nez v0, :cond_c

    sget-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->UNKNOWN:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    :cond_c
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;
    .registers 2
    .parameter

    .prologue
    .line 68
    const-class v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->$VALUES:[Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    return-object v0
.end method


# virtual methods
.method public final getIntentString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->intentString:Ljava/lang/String;

    return-object v0
.end method

.method public final getSDetail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->sDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->intentString:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;
.super Landroid/widget/ListView;
.source "AddMusicAlbumSongsPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$AlbumMusicContentObs;,
        Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;,
        Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MyDataObs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ListView;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/media/MediaPlayer$OnCompletionListener;",
        "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
        "Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;",
        "Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;",
        "Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;"
    }
.end annotation


# static fields
.field private static _instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

.field private static isAlbumMusicObs:Z

.field private static mAlbumId:I

.field private static mAlbumMusicConteHan:Landroid/os/Handler;

.field private static mCursor:Landroid/database/Cursor;

.field public static mMusicAddedPath:Ljava/lang/String;

.field private static mMusicContentObs:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$AlbumMusicContentObs;

.field private static mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

.field private static mMusicFileArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/ve/data/VEAlbumSong;",
            ">;"
        }
    .end annotation
.end field

.field static mProjection:[Ljava/lang/String;

.field private static mSelectedAlbumId:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

.field private mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMusicDropView:Lcom/sec/android/app/ve/view/timeline/MusicDropView;

.field private mMusicListView:Landroid/widget/ListView;

.field private mPlayButtonImg:Landroid/widget/ImageView;

.field private mPlayingId:J

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mSelectedUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 70
    sput-object v3, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    .line 74
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const/4 v1, 0x1

    .line 75
    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 76
    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 77
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 78
    const-string v2, "track"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 79
    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 80
    const-string v2, "duration"

    aput-object v2, v0, v1

    .line 74
    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mProjection:[Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    .line 101
    sput-object v3, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    .line 105
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicAddedPath:Ljava/lang/String;

    .line 107
    sput-object v3, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    .line 109
    sput v4, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAlbumId:I

    .line 110
    sput v4, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedAlbumId:I

    .line 282
    sput-object v3, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicContentObs:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$AlbumMusicContentObs;

    .line 283
    sput-boolean v5, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->isAlbumMusicObs:Z

    .line 346
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$1;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAlbumMusicConteHan:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mContext:Landroid/content/Context;

    .line 90
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 92
    iput-wide v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mPlayingId:J

    .line 94
    iput-wide v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedId:J

    .line 97
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAudioManager:Landroid/media/AudioManager;

    .line 99
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mPlayButtonImg:Landroid/widget/ImageView;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedPosition:I

    .line 361
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$2;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    .line 120
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mContext:Landroid/content/Context;

    .line 121
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mContext:Landroid/content/Context;

    .line 90
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 92
    iput-wide v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mPlayingId:J

    .line 94
    iput-wide v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedId:J

    .line 97
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAudioManager:Landroid/media/AudioManager;

    .line 99
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mPlayButtonImg:Landroid/widget/ImageView;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedPosition:I

    .line 361
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$2;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    .line 114
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mContext:Landroid/content/Context;

    .line 115
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    .line 116
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)Lcom/sec/android/app/ve/view/timeline/MusicDropView;
    .registers 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicDropView:Lcom/sec/android/app/ve/view/timeline/MusicDropView;

    return-object v0
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 346
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAlbumMusicConteHan:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2()Z
    .registers 1

    .prologue
    .line 283
    sget-boolean v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->isAlbumMusicObs:Z

    return v0
.end method

.method static synthetic access$3(Z)V
    .registers 1
    .parameter

    .prologue
    .line 283
    sput-boolean p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->isAlbumMusicObs:Z

    return-void
.end method

.method static synthetic access$4(Z)V
    .registers 1
    .parameter

    .prologue
    .line 195
    invoke-static {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->refreshAlbumSongs(Z)V

    return-void
.end method

.method static synthetic access$5()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)I
    .registers 2
    .parameter

    .prologue
    .line 103
    iget v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedPosition:I

    return v0
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private checkForAlbumModification(I)Z
    .registers 13
    .parameter "aAlbumId"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 772
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v10

    .line 794
    :goto_9
    return v0

    .line 775
    :cond_a
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumURI:Landroid/net/Uri;

    .line 776
    sget-object v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mAlbumProjection:[Ljava/lang/String;

    .line 777
    const-string v3, "artist!=\' \'"

    move-object v5, v4

    .line 775
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 780
    .local v9, lCurs:Landroid/database/Cursor;
    if-eqz v9, :cond_3f

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size of the album is -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 783
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 784
    const/4 v6, 0x0

    .local v6, i:I
    :goto_39
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v6, v0, :cond_41

    .end local v6           #i:I
    :cond_3f
    move v0, v10

    .line 794
    goto :goto_9

    .line 785
    .restart local v6       #i:I
    :cond_41
    const-string v0, "album"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 786
    .local v7, lAlbumName:Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 788
    .local v8, lAlubmId:I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Id from the DB is -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 789
    if-ne v8, p1, :cond_6b

    .line 790
    const/4 v0, 0x0

    goto :goto_9

    .line 791
    :cond_6b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 784
    add-int/lit8 v6, v6, 0x1

    goto :goto_39
.end method

.method private static getAlbumMusicContentObsInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$AlbumMusicContentObs;
    .registers 1

    .prologue
    .line 291
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicContentObs:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$AlbumMusicContentObs;

    if-nez v0, :cond_b

    .line 292
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$AlbumMusicContentObs;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$AlbumMusicContentObs;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicContentObs:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$AlbumMusicContentObs;

    .line 293
    :cond_b
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicContentObs:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$AlbumMusicContentObs;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;
    .registers 1

    .prologue
    .line 130
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    return-object v0
.end method

.method private static isSongExistsInAlbum(Ljava/lang/String;)Z
    .registers 4
    .parameter "aSongPath"

    .prologue
    .line 267
    sget-object v2, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    sget-object v2, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 269
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    sget-object v2, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_17

    .line 280
    .end local v0           #i:I
    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2

    .line 271
    .restart local v0       #i:I
    :cond_17
    sget-object v2, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/data/VEAlbumSong;

    .line 272
    .local v1, lVEAlbumSong:Lcom/sec/android/app/ve/data/VEAlbumSong;
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/sec/android/app/ve/data/VEAlbumSong;->getVESongPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 275
    const/4 v2, 0x1

    goto :goto_16

    .line 269
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method private playSelectedMusic(I)V
    .registers 11
    .parameter "aPosition"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x3

    .line 493
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 494
    .local v5, uri:Landroid/net/Uri;
    sget-object v6, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/data/VEAlbumSong;

    .line 495
    .local v2, lVAlbumSong:Lcom/sec/android/app/ve/data/VEAlbumSong;
    invoke-virtual {v2}, Lcom/sec/android/app/ve/data/VEAlbumSong;->getSongId()J

    move-result-wide v3

    .line 497
    .local v3, newId:J
    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedUri:Landroid/net/Uri;

    .line 498
    const-string v6, "This is inside playSelectedMusic"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 500
    iput-wide v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedId:J

    .line 502
    iget-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, p0, v7, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 504
    .local v1, lAudioFocus:I
    if-ne v1, v8, :cond_6c

    .line 506
    iget-wide v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mPlayingId:J

    cmp-long v6, v3, v6

    if-nez v6, :cond_2f

    iget-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v6, :cond_72

    .line 507
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->stopMediaPlayer()V

    .line 509
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 512
    :try_start_39
    const-string v6, "This is inside playSelectedMusic and MediaPlayer start and AudioFocus is granted"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 514
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->setVEVolumeControlSteam(I)V

    .line 515
    iget-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 516
    iget-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 517
    iget-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 518
    iget-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 520
    iget-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    .line 521
    const-string v6, "This is inside playSelectedMusic and after MediaPlayer start"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 522
    iput-wide v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mPlayingId:J

    .line 524
    sget-object v6, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->notifyDataSetChanged()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_6c} :catch_6d

    .line 547
    :cond_6c
    :goto_6c
    return-void

    .line 525
    :catch_6d
    move-exception v0

    .line 526
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6c

    .line 531
    .end local v0           #e:Ljava/io/IOException;
    :cond_72
    iget-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_6c

    .line 534
    iget-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 536
    const-string v6, "Music is already playing so pausing"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->pauseMediaPlayer()V

    .line 544
    :goto_86
    sget-object v6, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->notifyDataSetChanged()V

    goto :goto_6c

    .line 541
    :cond_8c
    const-string v6, "Music is already paused so starting"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 542
    iget-object v6, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    goto :goto_86
.end method

.method private static refreshAlbumSongs(Z)V
    .registers 17
    .parameter "aNotify"

    .prologue
    .line 199
    :try_start_0
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_70

    if-eqz v0, :cond_c

    .line 202
    :try_start_4
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_5c

    .line 206
    :goto_9
    const/4 v0, 0x0

    :try_start_a
    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    .line 209
    :cond_c
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mProjection:[Ljava/lang/String;

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "album_id=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAlbumId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 212
    const-string v5, "title_key"

    .line 209
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    .line 214
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5b

    .line 216
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getAlbumMusicContentObsInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$AlbumMusicContentObs;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 217
    const-string v0, "This is inside refreshAlbumSongs registerContentObserver and close"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 219
    .local v15, size:I
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    const/4 v10, 0x0

    .local v10, i:I
    :goto_56
    if-lt v10, v15, :cond_75

    .line 251
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->isAlbumMusicObs:Z

    .line 257
    .end local v10           #i:I
    .end local v15           #size:I
    :cond_5b
    :goto_5b
    return-void

    .line 203
    :catch_5c
    move-exception v8

    .line 204
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This is inside refreshAlbumSongs AMASPView Exception while closing"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_6f} :catch_70

    goto :goto_9

    .line 254
    .end local v8           #e:Ljava/lang/Exception;
    :catch_70
    move-exception v8

    .line 255
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5b

    .line 223
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v10       #i:I
    .restart local v15       #size:I
    :cond_75
    move v11, v10

    .line 225
    .local v11, lNum:I
    :try_start_76
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 227
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 230
    .local v9, filePath:Ljava/lang/String;
    if-eqz v9, :cond_ed

    const-string v0, ".mp3"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9b

    const-string v0, ".3gp"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 231
    :cond_9b
    invoke-static {v9}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->isSongExistsInAlbum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ed

    .line 233
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, displayName:Ljava/lang/String;
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    const-string v2, "duration"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 235
    .local v7, duration:I
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 236
    .local v13, newId:J
    new-instance v12, Lcom/sec/android/app/ve/data/VEAlbumSong;

    invoke-direct {v12}, Lcom/sec/android/app/ve/data/VEAlbumSong;-><init>()V

    .line 237
    .local v12, lVAlbumSong:Lcom/sec/android/app/ve/data/VEAlbumSong;
    invoke-virtual {v12, v9}, Lcom/sec/android/app/ve/data/VEAlbumSong;->setVESongPath(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v12, v6}, Lcom/sec/android/app/ve/data/VEAlbumSong;->setVESongName(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v12, v7}, Lcom/sec/android/app/ve/data/VEAlbumSong;->setSongDuration(I)V

    .line 240
    invoke-virtual {v12, v13, v14}, Lcom/sec/android/app/ve/data/VEAlbumSong;->setSongId(J)V

    .line 241
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    if-eqz p0, :cond_ed

    .line 245
    const-string v0, "Adding the song to Album sonfgs local array and refreshing view"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->notifyDataSetChanged()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_ed} :catch_70

    .line 221
    .end local v6           #displayName:Ljava/lang/String;
    .end local v7           #duration:I
    .end local v12           #lVAlbumSong:Lcom/sec/android/app/ve/data/VEAlbumSong;
    .end local v13           #newId:J
    :cond_ed
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_56
.end method

.method private removeModifiedAlbum(I)V
    .registers 7
    .parameter "aAlbumId"

    .prologue
    .line 754
    const/4 v2, 0x0

    .line 755
    .local v2, lVAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    const/4 v1, -0x1

    .line 756
    .local v1, lModIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    sget-object v3, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_23

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removing the Modified songs with index -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 768
    sget-object v3, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 769
    return-void

    .line 759
    :cond_23
    sget-object v3, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #lVAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    check-cast v2, Lcom/sec/android/app/ve/data/VEAlbum;

    .line 761
    .restart local v2       #lVAlbum:Lcom/sec/android/app/ve/data/VEAlbum;
    invoke-virtual {v2}, Lcom/sec/android/app/ve/data/VEAlbum;->getVEAlbumId()I

    move-result v3

    if-ne v3, p1, :cond_38

    .line 763
    move v1, v0

    .line 764
    sget-object v3, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 756
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private setListViewAnim()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 555
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 557
    .local v10, set:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 558
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 559
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 561
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 563
    .end local v0           #animation:Landroid/view/animation/Animation;
    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    .line 561
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 565
    .restart local v0       #animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 566
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 568
    new-instance v9, Landroid/view/animation/LayoutAnimationController;

    const/high16 v1, 0x3f00

    invoke-direct {v9, v10, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 569
    .local v9, controller:Landroid/view/animation/LayoutAnimationController;
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicListView:Landroid/widget/ListView;

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 570
    return-void
.end method

.method private setVEVolumeControlSteam(I)V
    .registers 3
    .parameter "aType"

    .prologue
    .line 579
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 580
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setVolumeControlStream(I)V

    .line 581
    :cond_d
    return-void
.end method


# virtual methods
.method public isMusicPlaying()Z
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 614
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onActivityPaused()V
    .registers 2

    .prologue
    .line 717
    const-string v0, "This is inside AMASPView onActivityPaused"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->pauseMediaPlayer()V

    .line 719
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->notifyDataSetChanged()V

    .line 720
    return-void
.end method

.method public onActivityResumed()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 727
    const-string v0, "This is inside AMASPView onActivityResumed"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 728
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 729
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 731
    :cond_18
    sget v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAlbumId:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->checkForAlbumModification(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This is inside AMASPView onActivityResumed and Album Id -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAlbumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 734
    sget-object v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mMusicAlbumThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 736
    const-string v0, "Pausing the MusicalbumThread ...."

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 737
    sput-boolean v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isRefreshSongs:Z

    .line 744
    :goto_49
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->removeMySelf(Landroid/view/View;I)V

    .line 746
    :cond_52
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 747
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 748
    const v0, 0x7f080032

    const/4 v1, -0x1

    invoke-static {v0, v1, v3, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    .line 749
    :cond_69
    invoke-static {v2}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->refreshAlbumSongs(Z)V

    .line 750
    return-void

    .line 741
    :cond_6d
    sput-boolean v3, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isRefreshSongs:Z

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->loadMusicAlbums(Landroid/content/Context;Z)V

    goto :goto_49
.end method

.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "addedView"

    .prologue
    .line 850
    const-string v0, "This is inside onAdded "

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public onAudioFocusChange(I)V
    .registers 4
    .parameter "focusChange"

    .prologue
    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This is inside onAudioFocusChange Callback -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 837
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1d

    .line 839
    const-string v0, "This is inside onAudioFocusChange and VE Music lost focus pausing the music"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->pauseFromOutSide()V

    .line 842
    :cond_1d
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 656
    const-string v0, "This is inside onCompletion of Mediafile"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 657
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedPosition:I

    .line 658
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->notifyDataSetChanged()V

    .line 659
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 800
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 801
    const-string v1, "This is inside onDetachedFromWindow AMASPView"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 802
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedPosition:I

    .line 803
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->stopMediaPlayer()V

    .line 804
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 806
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 808
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 810
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeActivityEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;)V

    .line 812
    :cond_29
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 813
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_39

    .line 814
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 816
    :cond_39
    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_45

    .line 819
    :try_start_3d
    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_4f

    .line 823
    :goto_42
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mCursor:Landroid/database/Cursor;

    .line 826
    :cond_45
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    if-eqz v1, :cond_4e

    .line 827
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/DragLayer;->dropDrag()V

    .line 828
    :cond_4e
    return-void

    .line 820
    :catch_4f
    move-exception v0

    .line 821
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is inside onDetachedFromWindow AMASPView Exception while closing"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_42
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/ListView;->onFinishInflate()V

    .line 139
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicListView:Landroid/widget/ListView;

    .line 140
    return-void
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 861
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 474
    iput p3, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedPosition:I

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 477
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->isVOIPActivated()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 478
    :cond_19
    const-string v1, "Not playing Selected music file :: Call is going on"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 479
    const v1, 0x7f080062

    const/4 v2, -0x1

    invoke-static {v1, v2, v3, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    .line 484
    :goto_25
    return-void

    .line 482
    :cond_26
    invoke-direct {p0, p3}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->playSelectedMusic(I)V

    goto :goto_25
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v4, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/ve/data/VEAlbumSong;

    .line 635
    .local v3, lVAlbumSong:Lcom/sec/android/app/ve/data/VEAlbumSong;
    invoke-virtual {v3}, Lcom/sec/android/app/ve/data/VEAlbumSong;->getVESongPath()Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, filePath:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/android/app/ve/data/VEAlbumSong;->getVESongName()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, displayName:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/android/app/ve/data/VEAlbumSong;->getSongDuration()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 640
    .local v1, duration:I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Music Duration::::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 641
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicDropView:Lcom/sec/android/app/ve/view/timeline/MusicDropView;

    invoke-virtual {v4, v2, v0, v1}, Lcom/sec/android/app/ve/view/timeline/MusicDropView;->setFileInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 642
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    iget-object v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/DragLayer;->setDragListener(Lcom/sec/android/app/ve/view/DragLayer$DragListener;)V

    .line 643
    sget-object v4, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicAddedPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 644
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    const v5, 0x7f0b0067

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/DragLayer;->startDragging(Landroid/view/View;)V

    .line 648
    :goto_4e
    const/4 v4, 0x0

    return v4

    .line 646
    :cond_50
    iget-object v4, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    const v5, 0x7f0b0068

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/DragLayer;->startDragging(Landroid/view/View;)V

    goto :goto_4e
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 677
    const/4 v2, 0x4

    if-ne p1, v2, :cond_16

    .line 680
    sput-boolean v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsAlbumView:Z

    .line 681
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedPosition:I

    .line 682
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->stopMediaPlayer()V

    .line 683
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->removeMySelf(Landroid/view/View;I)V

    .line 709
    :goto_15
    return v1

    .line 686
    :cond_16
    const/16 v2, 0x55

    if-ne p1, v2, :cond_42

    .line 689
    :try_start_1a
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_42

    .line 691
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 693
    const-string v2, "pause mediaplayer after getting KEYCODE_MEDIA_PLAY_PAUSE"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->pauseFromOutSide()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2e} :catch_2f

    goto :goto_15

    .line 704
    :catch_2f
    move-exception v0

    .line 705
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got Exception while play/pause"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 709
    .end local v0           #e:Ljava/lang/Exception;
    :cond_42
    const/4 v1, 0x0

    goto :goto_15

    .line 698
    :cond_44
    :try_start_44
    const-string v2, "resuming mediaplayer after getting KEYCODE_MEDIA_PLAY_PAUSE"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 699
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 700
    sget-object v2, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->notifyDataSetChanged()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_53} :catch_2f

    goto :goto_15
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 5
    .parameter "element"
    .parameter "added"

    .prologue
    const/4 v1, -0x1

    .line 889
    if-eqz p2, :cond_16

    .line 891
    iget-object v0, p1, Lcom/samsung/app/video/editor/external/Element;->filePath:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicAddedPath:Ljava/lang/String;

    .line 892
    const-string v0, "This is inside onMusicChanged "

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 894
    sget v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedAlbumId:I

    sput v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    .line 903
    :goto_10
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->notifyDataSetChanged()V

    .line 905
    return-void

    .line 898
    :cond_16
    const-string v0, "Previous selected music is removed"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 899
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicAddedPath:Ljava/lang/String;

    .line 900
    sput v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedAlbumId:I

    .line 901
    sput v1, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    goto :goto_10
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "removedView"

    .prologue
    .line 870
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 4
    .parameter "element"
    .parameter "elementTime"
    .parameter "transitionTime"

    .prologue
    .line 875
    return-void
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "updatedView"

    .prologue
    .line 879
    return-void
.end method

.method public pauseFromOutSide()V
    .registers 2

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->pauseMediaPlayer()V

    .line 620
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;->notifyDataSetChanged()V

    .line 621
    return-void
.end method

.method pauseMediaPlayer()V
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 605
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_12

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 607
    :cond_12
    return-void
.end method

.method public populateAlbumSongs(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "aAlbumName"
    .parameter "aAlbumArtPath"
    .parameter "aAlbumId"

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_8

    .line 187
    :cond_7
    :goto_7
    return-void

    .line 159
    :cond_8
    sput-boolean v2, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->isAlbumMusicObs:Z

    .line 160
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 161
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setActivityEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;)V

    .line 162
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 163
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAudioManager:Landroid/media/AudioManager;

    .line 167
    sput p3, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mAlbumId:I

    .line 169
    sput p3, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedAlbumId:I

    .line 171
    invoke-static {p1}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4b

    .line 174
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    :cond_4b
    invoke-static {v2}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->refreshAlbumSongs(Z)V

    .line 178
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicListView:Landroid/widget/ListView;

    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicFileAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView$MusicFileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/DragLayer;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicDropView:Lcom/sec/android/app/ve/view/timeline/MusicDropView;

    if-nez v0, :cond_7

    .line 186
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/MusicDropView;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/ve/view/timeline/MusicDropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicDropView:Lcom/sec/android/app/ve/view/timeline/MusicDropView;

    goto :goto_7
.end method

.method stopMediaPlayer()V
    .registers 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    .line 588
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->setVEVolumeControlSteam(I)V

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 592
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mPlayingId:J

    .line 595
    :cond_19
    return-void
.end method

.method public updateAlbumId()V
    .registers 2

    .prologue
    .line 909
    const-string v0, "Updating Album Id when theme music is selected"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 911
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mSelectedAlbumId:I

    .line 912
    return-void
.end method

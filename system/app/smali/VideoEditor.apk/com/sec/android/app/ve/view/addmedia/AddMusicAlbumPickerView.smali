.class public Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;
.super Landroid/widget/ListView;
.source "AddMusicAlbumPickerView.java"

# interfaces
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;
    }
.end annotation


# static fields
.field private static final ALBUMBITMAP_MAP_SIZE:I = 0xa

.field public static final ALBUM_THUMB_THREAD:I = 0x4b

.field private static final LOAD_ALBUMBITMAP_IMAGE:I = 0x4c

.field private static final LOAD_ALBUMBITMAP_IMAGE_NULL:I = 0x4e

.field private static final RECYCLE_ALBUMBITMAP_IMAGE:I = 0x4d

.field private static _instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

.field public static mClickedAlbumPos:I

.field public static mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

.field private mAlbumFetcher:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;

.field public mAlbumHandler:Landroid/os/Handler;

.field private mAlubmThumbClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mDefAlbumIndex:I

.field private mDefaultAlbums:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMusicAlbumAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;

.field mProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    .line 91
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mClickedAlbumPos:I

    .line 95
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mContext:Landroid/content/Context;

    .line 61
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    .line 72
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 74
    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_art"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 75
    const-string v2, "artist"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mProjection:[Ljava/lang/String;

    .line 79
    iput v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I

    .line 81
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    .line 88
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefaultAlbums:[I

    .line 213
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$1;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumFetcher:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;

    .line 303
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$2;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlubmThumbClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 488
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$3;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumHandler:Landroid/os/Handler;

    .line 109
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mContext:Landroid/content/Context;

    .line 110
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->setMusicAlbumAdapter()V

    .line 112
    return-void

    .line 81
    nop

    :array_4c
    .array-data 0x4
        0xd9t 0x0t 0x2t 0x7ft
        0xdat 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
        0xddt 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xe0t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mContext:Landroid/content/Context;

    .line 61
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    .line 72
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 74
    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_art"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 75
    const-string v2, "artist"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mProjection:[Ljava/lang/String;

    .line 79
    iput v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I

    .line 81
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    .line 88
    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefaultAlbums:[I

    .line 213
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$1;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumFetcher:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;

    .line 303
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$2;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlubmThumbClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 488
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$3;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumHandler:Landroid/os/Handler;

    .line 101
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mContext:Landroid/content/Context;

    .line 102
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->setMusicAlbumAdapter()V

    .line 104
    return-void

    .line 81
    nop

    :array_4c
    .array-data 0x4
        0xd9t 0x0t 0x2t 0x7ft
        0xdat 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
        0xddt 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
        0xe0t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;
    .registers 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;Landroid/view/LayoutInflater;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)V
    .registers 1
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getSelectedMusicFile()V

    return-void
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I

    return-void
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;
    .registers 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)[I
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefaultAlbums:[I

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)I
    .registers 2
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I

    return v0
.end method

.method static synthetic access$9(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;)Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;
    .registers 2
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumFetcher:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    return-object v0
.end method

.method private getSelectedMusicFile()V
    .registers 4

    .prologue
    .line 194
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-nez v2, :cond_7

    .line 211
    :goto_6
    return-void

    .line 197
    :cond_7
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v1

    .line 199
    .local v1, lList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_29

    .line 201
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 203
    .local v0, lElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicAddedPath:Ljava/lang/String;

    goto :goto_6

    .line 207
    .end local v0           #lElement:Lcom/samsung/app/video/editor/external/Element;
    :cond_29
    const-string v2, "There is no Music file selected"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 208
    const-string v2, ""

    sput-object v2, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicAddedPath:Ljava/lang/String;

    .line 209
    const/4 v2, -0x1

    sput v2, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    goto :goto_6
.end method

.method private insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "aFilString"
    .parameter "aBitmap"

    .prologue
    .line 270
    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 271
    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_10

    .line 273
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->removeFirstElement()V

    .line 276
    :cond_10
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-exit v1

    .line 279
    return-void

    .line 270
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private removeFirstElement()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 283
    sget-object v5, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 285
    .local v2, lKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 287
    .local v3, lKeys:[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 288
    aget-object v1, v3, v7

    .line 289
    .local v1, lFirst:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing element with Key -->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 291
    sget-object v5, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 293
    .local v0, lBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 294
    .local v4, msg:Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 295
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    iget-object v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 297
    sget-object v5, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method

.method private setMusicAlbumAdapter()V
    .registers 3

    .prologue
    .line 156
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    .line 157
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-nez v0, :cond_12

    .line 186
    :cond_11
    :goto_11
    return-void

    .line 159
    :cond_12
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setActivityEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;)V

    .line 161
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 162
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 165
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    if-eqz v0, :cond_11

    .line 167
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 168
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setAlbumDetailsFetcedCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;)V

    .line 169
    :cond_36
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Prev Album :: Moving to the postion in the list view -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mClickedAlbumPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 175
    sget v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mClickedAlbumPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_66

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    sget v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mClickedAlbumPos:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->setSelection(I)V

    .line 183
    :cond_66
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlubmThumbClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getSelectedMusicFile()V

    goto :goto_11
.end method


# virtual methods
.method public notifyAlbumDetailsupdate()V
    .registers 2

    .prologue
    .line 579
    const-string v0, "Inside notifyAlbumDetailsupdate refreshing data "

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mDefAlbumIndex:I

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;

    if-eqz v0, :cond_11

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mMusicAlbumAdapter:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView$MusicAlbumAdapter;->notifyDataSetChanged()V

    .line 585
    :cond_11
    return-void
.end method

.method public onActivityPaused()V
    .registers 1

    .prologue
    .line 539
    return-void
.end method

.method public onActivityResumed()V
    .registers 2

    .prologue
    .line 542
    const-string v0, "This is inside onActivityResumed"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "addedView"

    .prologue
    .line 547
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 137
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 138
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 140
    :cond_10
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 141
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeAlbumDetailsFetcedCallback()V

    .line 142
    :cond_1c
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/ListView;->onFinishInflate()V

    .line 129
    return-void
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 550
    return-void
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 471
    const/4 v1, 0x4

    if-ne p1, v1, :cond_e

    .line 473
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAddMusicAlbumPickerView:Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->removeMySelf(Landroid/view/View;I)V

    .line 474
    const/4 v0, 0x1

    .line 476
    :cond_e
    return v0
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 5
    .parameter "element"
    .parameter "added"

    .prologue
    .line 554
    if-nez p2, :cond_15

    .line 556
    const-string v0, "Previous selected music is removed"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 557
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicAddedPath:Ljava/lang/String;

    .line 558
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mAlbumHandler:Landroid/os/Handler;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 561
    :cond_15
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "removedView"

    .prologue
    .line 565
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 4
    .parameter "element"
    .parameter "elementTime"
    .parameter "transitionTime"

    .prologue
    .line 570
    return-void
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "updatedView"

    .prologue
    .line 573
    return-void
.end method

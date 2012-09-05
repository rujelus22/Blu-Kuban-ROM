.class public Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;
.super Landroid/widget/GridView;
.source "AddImagePickerView.java"

# interfaces
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;
    }
.end annotation


# static fields
.field private static final BITMAP_MAP_SIZE:I = 0x46

.field public static final LOAD_BITMAP_IMAGE:I = 0xfa

.field private static final MEDIA_SCANNER_TOAST:I = 0x103

.field public static final RECYCLE_BITMAP_IMAGE:I = 0xfb

.field public static final REFRESH_GRID_DATA:I = 0xf9

.field public static final REFRESH_IMAGE_NOIMAGE:I = 0xf8

.field private static final SHOW_LOADING_TOAST:I = 0x102

.field public static final URI_TYPE_IMAGE:I = 0x0

.field public static final URI_TYPE_VIDEO:I = 0x1

.field private static _instance:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

.field public static mImageBitmaps:Ljava/util/LinkedHashMap;
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
.field private aActivityEventsCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

.field private mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

.field private mColumnIndex:I

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

.field private mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

.field private mDurationIndex:I

.field private mDurations:[J

.field private mFilePathIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

.field private mImageUri:Landroid/net/Uri;

.field private mIsGridRefresh:Z

.field private mLongClikLinearlay:Landroid/widget/LinearLayout;

.field private mPausing:Z

.field private mSelectedClips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

.field private mThumbnailClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mThumbnailCreateThread:Ljava/lang/Thread;

.field private mThumbnailIds:[I

.field private mThumbnailLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mVideoImageFetcher:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;

.field private myDuration:J

.field private myTimes:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 136
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    .line 82
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageUri:Landroid/net/Uri;

    .line 84
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mContext:Landroid/content/Context;

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 117
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mPausing:Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mIsGridRefresh:Z

    .line 133
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mLongClikLinearlay:Landroid/widget/LinearLayout;

    .line 137
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$1;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->aActivityEventsCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

    .line 160
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$2;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    .line 490
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$3;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mVideoImageFetcher:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;

    .line 533
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$4;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mHandler:Landroid/os/Handler;

    .line 587
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$5;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbnailClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 624
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbnailLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 188
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mContext:Landroid/content/Context;

    .line 189
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    .line 82
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageUri:Landroid/net/Uri;

    .line 84
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mContext:Landroid/content/Context;

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 117
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mPausing:Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mIsGridRefresh:Z

    .line 133
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mLongClikLinearlay:Landroid/widget/LinearLayout;

    .line 137
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$1;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->aActivityEventsCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

    .line 160
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$2;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    .line 490
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$3;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mVideoImageFetcher:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;

    .line 533
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$4;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mHandler:Landroid/os/Handler;

    .line 587
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$5;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbnailClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 624
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$6;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbnailLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 182
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mContext:Landroid/content/Context;

    .line 183
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 184
    return-void
.end method

.method static synthetic access$0()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;
    .registers 1

    .prologue
    .line 115
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;
    .registers 2
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;
    .registers 2
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mVideoImageFetcher:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 533
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;
    .registers 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getFileNameFromPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer;
    .registers 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;Lcom/sec/android/app/ve/view/DragLayer;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    return-void
.end method

.method static synthetic access$9(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer$DragListener;
    .registers 2
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    return-object v0
.end method

.method private fetchSelectedClips()V
    .registers 6

    .prologue
    .line 300
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-nez v3, :cond_7

    .line 312
    :cond_6
    return-void

    .line 302
    :cond_7
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v2

    .line 304
    .local v2, lSelecList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 306
    .local v1, lIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 310
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    iget-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method private getFileNameFromDB(I)Ljava/lang/String;
    .registers 6
    .parameter "position"

    .prologue
    .line 613
    const/4 v1, 0x0

    .line 614
    .local v1, lFileName:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1c

    .line 616
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 617
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mColumnIndex:I

    .line 618
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 620
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, filename:Ljava/lang/String;
    return-object v0
.end method

.method private getFileNameFromPosition(I)Ljava/lang/String;
    .registers 3
    .parameter "aPosition"

    .prologue
    .line 610
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;
    .registers 1

    .prologue
    .line 198
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    return-object v0
.end method

.method private init()V
    .registers 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    if-nez v0, :cond_10

    .line 206
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    .line 209
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/DragLayer;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DragLayer initialised -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private initThumbnails()V
    .registers 7

    .prologue
    .line 325
    :try_start_0
    const-string v1, "date_modified DESC"

    .line 326
    .local v1, lSortOrder:Ljava/lang/String;
    const-string v2, "ImagePicker :: initThumbnails"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageUri:Landroid/net/Uri;

    .line 328
    sget-object v3, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageProj:[Ljava/lang/String;

    .line 329
    const/4 v4, 0x0

    .line 330
    const/4 v5, 0x0

    .line 327
    invoke-static {v2, v3, v4, v5, v1}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getThumbCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    .line 332
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_46

    .line 334
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 336
    .local v0, count:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ImagePicker :: initThumbnails Count of the Images are -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mColumnIndex:I

    .line 340
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mFilePathIndex:I

    .line 341
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->setThumbnailAdapter()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    .line 348
    .end local v0           #count:I
    .end local v1           #lSortOrder:Ljava/lang/String;
    :cond_46
    :goto_46
    return-void

    .line 344
    :catch_47
    move-exception v2

    goto :goto_46
.end method

.method private insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "aFilString"
    .parameter "aBitmap"

    .prologue
    .line 479
    sget-object v1, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 480
    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v2, 0x46

    if-ne v0, v2, :cond_10

    .line 482
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->removeFirstElement()V

    .line 485
    :cond_10
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    monitor-exit v1

    .line 488
    return-void

    .line 479
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

    .line 716
    sget-object v5, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 718
    .local v2, lKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 719
    .local v3, lKeys:[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 720
    aget-object v1, v3, v7

    .line 721
    .local v1, lFirst:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing element with Key -->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 723
    sget-object v5, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 725
    .local v0, lBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 726
    .local v4, msg:Landroid/os/Message;
    const/16 v5, 0xfb

    iput v5, v4, Landroid/os/Message;->what:I

    .line 727
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 728
    iget-object v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 729
    sget-object v5, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    return-void
.end method

.method private setThumbnailAdapter()V
    .registers 3

    .prologue
    .line 243
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    .line 244
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImagePicker :: setThumbnailAdapter adapter -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImagePicker :: setThumbnailAdapter Picker View -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    if-eqz v0, :cond_7c

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_49

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    :cond_49
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->fetchSelectedClips()V

    .line 254
    const-string v0, "ImagePicker :: Before adding callback"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 255
    invoke-static {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setImageThumbUpdateCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    const-string v0, "ImagePicker :: after adapter"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbnailClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mThumbnailLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 260
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 261
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 265
    :cond_7c
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 658
    return-void
.end method


# virtual methods
.method public launchImageThumbnails()V
    .registers 2

    .prologue
    .line 221
    const-string v0, "ImagePicker :: launchThumbnailPicker"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->init()V

    .line 223
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageUri:Landroid/net/Uri;

    .line 224
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->initThumbnails()V

    .line 225
    return-void
.end method

.method public notifyImageThumbCleared()V
    .registers 2

    .prologue
    .line 749
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 750
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 752
    const-string v0, "Image Picker view making no Images invisible"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoImageInVisible()V

    .line 756
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    if-eqz v0, :cond_28

    .line 758
    const-string v0, "ImagePicker :: before calling notifyData Set Chnaged -->"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->notifyDataSetChanged()V

    .line 761
    :cond_28
    return-void
.end method

.method public notifyImageThumbupdate()V
    .registers 2

    .prologue
    .line 734
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 735
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 737
    const-string v0, "Image Picker view making no Images invisible"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 738
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoImageInVisible()V

    .line 741
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    if-eqz v0, :cond_28

    .line 743
    const-string v0, "ImagePicker :: before calling notifyData Set Chnaged -->"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mImageAdapter:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$ImageAdapter;->notifyDataSetChanged()V

    .line 746
    :cond_28
    return-void
.end method

.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 5
    .parameter "addedView"

    .prologue
    .line 673
    if-eqz p1, :cond_12

    .line 676
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, lAddedPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 680
    .end local v0           #lAddedPath:Ljava/lang/String;
    :cond_12
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 283
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 285
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 286
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->aActivityEventsCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setActivityEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;)V

    .line 287
    :cond_12
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 271
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 273
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 275
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 276
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->aActivityEventsCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeActivityEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;)V

    .line 277
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeImageThumbUpdateCallback()V

    .line 280
    :cond_1f
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/GridView;->onFinishInflate()V

    .line 232
    return-void
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 685
    return-void
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 662
    const/4 v1, 0x4

    if-ne p1, v1, :cond_e

    .line 665
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mAddImagePickerView:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->removeMySelf(Landroid/view/View;I)V

    .line 667
    const/4 v0, 0x1

    .line 670
    :cond_e
    return v0
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 3
    .parameter "element"
    .parameter "added"

    .prologue
    .line 711
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 4
    .parameter "removedView"

    .prologue
    .line 690
    if-eqz p1, :cond_12

    .line 693
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 694
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 696
    :cond_12
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 5
    .parameter "element"
    .parameter "sec"
    .parameter "transitionTime"

    .prologue
    .line 700
    const-string v0, "This is inside onScrolled of "

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "updatedView"

    .prologue
    .line 706
    return-void
.end method

.method public resetSelectedImages()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    :cond_9
    return-void
.end method

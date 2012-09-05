.class public Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;
.super Landroid/widget/GridView;
.source "AddVideoImagePickerView.java"

# interfaces
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;
    }
.end annotation


# static fields
.field private static final BITMAP_MAP_SIZE:I = 0x46

.field public static final LOAD_BITMAP_IMAGE:I = 0x32

.field private static final MEDIA_SCANNER_TOAST:I = 0x3b

.field public static final RECYCLE_BITMAP_IMAGE:I = 0x33

.field public static final REFRESH_GRID_DATA:I = 0x31

.field private static final SHOW_LOADING_TOAST:I = 0x3a

.field public static final URI_TYPE_IMAGE:I = 0x0

.field public static final URI_TYPE_VIDEO:I = 0x1

.field private static _instance:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

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
.field private mAddVideoPickerView:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

.field private mColumnIndex:I

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

.field private mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

.field private mDurationIndex:I

.field private mDurations:[J

.field private mEditTab:Landroid/widget/LinearLayout;

.field private mFilePathIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mIsGridRefresh:Z

.field private mLongClikLinearlay:Landroid/widget/LinearLayout;

.field private mPausing:Z

.field private mSelectThemeTab:Landroid/widget/LinearLayout;

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

.field public mThumbnailType:I

.field private mVideoAdapter:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;

.field private mVideoImageUri:Landroid/net/Uri;

.field private myDuration:J

.field private myTimes:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    .line 130
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    .line 81
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoImageUri:Landroid/net/Uri;

    .line 83
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mContext:Landroid/content/Context;

    .line 94
    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailType:I

    .line 96
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mAddVideoPickerView:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    .line 114
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 116
    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mPausing:Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    .line 123
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoAdapter:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mIsGridRefresh:Z

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mLongClikLinearlay:Landroid/widget/LinearLayout;

    .line 133
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mEditTab:Landroid/widget/LinearLayout;

    .line 140
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$1;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    .line 487
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mHandler:Landroid/os/Handler;

    .line 532
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$3;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 573
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 167
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mContext:Landroid/content/Context;

    .line 168
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    .line 81
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoImageUri:Landroid/net/Uri;

    .line 83
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mContext:Landroid/content/Context;

    .line 94
    iput v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailType:I

    .line 96
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mAddVideoPickerView:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    .line 114
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailCreateThread:Ljava/lang/Thread;

    .line 116
    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mPausing:Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    .line 123
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoAdapter:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mIsGridRefresh:Z

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mLongClikLinearlay:Landroid/widget/LinearLayout;

    .line 133
    iput-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mEditTab:Landroid/widget/LinearLayout;

    .line 140
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$1;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    .line 487
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$2;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mHandler:Landroid/os/Handler;

    .line 532
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$3;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 573
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$4;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 161
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mContext:Landroid/content/Context;

    .line 162
    sput-object p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    .line 163
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;
    .registers 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;
    .registers 2
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoAdapter:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;

    return-object v0
.end method

.method static synthetic access$2()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getFileNameFromPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer;
    .registers 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;Lcom/sec/android/app/ve/view/DragLayer;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    return-void
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Lcom/sec/android/app/ve/view/DragLayer$DragListener;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    return-object v0
.end method

.method private fetchSelectedClips()V
    .registers 6

    .prologue
    .line 291
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-nez v3, :cond_7

    .line 304
    :cond_6
    return-void

    .line 294
    :cond_7
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v2

    .line 296
    .local v2, lSelecList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 298
    .local v1, lIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 302
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    iget-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17
.end method

.method private getFileNameFromDB(I)Ljava/lang/String;
    .registers 6
    .parameter "position"

    .prologue
    .line 562
    const/4 v1, 0x0

    .line 563
    .local v1, lFileName:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1c

    .line 565
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 566
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mColumnIndex:I

    .line 567
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mColumnIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, filename:Ljava/lang/String;
    return-object v0
.end method

.method private getFileNameFromPosition(I)Ljava/lang/String;
    .registers 3
    .parameter "aPosition"

    .prologue
    .line 559
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;
    .registers 1

    .prologue
    .line 177
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    return-object v0
.end method

.method private init()V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    if-nez v0, :cond_10

    .line 185
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbDropView:Lcom/sec/android/app/ve/view/timeline/ThumbnailDropView;

    .line 187
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/DragLayer;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DragLayer initialised -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private initThumbnails()V
    .registers 8

    .prologue
    .line 317
    :try_start_0
    const-string v2, "date_modified DESC"

    .line 319
    .local v2, lSortOrder:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoImageUri:Landroid/net/Uri;

    .line 320
    sget-object v4, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoProj:[Ljava/lang/String;

    .line 321
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getVideoFilterString()Ljava/lang/String;

    move-result-object v5

    .line 322
    sget-object v6, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilter:[Ljava/lang/String;

    .line 319
    invoke-static {v3, v4, v5, v6, v2}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getThumbCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    .line 325
    iget-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_4f

    .line 327
    iget-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 329
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Count of the videos are -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mColumnIndex:I

    .line 333
    iget-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    const-string v4, "_data"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mFilePathIndex:I

    .line 335
    iget-object v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mCursor:Landroid/database/Cursor;

    const-string v4, "duration"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mDurationIndex:I

    .line 336
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->setThumbnailAdapter()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    .line 345
    .end local v0           #count:I
    .end local v2           #lSortOrder:Ljava/lang/String;
    :cond_4f
    :goto_4f
    return-void

    .line 339
    :catch_50
    move-exception v1

    .line 341
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f
.end method

.method private removeFirstElement()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 677
    sget-object v5, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 679
    .local v2, lKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 681
    .local v3, lKeys:[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 682
    aget-object v1, v3, v7

    .line 683
    .local v1, lFirst:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing element with Key -->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 685
    sget-object v5, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 687
    .local v0, lBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 688
    .local v4, msg:Landroid/os/Message;
    const/16 v5, 0x33

    iput v5, v4, Landroid/os/Message;->what:I

    .line 689
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 690
    iget-object v5, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 691
    sget-object v5, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mImageBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-void
.end method

.method private setThumbnailAdapter()V
    .registers 3

    .prologue
    .line 240
    new-instance v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoAdapter:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;

    .line 241
    const v0, 0x7f0b0130

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mAddVideoPickerView:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mAddVideoPickerView:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    if-eqz v0, :cond_59

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    :cond_21
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->fetchSelectedClips()V

    .line 250
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 251
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setVideoThumbUpdateCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;)V

    .line 253
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mAddVideoPickerView:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoAdapter:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mAddVideoPickerView:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mAddVideoPickerView:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mThumbnailLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 256
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 258
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 259
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 262
    :cond_59
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 605
    return-void
.end method


# virtual methods
.method public launchVideoThumbnails()V
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->init()V

    .line 200
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoImageUri:Landroid/net/Uri;

    .line 201
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->initThumbnails()V

    .line 202
    return-void
.end method

.method public notifyVideoThumbupdate()V
    .registers 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mVideoAdapter:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$VideoAdapter;

    if-eqz v0, :cond_13

    .line 697
    const-string v0, "This is before calling notifyData Set Chnaged"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 698
    sget-object v0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->_instance:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    new-instance v1, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView$5;-><init>(Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->post(Ljava/lang/Runnable;)Z

    .line 705
    :cond_13
    return-void
.end method

.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 5
    .parameter "addedView"

    .prologue
    .line 629
    if-eqz p1, :cond_18

    .line 631
    const-string v1, "This is inside onAdded"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, lAddedPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 639
    .end local v0           #lAddedPath:Ljava/lang/String;
    :goto_17
    return-void

    .line 637
    :cond_18
    const-string v1, "This is inside onAdded and added view is null"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 222
    const-string v0, "Video Picker onAttachedToWindow and checking for no video image"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 226
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 227
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 229
    :cond_1c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_52

    .line 734
    :cond_8
    :goto_8
    return-void

    .line 714
    :sswitch_9
    const-string v0, "Click on SelectedThemeTitleadd"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 715
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 716
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchThemes()V

    goto :goto_8

    .line 719
    :sswitch_1c
    const-string v0, "Click on EditTitleadd"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    if-lez v0, :cond_43

    .line 723
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 724
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->launchTrimSection()V

    goto :goto_8

    .line 726
    :cond_43
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 727
    const v0, 0x7f08006a

    const/4 v1, -0x1

    invoke-static {v0, v1, v2, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_8

    .line 712
    nop

    :sswitch_data_52
    .sparse-switch
        0x7f0b00d5 -> :sswitch_9
        0x7f0b00d9 -> :sswitch_1c
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 270
    const-string v0, "Video Picker onDetachedFromWindow"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 274
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 276
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeVideoThumbUpdateCallback()V

    .line 278
    :cond_1b
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const v2, 0x7f0b00d5

    .line 208
    invoke-super {p0}, Landroid/widget/GridView;->onFinishInflate()V

    .line 210
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectThemeTab:Landroid/widget/LinearLayout;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinishInflate mSelectThemeTab -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectThemeTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectThemeTab:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2f

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectThemeTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mEditTab:Landroid/widget/LinearLayout;

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectThemeTab:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_44

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectThemeTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinishInflate mEditTab -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mEditTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 645
    return-void
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 609
    const/4 v1, 0x4

    if-ne p1, v1, :cond_e

    .line 612
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mAddVideoPickerView:Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->removeMySelf(Landroid/view/View;I)V

    .line 614
    const/4 v0, 0x1

    .line 617
    :cond_e
    return v0
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 3
    .parameter "element"
    .parameter "added"

    .prologue
    .line 672
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 4
    .parameter "removedView"

    .prologue
    .line 650
    if-eqz p1, :cond_17

    .line 652
    const-string v0, "This is inside onRemoved"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 656
    :cond_17
    return-void
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 5
    .parameter "element"
    .parameter "sec"
    .parameter "transitionTime"

    .prologue
    .line 660
    const-string v0, "This is inside onScrolled of "

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public onThumbsCreated(I)V
    .registers 4
    .parameter "aMediaType"

    .prologue
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onThumbCreated for MediaType -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 625
    return-void
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "updatedView"

    .prologue
    .line 667
    return-void
.end method

.method public resetSelectedVideos()V
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->mSelectedClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    :cond_9
    return-void
.end method

.class public Lcom/sec/android/app/videoplayer/view/VideoListView;
.super Landroid/widget/LinearLayout;
.source "VideoListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;
    }
.end annotation


# static fields
.field private static final ABORT_PROGRESS:I = 0x2

.field private static DEBUG:Z = false

.field private static final FINISH_PROGRESS:I = 0x1

.field public static final LIST_LANDSCAPE:I = 0x1

.field public static final LIST_PORTRAIT:I = 0x1

.field private static final MENU_GROUP:I = 0x12c

.field private static final MENU_GROUP_AUTOPLAY:I = 0x12f

.field private static final MENU_GROUP_BIGPONDTV:I = 0xbdc

.field private static final MENU_GROUP_DELETE:I = 0x12d

.field private static final MENU_GROUP_MUSICVIDEOS:I = 0xbdd

.field private static final MENU_GROUP_SHARE_VIDEO_VIA:I = 0xbdb

.field private static final MENU_GROUP_SORTBY:I = 0x12e

.field private static final SHOWING_ITEMS_COUNT:I = 0xc8

.field private static final SHOW_PROGRESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoListView"

.field private static final THUMBNAIL_HEIGHT:I = 0xe7

.field private static final THUMBNAIL_WIDTH:I = 0x17b

.field public static final THUMBNAMIL_LANDSCAPE:I = 0x4

.field public static final THUMBNAMIL_PORTRAIT:I = 0x2

.field public static final VIDEOLIST_KEY:Ljava/lang/String; = null

.field public static final VIEW_BY_LIST:I = 0x64

.field public static final VIEW_BY_THUMBNAIL:I = 0xc8

.field public static isLayoutNeeded:Z

.field public static isThumbnailNeeded:Z

.field public static lastID:J

.field private static mFolderPrevIndex:I

.field private static mFolderVideoIndex:I

.field private static mFoldersIndex:I

.field private static mHoldFocus:Z

.field public static mListInfoArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mListsIndex:I

.field public static mLoadingIndicatorSDCard:Landroid/app/ProgressDialog;

.field public static mMediaScannerFinished:Z

.field public static mTabIndex:I

.field private static mThumbnailsIndex:I


# instance fields
.field private btCancel:Landroid/widget/Button;

.field private btDone:Landroid/widget/Button;

.field private columnCount:I

.field private emptyData:Landroid/widget/LinearLayout;

.field private lySelectAll:Landroid/widget/LinearLayout;

.field private mAdapterSize:I

.field private mAnimationPos:I

.field public mBucket_id:I

.field private mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field private mDeleteFrom:I

.field public mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDistance:I

.field private mFirstPosition:I

.field private mFirstVisibleItem:I

.field private mListType:I

.field private mListView:Landroid/widget/GridView;

.field public mListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mNextPoint:I

.field private mOpThread:Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;

.field private mPausing:Z

.field private mPlayPosition:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressHandler:Landroid/os/Handler;

.field private mRetriever:Landroid/media/MediaMetadataRetriever;

.field private mRoot:Landroid/view/View;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mThreadReset:Z

.field private mToast:Landroid/widget/Toast;

.field private mVideoCount:I

.field private mVideoCountPause:I

.field private mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

.field private mVisibleItemCount:I

.field private orientationState:I

.field private viewBy:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 73
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->DEBUG:Z

    .line 83
    sput-boolean v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 84
    sput-boolean v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    .line 87
    const-class v0, Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->VIDEOLIST_KEY:Ljava/lang/String;

    .line 90
    sput v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThumbnailsIndex:I

    .line 91
    sput v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListsIndex:I

    .line 92
    sput v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFolderVideoIndex:I

    .line 94
    sput v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFolderPrevIndex:I

    .line 95
    sput v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFoldersIndex:I

    .line 96
    sput v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    .line 104
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaScannerFinished:Z

    .line 113
    sput-object v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    .line 134
    sput-boolean v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mHoldFocus:Z

    .line 136
    sput-object v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mLoadingIndicatorSDCard:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 13
    .parameter "context"
    .parameter "listtype"
    .parameter "bucket_id"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 155
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    .line 88
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    .line 98
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    .line 99
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    .line 102
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    .line 103
    iput-boolean v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z

    .line 105
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    .line 106
    const/16 v3, 0xc8

    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    .line 107
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->orientationState:I

    .line 108
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    .line 111
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->lySelectAll:Landroid/widget/LinearLayout;

    .line 112
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 114
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    .line 117
    iput v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCount:I

    .line 119
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPlayPosition:I

    .line 120
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mAnimationPos:I

    .line 121
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstPosition:I

    .line 122
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mAdapterSize:I

    .line 123
    iput v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    .line 151
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 152
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mOpThread:Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;

    .line 1081
    new-instance v3, Lcom/sec/android/app/videoplayer/view/VideoListView$12;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$12;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressHandler:Landroid/os/Handler;

    .line 1272
    new-instance v3, Lcom/sec/android/app/videoplayer/view/VideoListView$13;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$13;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 1379
    new-instance v3, Lcom/sec/android/app/videoplayer/view/VideoListView$14;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$14;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1408
    iput v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDistance:I

    .line 1409
    iput v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I

    .line 156
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    .line 157
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    .line 158
    iput v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    .line 159
    iput p3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mBucket_id:I

    .line 160
    iput v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCountPause:I

    .line 161
    const/16 v3, 0x64

    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    .line 164
    if-eq p2, v8, :cond_62

    if-ne p2, v7, :cond_72

    .line 165
    :cond_62
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v1

    .line 166
    .local v1, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v3, "currentlist"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadIntKey(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    .line 169
    .end local v1           #spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    :cond_72
    iput p2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    .line 173
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 175
    .local v0, inflate:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    if-ne v3, v8, :cond_d2

    .line 176
    const v3, 0x7f03000a

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    .line 183
    :goto_99
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-nez v3, :cond_aa

    .line 184
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    const v4, 0x7f0a001c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    .line 186
    :cond_aa
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->emptyData:Landroid/widget/LinearLayout;

    if-nez v3, :cond_d1

    .line 187
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    const v4, 0x7f0a001d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->emptyData:Landroid/widget/LinearLayout;

    .line 188
    iget v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_d1

    .line 189
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->emptyData:Landroid/widget/LinearLayout;

    const v4, 0x7f0a001f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 190
    .local v2, txt:Landroid/widget/TextView;
    const v3, 0x7f080082

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 193
    .end local v2           #txt:Landroid/widget/TextView;
    :cond_d1
    return-void

    .line 177
    :cond_d2
    iget v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    if-ne v3, v7, :cond_e0

    .line 178
    const v3, 0x7f030012

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    goto :goto_99

    .line 180
    :cond_e0
    const v3, 0x7f03000b

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    goto :goto_99
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 196
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    .line 88
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    .line 98
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    .line 99
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    .line 102
    iput v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    .line 103
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z

    .line 105
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    .line 106
    const/16 v2, 0xc8

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    .line 107
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->orientationState:I

    .line 108
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    .line 111
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->lySelectAll:Landroid/widget/LinearLayout;

    .line 112
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 114
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    .line 117
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCount:I

    .line 119
    iput v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPlayPosition:I

    .line 120
    iput v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mAnimationPos:I

    .line 121
    iput v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstPosition:I

    .line 122
    iput v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mAdapterSize:I

    .line 123
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    .line 151
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 152
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mOpThread:Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;

    .line 1081
    new-instance v2, Lcom/sec/android/app/videoplayer/view/VideoListView$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$12;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressHandler:Landroid/os/Handler;

    .line 1272
    new-instance v2, Lcom/sec/android/app/videoplayer/view/VideoListView$13;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$13;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 1379
    new-instance v2, Lcom/sec/android/app/videoplayer/view/VideoListView$14;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$14;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1408
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDistance:I

    .line 1409
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I

    .line 197
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    .line 198
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    .line 199
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    .line 203
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 205
    .local v0, inflate:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_b3

    .line 206
    const v2, 0x7f03000a

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    .line 213
    :goto_7a
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-nez v2, :cond_8b

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    .line 216
    :cond_8b
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->emptyData:Landroid/widget/LinearLayout;

    if-nez v2, :cond_b2

    .line 217
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    const v3, 0x7f0a001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->emptyData:Landroid/widget/LinearLayout;

    .line 218
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_b2

    .line 219
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->emptyData:Landroid/widget/LinearLayout;

    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 220
    .local v1, txt:Landroid/widget/TextView;
    const v2, 0x7f080082

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 223
    .end local v1           #txt:Landroid/widget/TextView;
    :cond_b2
    return-void

    .line 207
    :cond_b3
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_c2

    .line 208
    const v2, 0x7f030012

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    goto :goto_7a

    .line 210
    :cond_c2
    const v2, 0x7f03000b

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    goto :goto_7a
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/videoplayer/view/VideoListView;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/videoplayer/view/VideoListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeAllState(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->updateDeleteListUI()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->deleteFile()V

    return-void
.end method

.method static synthetic access$1600()Z
    .registers 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/videoplayer/view/VideoListView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mOpThread:Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPlayPosition:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPlayPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVisibleItemCount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVisibleItemCount:I

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/videoplayer/view/VideoListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThreadReset:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/videoplayer/view/VideoListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThreadReset:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/videoplayer/view/VideoListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/videoplayer/view/VideoListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDistance:I

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDistance:I

    return p1
.end method

.method static synthetic access$2408(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDistance:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDistance:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I

    return v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mNextPoint:I

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/media/MediaMetadataRetriever;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/videoplayer/view/VideoListView;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->callMoviePlay()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mAnimationPos:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mAnimationPos:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mAdapterSize:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mAdapterSize:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/view/VideoListView;)Landroid/widget/GridView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/videoplayer/view/VideoListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    return v0
.end method

.method private callMoviePlay()V
    .registers 5

    .prologue
    .line 227
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSchemeType(I)V

    .line 228
    const-string v0, "VideoListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callMoviePlay() - mPlayPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPlayPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPlayPosition:I

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setMediaVideoList(I)V

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 231
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mHoldFocus:Z

    .line 232
    return-void
.end method

.method private changeAllState(Z)V
    .registers 10
    .parameter "checked"

    .prologue
    .line 984
    if-eqz p1, :cond_64

    .line 985
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 986
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_3e

    .line 987
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 990
    :cond_10
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 991
    .local v3, videoID:J
    const-wide/16 v6, -0x65

    cmp-long v6, v3, v6

    if-eqz v6, :cond_36

    const-wide/16 v6, -0x66

    cmp-long v6, v3, v6

    if-eqz v6, :cond_36

    const-wide/16 v6, -0x67

    cmp-long v6, v3, v6

    if-eqz v6, :cond_36

    .line 994
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    :cond_36
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_10

    .line 1002
    .end local v3           #videoID:J
    :cond_3e
    :goto_3e
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v5, v6, v7

    .line 1004
    .local v5, viewItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4d
    if-gt v0, v5, :cond_6a

    .line 1005
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1006
    .local v2, itemView:Landroid/view/View;
    const v6, 0x7f0a002e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1007
    .local v1, itemCheckBox:Landroid/widget/CheckBox;
    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1004
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 999
    .end local v0           #i:I
    .end local v1           #itemCheckBox:Landroid/widget/CheckBox;
    .end local v2           #itemView:Landroid/view/View;
    .end local v5           #viewItemCount:I
    :cond_64
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_3e

    .line 1009
    .restart local v0       #i:I
    .restart local v5       #viewItemCount:I
    :cond_6a
    return-void
.end method

.method private changeListView(I)V
    .registers 3
    .parameter "listType"

    .prologue
    .line 1211
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    .line 1212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns(Z)V

    .line 1213
    return-void
.end method

.method private checkState()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1804
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->orientationState:I

    .line 1806
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2b

    .line 1807
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->orientationState:I

    if-ne v0, v2, :cond_28

    .line 1808
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    .line 1820
    :goto_19
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;

    if-eqz v0, :cond_27

    .line 1821
    :cond_25
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    .line 1823
    :cond_27
    return-void

    .line 1810
    :cond_28
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    goto :goto_19

    .line 1813
    :cond_2b
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->orientationState:I

    if-ne v0, v2, :cond_33

    .line 1814
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    goto :goto_19

    .line 1816
    :cond_33
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    goto :goto_19
.end method

.method private declared-synchronized closeProgressDialog()V
    .registers 3

    .prologue
    .line 1202
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "VideoListView"

    const-string v1, "closeProgressDialog E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_18

    .line 1205
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 1208
    :cond_18
    monitor-exit p0

    return-void

    .line 1202
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private connectDB()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 660
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v1

    .line 676
    .local v1, videoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 677
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    .line 679
    .local v0, getCursor:I
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_28

    .line 680
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    .line 681
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;

    if-eqz v2, :cond_28

    .line 682
    const/4 v0, 0x4

    .line 685
    :cond_28
    const-string v2, "VideoListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectDB() - mListType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleteFrom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v2, "VideoListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectDB() - columnCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBucket_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mBucket_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/db/VideoDB;->IS_DATA_ONLY:Z

    .line 690
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_82

    .line 691
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 692
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    .line 695
    :cond_82
    packed-switch v0, :pswitch_data_12c

    .line 730
    :pswitch_85
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const-string v3, "title"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursor(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    .line 739
    .end local v0           #getCursor:I
    :cond_91
    :goto_91
    return-void

    .line 698
    .restart local v0       #getCursor:I
    :pswitch_92
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const-string v3, "SELECT_LIST"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mBucket_id:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderListCursor(ILjava/lang/String;II)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    goto :goto_91

    .line 701
    :pswitch_a1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;

    if-nez v2, :cond_ad

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;

    if-eqz v2, :cond_bc

    .line 702
    :cond_ad
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const-string v3, "title"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mBucket_id:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderListCursor(ILjava/lang/String;II)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    goto :goto_91

    .line 705
    :cond_bc
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const-string v3, "title"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursor(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    goto :goto_91

    .line 710
    :pswitch_c9
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;

    if-nez v2, :cond_d5

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;

    if-eqz v2, :cond_e4

    .line 711
    :cond_d5
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const-string v3, "title"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mBucket_id:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderListCursor(ILjava/lang/String;II)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    goto :goto_91

    .line 714
    :cond_e4
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const-string v3, "date_added"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursor(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    goto :goto_91

    .line 719
    :pswitch_f1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;

    if-eqz v2, :cond_106

    .line 720
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const-string v3, "title"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mBucket_id:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderListCursor(ILjava/lang/String;II)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    goto :goto_91

    .line 723
    :cond_106
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const-string v3, "_data"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursor(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_91

    .line 727
    :pswitch_114
    sget-object v2, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->searchString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSearchResult(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_91

    .line 734
    .end local v0           #getCursor:I
    :cond_11e
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_91

    .line 735
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 736
    iput-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_91

    .line 695
    nop

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_85
        :pswitch_85
        :pswitch_c9
        :pswitch_f1
        :pswitch_92
        :pswitch_85
        :pswitch_114
        :pswitch_92
    .end packed-switch
.end method

.method private createListInfoArrayList()V
    .registers 7

    .prologue
    .line 1245
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_22

    .line 1246
    const-string v3, "VideoListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createListInfoArrayList - mCursor.getColumnCount() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_22
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-gtz v3, :cond_2f

    .line 1270
    :cond_2e
    :goto_2e
    return-void

    .line 1253
    :cond_2f
    sget-object v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    if-nez v3, :cond_3a

    .line 1254
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    .line 1257
    :cond_3a
    sget-object v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4b

    sget-object v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4b

    .line 1258
    sget-object v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1261
    :cond_4b
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_51
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_75

    .line 1264
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1265
    .local v1, id:J
    sget-object v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 1263
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1269
    .end local v1           #id:J
    :cond_75
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_2e
.end method

.method private deleteFile()V
    .registers 5

    .prologue
    .line 1066
    sget-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "VideoListView"

    const-string v1, "deleteFile E"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4d

    .line 1069
    sget-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->DEBUG:Z

    if-eqz v0, :cond_35

    const-string v0, "VideoListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFile(). checkedIdList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1074
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mOpThread:Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;

    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mOpThread:Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView$FileOperationThread;->start()V
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_4e

    .line 1079
    :cond_4d
    return-void

    .line 1076
    :catchall_4e
    move-exception v0

    throw v0
.end method

.method private final getMenuTitle(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 552
    sparse-switch p1, :sswitch_data_42

    .line 568
    const-string v0, ""

    :goto_5
    return-object v0

    .line 554
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 556
    :sswitch_10
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 558
    :sswitch_1a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 560
    :sswitch_24
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 562
    :sswitch_2e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const v1, 0x7f0800a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 564
    :sswitch_38
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 552
    :sswitch_data_42
    .sparse-switch
        0x12d -> :sswitch_6
        0x12e -> :sswitch_10
        0x12f -> :sswitch_1a
        0xbdb -> :sswitch_24
        0xbdc -> :sswitch_2e
        0xbdd -> :sswitch_38
    .end sparse-switch
.end method

.method private getVideoListItemLayout()I
    .registers 5

    .prologue
    const v0, 0x7f03000d

    const/16 v3, 0x64

    const/16 v2, 0xc8

    .line 1725
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;

    if-eqz v1, :cond_14

    .line 1759
    :cond_13
    :goto_13
    return v0

    .line 1729
    :cond_14
    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    packed-switch v1, :pswitch_data_44

    .line 1752
    :goto_19
    :pswitch_19
    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    if-ne v1, v2, :cond_13

    .line 1753
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->orientationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 1754
    const v0, 0x7f03000f

    goto :goto_13

    .line 1731
    :pswitch_26
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    goto :goto_19

    .line 1735
    :pswitch_29
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    goto :goto_19

    .line 1738
    :pswitch_2c
    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    if-eqz v1, :cond_33

    .line 1739
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    goto :goto_19

    .line 1741
    :cond_33
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    goto :goto_19

    .line 1745
    :pswitch_36
    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    if-eqz v1, :cond_3d

    .line 1746
    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    goto :goto_19

    .line 1748
    :cond_3d
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    goto :goto_19

    .line 1756
    :cond_40
    const v0, 0x7f03000e

    goto :goto_13

    .line 1729
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_26
        :pswitch_19
        :pswitch_19
        :pswitch_29
        :pswitch_29
        :pswitch_36
        :pswitch_19
        :pswitch_19
        :pswitch_2c
    .end packed-switch
.end method

.method private initAdapter()V
    .registers 8

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getVideoListItemLayout()I

    move-result v3

    .line 743
    .local v3, layoutId:I
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->connectDB()V

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1b

    .line 746
    new-instance v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;-><init>(Landroid/content/Context;IILandroid/database/Cursor;ILcom/sec/android/app/videoplayer/view/VideoListView;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    .line 748
    :cond_1b
    return-void
.end method

.method private initMainView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f8

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-nez v0, :cond_18

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    .line 756
    :cond_18
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->checkState()V

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(I)V

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setDrawingCacheQuality(I)V

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 764
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    if-eqz v0, :cond_57

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_57

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_57

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_88

    .line 769
    :cond_57
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoListView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoListView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoListView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$3;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 933
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidate()V

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->emptyData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 937
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->createListInfoArrayList()V

    .line 942
    :goto_87
    return-void

    .line 847
    :cond_88
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    if-eq v0, v2, :cond_91

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_75

    .line 848
    :cond_91
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->lySelectAll:Landroid/widget/LinearLayout;

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btCancel:Landroid/widget/Button;

    .line 853
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->videoCounting()V

    .line 854
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->selectProcess()V

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoListView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$4;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->lySelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoListView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$5;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoListView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$6;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoListView$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$7;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 930
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->updateDeleteListUI()V

    goto/16 :goto_75

    .line 939
    :cond_f8
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->emptyData:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_87
.end method

.method private onResumeCheckFilechange()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 514
    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCountPause:I

    if-gez v1, :cond_6

    .line 529
    :cond_5
    :goto_5
    return v0

    .line 518
    :cond_6
    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_11

    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 519
    :cond_11
    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCountPause:I

    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCount:I

    if-ne v1, v2, :cond_1b

    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCount:I

    if-nez v1, :cond_5

    .line 520
    :cond_1b
    sget-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->DEBUG:Z

    if-eqz v0, :cond_45

    const-string v0, "VideoListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResumeCheckFilechage. oldCount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCountPause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NewCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_45
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4e

    .line 523
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 525
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 526
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private selectProcess()V
    .registers 3

    .prologue
    .line 1016
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_14

    .line 1017
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    if-eqz v0, :cond_14

    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoListView$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$8;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btCancel:Landroid/widget/Button;

    if-eqz v0, :cond_22

    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btCancel:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoListView$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$9;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    :cond_22
    return-void
.end method

.method private setColumnByViewType()V
    .registers 4

    .prologue
    .line 1826
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v0

    .line 1827
    .local v0, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v1, "viewBy"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadIntKey(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->viewBy:I

    .line 1828
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns(Z)V

    .line 1829
    return-void
.end method

.method private updateDeleteListUI()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCount:I

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_33

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1d

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 955
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    if-eqz v0, :cond_32

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 964
    :cond_32
    :goto_32
    return-void

    .line 950
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1d

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1d

    .line 960
    :cond_3d
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    if-eqz v0, :cond_32

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_32
.end method

.method private videoCounting()V
    .registers 5

    .prologue
    .line 967
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_38

    .line 968
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCount:I

    .line 969
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 972
    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 973
    .local v0, VideoID:J
    const-wide/16 v2, -0x65

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2a

    const-wide/16 v2, -0x66

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2a

    const-wide/16 v2, -0x67

    cmp-long v2, v0, v2

    if-nez v2, :cond_30

    .line 976
    :cond_2a
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCount:I

    .line 979
    :cond_30
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 981
    .end local v0           #VideoID:J
    :cond_38
    return-void
.end method


# virtual methods
.method public cancel_click()V
    .registers 2

    .prologue
    .line 1036
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1039
    return-void
.end method

.method public changeListView()V
    .registers 4

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_c

    .line 1217
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    .line 1222
    :cond_c
    :try_start_c
    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_33

    .line 1227
    :goto_11
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-eqz v1, :cond_32

    .line 1228
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I

    .line 1229
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVisibleItemCount:I

    .line 1230
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThreadReset:Z

    .line 1231
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->startThumbnailCreateThread()V

    .line 1233
    :cond_32
    return-void

    .line 1223
    :catch_33
    move-exception v0

    .line 1224
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VideoListView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public checkDeleteList()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1833
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_29

    .line 1835
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 1836
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1839
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    if-eqz v0, :cond_20

    .line 1840
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1843
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_29

    .line 1844
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1847
    :cond_29
    return-void
.end method

.method public getFolderNamefromIndex(I)Ljava/lang/String;
    .registers 6
    .parameter "bucketId"

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1885
    .local v0, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v1

    .line 1886
    .local v1, videoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    if-eqz v1, :cond_1d

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1d

    .line 1887
    invoke-virtual {v1, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFolderNameByBucketId(I)Ljava/lang/String;

    move-result-object v0

    .line 1889
    :cond_1d
    return-object v0
.end method

.method public getFolderVideoIndex()I
    .registers 2

    .prologue
    .line 1871
    sget v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFolderVideoIndex:I

    return v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public initVideoListViewColumns()V
    .registers 2

    .prologue
    .line 1764
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns(Z)V

    .line 1765
    return-void
.end method

.method public initVideoListViewColumns(Z)V
    .registers 7
    .parameter "needLayout"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1768
    const-string v0, "VideoListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVideoListViewColumns() - newConfig.orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-nez v0, :cond_35

    .line 1771
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRoot:Landroid/view/View;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    .line 1773
    :cond_35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-eqz v0, :cond_4c

    .line 1774
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_85

    .line 1775
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 1781
    :cond_4c
    :goto_4c
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->checkState()V

    .line 1783
    if-eqz p1, :cond_71

    .line 1784
    const-string v0, "VideoListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "columnCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initAdapter()V

    .line 1786
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initMainView()V

    .line 1789
    :cond_71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-eqz v0, :cond_84

    .line 1790
    sget v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    if-ne v0, v4, :cond_8d

    .line 1791
    sget v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListsIndex:I

    if-eq v0, v3, :cond_84

    .line 1792
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    sget v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListsIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 1801
    :cond_84
    :goto_84
    return-void

    .line 1777
    :cond_85
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    goto :goto_4c

    .line 1793
    :cond_8d
    sget v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    if-nez v0, :cond_9d

    .line 1794
    sget v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThumbnailsIndex:I

    if-eq v0, v3, :cond_84

    .line 1795
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    sget v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThumbnailsIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_84

    .line 1796
    :cond_9d
    sget v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_84

    .line 1797
    sget v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFoldersIndex:I

    sget v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFolderPrevIndex:I

    if-ne v0, v1, :cond_84

    .line 1798
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    sget v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFolderVideoIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_84
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 8
    .parameter "menu"

    .prologue
    const/16 v5, 0x12f

    const/16 v1, 0x12e

    const/16 v4, 0x12d

    const/16 v3, 0x12c

    const/4 v2, 0x0

    .line 538
    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getMenuTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020047

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 539
    const/16 v0, 0xbdb

    const/16 v1, 0xbdb

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getMenuTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02004d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 540
    invoke-direct {p0, v4}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getMenuTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020045

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 541
    invoke-direct {p0, v5}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getMenuTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v5, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02004a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 542
    return-void
.end method

.method public onDeleteBtnClick()V
    .registers 8

    .prologue
    const v6, 0x7f08000c

    const/4 v3, 0x1

    .line 1042
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_5f

    .line 1044
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1049
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5e

    .line 1050
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f020041

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/videoplayer/view/VideoListView$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$11;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080024

    new-instance v3, Lcom/sec/android/app/videoplayer/view/VideoListView$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$10;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1063
    :cond_5e
    return-void

    .line 1045
    :cond_5f
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_24

    .line 1046
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const v2, 0x7f08003a

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 494
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 496
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    .line 498
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_17

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 500
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    .line 503
    :cond_17
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2b

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2b

    .line 504
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 507
    :cond_2b
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->closeProgressDialog()V

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mProgressHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCountPause:I

    .line 511
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 13
    .parameter "menuItem"

    .prologue
    const/high16 v10, 0x1000

    const/4 v7, 0x1

    .line 600
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v4

    .line 602
    .local v4, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_c6

    .line 656
    const/4 v7, 0x0

    :goto_11
    return v7

    .line 604
    :sswitch_12
    const-string v8, "currentlist"

    iget v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->saveState(Ljava/lang/String;I)V

    .line 605
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    instance-of v8, v8, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;

    if-eqz v8, :cond_35

    .line 606
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const-class v9, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    .local v0, delIntent:Landroid/content/Intent;
    const-string v8, "bucket_id"

    iget v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mBucket_id:I

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 608
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 611
    .end local v0           #delIntent:Landroid/content/Intent;
    :cond_35
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const-class v9, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 612
    .restart local v0       #delIntent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 613
    iget v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    iput v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    goto :goto_11

    .line 616
    .end local v0           #delIntent:Landroid/content/Intent;
    :sswitch_48
    new-instance v8, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, p0}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;-><init>(Landroid/content/Context;Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    goto :goto_11

    .line 619
    :sswitch_50
    new-instance v8, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;-><init>(Landroid/content/Context;)V

    goto :goto_11

    .line 622
    :sswitch_58
    const-string v8, "currentlist"

    iget v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->saveState(Ljava/lang/String;I)V

    .line 623
    new-instance v1, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const-class v9, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    .local v1, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 626
    iget v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    iput v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteFrom:I

    goto :goto_11

    .line 629
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_72
    const-string v5, "http://waprd.telstra.com/redirect?target=tv-mid"

    .line 631
    .local v5, uri:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const-class v9, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 632
    .local v2, intentbp:Landroid/content/Intent;
    const-string v8, "com.android.browser"

    const-string v9, "com.android.browser.BrowserActivity"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v8, "http://waprd.telstra.com/redirect?target=tv-mid"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 634
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 637
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 640
    .end local v2           #intentbp:Landroid/content/Intent;
    .end local v5           #uri:Ljava/lang/String;
    :sswitch_9c
    const-string v6, "http://waprd.telstra.com/redirect?target=3gmusicvideos-mid"

    .line 642
    .local v6, urimv:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    const-class v9, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 643
    .local v3, intentmv:Landroid/content/Intent;
    const-string v8, "com.android.browser"

    const-string v9, "com.android.browser.BrowserActivity"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const-string v8, "http://waprd.telstra.com/redirect?target=3gmusicvideos-mid"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 645
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 649
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 602
    :sswitch_data_c6
    .sparse-switch
        0x12d -> :sswitch_12
        0x12e -> :sswitch_48
        0x12f -> :sswitch_50
        0xbdb -> :sswitch_58
        0xbdc -> :sswitch_72
        0xbdd -> :sswitch_9c
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 469
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCount:I

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoCountPause:I

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 472
    return-void
.end method

.method public onPause(I)V
    .registers 5
    .parameter "tabIndex"

    .prologue
    const/4 v2, 0x1

    .line 475
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 478
    sput p1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-eqz v0, :cond_1c

    .line 480
    sget v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    if-ne v0, v2, :cond_20

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListsIndex:I

    .line 486
    :cond_1c
    :goto_1c
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    .line 487
    return-void

    .line 482
    :cond_20
    sget v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    if-nez v0, :cond_1c

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThumbnailsIndex:I

    goto :goto_1c
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 9
    .parameter "menu"

    .prologue
    const/16 v6, 0xbdb

    const/16 v5, 0x12e

    const/16 v4, 0x12d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 572
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4e

    .line 573
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_38

    .line 574
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 575
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 576
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 597
    :cond_37
    :goto_37
    return-void

    .line 582
    :cond_38
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 583
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 584
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_37

    .line 590
    :cond_4e
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5e

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5e

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_37

    .line 591
    :cond_5e
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 592
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 594
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 595
    const/16 v0, 0x12f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_37
.end method

.method public onResume()V
    .registers 16

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 267
    sput v14, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    .line 268
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume() mListType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume() NEED_LAYOUT : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-boolean v12, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z

    .line 272
    new-instance v2, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v9, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v9, "file"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 279
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onResumeCheckFilechange()Z

    move-result v9

    if-nez v9, :cond_6e

    .line 368
    :goto_6d
    return-void

    .line 283
    :cond_6e
    iget v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_75

    .line 284
    sput-boolean v13, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 287
    :cond_75
    sget-boolean v9, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    if-eqz v9, :cond_7e

    .line 288
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->reLayout()V

    .line 289
    sput-boolean v12, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 292
    :cond_7e
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_a1

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_a1

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_a1

    .line 293
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_a1

    .line 294
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 295
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 300
    :cond_a1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v0, currentVideoIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v5, tobeDeletedVideoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_164

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_164

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_164

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_164

    .line 304
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 305
    const-wide/16 v7, -0x1

    .line 306
    .local v7, videoId:J
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_d3

    .line 307
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 311
    :cond_d3
    :try_start_d3
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 312
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_ee

    .line 313
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_ee
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_f3} :catch_1b3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d3 .. :try_end_f3} :catch_1ce

    move-result v9

    if-nez v9, :cond_d3

    .line 322
    :goto_f6
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 324
    .local v3, iterPreviousDeleteList:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_fc
    :goto_fc
    :try_start_fc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_137

    .line 325
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 326
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_fc

    .line 327
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_11d} :catch_11e

    goto :goto_fc

    .line 330
    :catch_11e
    move-exception v1

    .line 331
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iterPreviousDeleteList: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v1           #e:Ljava/lang/Exception;
    :cond_137
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 336
    .local v6, tobedeletedIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_13b
    :try_start_13b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_164

    .line 337
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_14a} :catch_14b

    goto :goto_13b

    .line 339
    :catch_14b
    move-exception v1

    .line 340
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tobedeletedIterator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #iterPreviousDeleteList:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v6           #tobedeletedIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v7           #videoId:J
    :cond_164
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_196

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_196

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_196

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_196

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v9, v10, :cond_196

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_196

    .line 350
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 351
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 354
    :cond_196
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-eqz v9, :cond_1a2

    .line 355
    sget v9, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    if-ne v9, v13, :cond_1e9

    .line 356
    sget v9, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListsIndex:I

    iput v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I

    .line 362
    :cond_1a2
    :goto_1a2
    iget v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I

    if-ne v9, v14, :cond_1a8

    .line 363
    iput v12, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I

    .line 365
    :cond_1a8
    const/16 v9, 0xa

    iput v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVisibleItemCount:I

    .line 366
    iput-boolean v13, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThreadReset:Z

    .line 367
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->startThumbnailCreateThread()V

    goto/16 :goto_6d

    .line 316
    .restart local v7       #videoId:J
    :catch_1b3
    move-exception v1

    .line 317
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeleteVideoList - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f6

    .line 318
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1ce
    move-exception v4

    .line 319
    .local v4, oome:Ljava/lang/OutOfMemoryError;
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeleteVideoList - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f6

    .line 357
    .end local v4           #oome:Ljava/lang/OutOfMemoryError;
    .end local v7           #videoId:J
    :cond_1e9
    sget v9, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    if-nez v9, :cond_1a2

    .line 358
    sget v9, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThumbnailsIndex:I

    iput v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I

    goto :goto_1a2
.end method

.method public onResume(I)V
    .registers 16
    .parameter "tabIndex"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 371
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume() mListType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume() NEED_LAYOUT : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-boolean v12, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z

    .line 375
    new-instance v2, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 376
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v9, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v9, "file"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 382
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    sput p1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    .line 384
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->reLayout()V

    .line 386
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onResumeCheckFilechange()Z

    move-result v9

    if-nez v9, :cond_70

    .line 465
    :goto_6f
    return-void

    .line 388
    :cond_70
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_93

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_93

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_93

    .line 389
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_93

    .line 390
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 391
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 392
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    :cond_93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v0, currentVideoIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v5, tobeDeletedVideoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_156

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_156

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_156

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_156

    .line 400
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 401
    const-wide/16 v7, -0x1

    .line 403
    .local v7, videoId:J
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_c5

    .line 404
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 408
    :cond_c5
    :try_start_c5
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 409
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_e0

    .line 410
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_e0
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_e5} :catch_1a6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c5 .. :try_end_e5} :catch_1c1

    move-result v9

    if-nez v9, :cond_c5

    .line 419
    :goto_e8
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 421
    .local v3, iterPreviousDeleteList:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_ee
    :goto_ee
    :try_start_ee
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_129

    .line 422
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 423
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ee

    .line 424
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_10f} :catch_110

    goto :goto_ee

    .line 427
    :catch_110
    move-exception v1

    .line 428
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iterPreviousDeleteList: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v1           #e:Ljava/lang/Exception;
    :cond_129
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 433
    .local v6, tobedeletedIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_12d
    :try_start_12d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_156

    .line 434
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_13c} :catch_13d

    goto :goto_12d

    .line 436
    :catch_13d
    move-exception v1

    .line 437
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tobedeletedIterator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #iterPreviousDeleteList:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v6           #tobedeletedIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v7           #videoId:J
    :cond_156
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_188

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_188

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_188

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_188

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v9, v10, :cond_188

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_188

    .line 447
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 448
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->btDone:Landroid/widget/Button;

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 451
    :cond_188
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-eqz v9, :cond_194

    .line 452
    sget v9, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    if-ne v9, v13, :cond_1dc

    .line 453
    sget v9, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListsIndex:I

    iput v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I

    .line 459
    :cond_194
    :goto_194
    iget v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_19b

    .line 460
    iput v12, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I

    .line 462
    :cond_19b
    const/16 v9, 0xa

    iput v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mVisibleItemCount:I

    .line 463
    iput-boolean v13, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThreadReset:Z

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->startThumbnailCreateThread()V

    goto/16 :goto_6f

    .line 413
    .restart local v7       #videoId:J
    :catch_1a6
    move-exception v1

    .line 414
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeleteVideoList - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e8

    .line 415
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1c1
    move-exception v4

    .line 416
    .local v4, oome:Ljava/lang/OutOfMemoryError;
    const-string v9, "VideoListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeleteVideoList - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e8

    .line 454
    .end local v4           #oome:Ljava/lang/OutOfMemoryError;
    .end local v7           #videoId:J
    :cond_1dc
    sget v9, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    if-nez v9, :cond_194

    .line 455
    sget v9, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThumbnailsIndex:I

    iput v9, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I

    goto :goto_194
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->reLayout()V

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->showRecentlyPlayedItem()V

    .line 243
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z

    .line 491
    return-void
.end method

.method public reLayout()V
    .registers 2

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->setColumnByViewType()V

    .line 547
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView(I)V

    .line 548
    return-void
.end method

.method public retrievePositionofList()I
    .registers 3

    .prologue
    .line 1854
    const/4 v0, -0x1

    .line 1855
    .local v0, ret:I
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-eqz v1, :cond_b

    .line 1856
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 1858
    :cond_b
    return v0
.end method

.method public setBucket(II)V
    .registers 6
    .parameter "bucketId"
    .parameter "folderIndex"

    .prologue
    .line 1236
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/Who;->print()V

    .line 1237
    const-string v0, "VideoListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBucket() - bucketId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " folderIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mBucket_id:I

    .line 1239
    sput p2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFoldersIndex:I

    .line 1240
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    .line 1241
    return-void
.end method

.method public setFolderVideoIndex(I)V
    .registers 3
    .parameter "folderIndex"

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-eqz v0, :cond_f

    .line 1863
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFolderVideoIndex:I

    .line 1867
    :goto_c
    sput p1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFolderPrevIndex:I

    .line 1868
    return-void

    .line 1865
    :cond_f
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mFolderVideoIndex:I

    goto :goto_c
.end method

.method protected setPausingToStopThread()V
    .registers 2

    .prologue
    .line 1893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z

    .line 1894
    return-void
.end method

.method public setTabIndex(I)V
    .registers 2
    .parameter "tabIndex"

    .prologue
    .line 1879
    sput p1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mTabIndex:I

    .line 1881
    return-void
.end method

.method public setThumbnailIndex(I)V
    .registers 2
    .parameter "thumbnailIndex"

    .prologue
    .line 1875
    sput p1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mThumbnailsIndex:I

    .line 1876
    return-void
.end method

.method public showRecentlyPlayedItem()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getMostRecentVideoId()J

    move-result-wide v2

    sput-wide v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->lastID:J

    .line 248
    const-string v2, "VideoListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showRecentlyPlayedItem()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->lastID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-eqz v2, :cond_70

    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_70

    .line 252
    :try_start_2f
    sget-boolean v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mHoldFocus:Z

    if-eqz v2, :cond_70

    sget-wide v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->lastID:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_70

    .line 253
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3c
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_70

    .line 254
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->lastID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_67

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getCount()I

    move-result v2

    if-le v2, v1, :cond_67

    .line 255
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setSelection(I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_67} :catch_6a

    .line 253
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 259
    .end local v1           #i:I
    :catch_6a
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListView:Landroid/widget/GridView;

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setSelection(I)V

    .line 263
    .end local v0           #e:Ljava/lang/Exception;
    :cond_70
    sput-boolean v6, Lcom/sec/android/app/videoplayer/view/VideoListView;->mHoldFocus:Z

    .line 264
    return-void
.end method

.method public declared-synchronized startThumbnailCreateThread()V
    .registers 5

    .prologue
    .line 1417
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoListView$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoListView$15;-><init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1709
    .local v0, thread:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    if-nez v1, :cond_16

    .line 1710
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView;->mRetriever:Landroid/media/MediaMetadataRetriever;

    .line 1712
    :cond_16
    if-eqz v0, :cond_44

    .line 1713
    const-string v1, "VideoListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startThumbnailThread() - thread state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1717
    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_44

    .line 1718
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 1721
    :cond_44
    monitor-exit p0

    return-void

    .line 1417
    .end local v0           #thread:Ljava/lang/Thread;
    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1
.end method

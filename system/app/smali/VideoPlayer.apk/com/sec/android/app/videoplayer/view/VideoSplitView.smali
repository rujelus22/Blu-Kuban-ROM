.class public Lcom/sec/android/app/videoplayer/view/VideoSplitView;
.super Landroid/widget/LinearLayout;
.source "VideoSplitView.java"


# static fields
.field public static final LIST_LANDSCAPE:I = 0x1

.field public static final LIST_PORTRAIT:I = 0x1

.field private static final MENU_GROUP:I = 0x12c

.field private static final MENU_GROUP_BIGPONDTV:I = 0xbdc

.field private static final MENU_GROUP_DELETE:I = 0x12d

.field private static final MENU_GROUP_MUSICVIDEOS:I = 0xbdd

.field private static final MENU_GROUP_SETTING:I = 0x12f

.field private static final MENU_GROUP_SHARE_VIDEO_VIA:I = 0xbdb

.field private static final MENU_GROUP_SORTBY:I = 0x12e

.field public static final NULLPATH:Ljava/lang/String; = "null_filepath"

.field public static final REFRESH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoSplitView"

.field public static final THUMBNAMIL_LANDSCAPE:I = 0x4

.field public static final THUMBNAMIL_PORTRAIT:I = 0x2

.field public static final VIDEOLIST_KEY:Ljava/lang/String; = null

.field public static final VIEW_BY_LIST:I = 0x64

.field public static final VIEW_BY_THUMBNAIL:I = 0xc8

.field public static defaultImg:Landroid/graphics/Bitmap;

.field public static lastID:J

.field public static loadingIndicatorSDCard:Landroid/app/ProgressDialog;

.field public static mHandler:Landroid/os/Handler;

.field public static mLayoutNeeded:Z

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

.field public static mMediaScannerFinished:Z

.field public static mThumbnailNeeded:Z

.field private static mVideoPlayerSplitAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;

.field public static thumbnail_loading:Z


# instance fields
.field private btCancel:Landroid/widget/Button;

.field private btDone:Landroid/widget/Button;

.field private columnCount:I

.field private deleteFrom:I

.field private lySelectAll:Landroid/widget/LinearLayout;

.field private mBucketID:I

.field private mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

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

.field private mDivider:Landroid/widget/ImageView;

.field private mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

.field private mFolderView:Landroid/widget/ListView;

.field private mListType:I

.field private mListView:Landroid/widget/LinearLayout;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mRoot:Landroid/view/View;

.field private mVideoCount:I

.field private orientationState:I

.field private selectAllCheckbox:Landroid/widget/CheckBox;

.field private viewBy:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mLayoutNeeded:Z

    .line 70
    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mThumbnailNeeded:Z

    .line 75
    const-class v0, Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->VIDEOLIST_KEY:Ljava/lang/String;

    .line 80
    sput-object v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mVideoPlayerSplitAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;

    .line 84
    sput-boolean v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mMediaScannerFinished:Z

    .line 99
    sput-object v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListInfoArrayList:Ljava/util/ArrayList;

    .line 106
    sput-boolean v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->thumbnail_loading:Z

    .line 117
    sput-object v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->loadingIndicatorSDCard:Landroid/app/ProgressDialog;

    .line 1042
    sput-object v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->defaultImg:Landroid/graphics/Bitmap;

    .line 1069
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView$9;

    invoke-direct {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView$9;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 11
    .parameter "context"
    .parameter "listtype"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 120
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    .line 76
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    .line 79
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    .line 83
    iput v5, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    .line 86
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    .line 87
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListView:Landroid/widget/LinearLayout;

    .line 88
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 89
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;

    .line 90
    iput v5, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mBucketID:I

    .line 92
    const/16 v2, 0x64

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->viewBy:I

    .line 93
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->orientationState:I

    .line 94
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    .line 97
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->lySelectAll:Landroid/widget/LinearLayout;

    .line 98
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    .line 100
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    .line 103
    iput v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mVideoCount:I

    .line 105
    iput v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->deleteFrom:I

    .line 932
    new-instance v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView$8;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    .line 122
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    .line 123
    iput v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->deleteFrom:I

    .line 125
    if-ne p2, v7, :cond_4d

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v1

    .line 127
    .local v1, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v2, "currentlist"

    iget v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->deleteFrom:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadIntKey(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->deleteFrom:I

    .line 131
    .end local v1           #spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    :cond_4d
    iput p2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListInfoArrayList:Ljava/util/ArrayList;

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    .line 135
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 137
    .local v0, inflate:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    if-ne v2, v7, :cond_c6

    .line 138
    const v2, 0x7f03000a

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    .line 145
    :goto_74
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    if-nez v2, :cond_85

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    const v3, 0x7f0a0074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    .line 148
    :cond_85
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_96

    .line 149
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    const v3, 0x7f0a0076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListView:Landroid/widget/LinearLayout;

    .line 151
    :cond_96
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;

    if-nez v2, :cond_a7

    .line 152
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    const v3, 0x7f0a0075

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;

    .line 154
    :cond_a7
    new-instance v2, Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v6, v5}, Lcom/sec/android/app/videoplayer/view/VideoListView;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 155
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    return-void

    .line 139
    :cond_c6
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_d5

    .line 140
    const v2, 0x7f030012

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    goto :goto_74

    .line 142
    :cond_d5
    const v2, 0x7f030020

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    goto :goto_74
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100()Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mVideoPlayerSplitAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mBucketID:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/view/VideoSplitView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->changeAllState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->removeFileToListInfoArray()V

    return-void
.end method

.method private changeAllState(Z)V
    .registers 10
    .parameter "checked"

    .prologue
    .line 776
    if-eqz p1, :cond_64

    .line 777
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 778
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_3e

    .line 779
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 782
    :cond_10
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 783
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

    .line 786
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_36
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_10

    .line 794
    .end local v3           #videoID:J
    :cond_3e
    :goto_3e
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v5, v6, v7

    .line 796
    .local v5, viewItemCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4d
    if-gt v0, v5, :cond_6a

    .line 797
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 798
    .local v2, itemView:Landroid/view/View;
    const v6, 0x7f0a002e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 799
    .local v1, itemCheckBox:Landroid/widget/CheckBox;
    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 791
    .end local v0           #i:I
    .end local v1           #itemCheckBox:Landroid/widget/CheckBox;
    .end local v2           #itemView:Landroid/view/View;
    .end local v5           #viewItemCount:I
    :cond_64
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_3e

    .line 801
    .restart local v0       #i:I
    .restart local v5       #viewItemCount:I
    :cond_6a
    return-void
.end method

.method private changeListView(I)V
    .registers 2
    .parameter "listType"

    .prologue
    .line 853
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    .line 854
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->initAdapter()V

    .line 855
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->initMainView()V

    .line 856
    return-void
.end method

.method private checkState()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1019
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->orientationState:I

    .line 1021
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->viewBy:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1d

    .line 1022
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->orientationState:I

    if-ne v0, v2, :cond_1a

    .line 1023
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    .line 1034
    :goto_19
    return-void

    .line 1025
    :cond_1a
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    goto :goto_19

    .line 1028
    :cond_1d
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->orientationState:I

    if-ne v0, v2, :cond_25

    .line 1029
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    goto :goto_19

    .line 1031
    :cond_25
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    goto :goto_19
.end method

.method private connectDB()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 585
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v1

    .line 587
    .local v1, videoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    sget-boolean v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mMediaScannerFinished:Z

    if-nez v2, :cond_1b

    .line 588
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1a

    .line 589
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 590
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    .line 639
    :cond_1a
    :goto_1a
    return-void

    .line 595
    :cond_1b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 596
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    .line 598
    .local v0, getCursor:I
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_31

    .line 599
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->deleteFrom:I

    .line 602
    :cond_31
    const-string v2, "VideoSplitView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------------------Split View connectDB, ------mListType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleteFrom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->deleteFrom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/db/VideoDB;->IS_DATA_ONLY:Z

    .line 607
    packed-switch v0, :pswitch_data_bc

    .line 633
    :pswitch_5d
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const-string v3, "title"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderCursor(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    goto :goto_1a

    .line 610
    :pswitch_6a
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const-string v3, "SELECT_LIST"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderCursor(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    goto :goto_1a

    .line 613
    :pswitch_77
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const-string v3, "title"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderCursor(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    goto :goto_1a

    .line 617
    :pswitch_84
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const-string v3, "date_added"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderCursor(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    goto :goto_1a

    .line 621
    :pswitch_91
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const-string v3, "_data"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderCursor(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_1a

    .line 625
    :pswitch_9f
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const-string v3, "_data"

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderCursor(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_1a

    .line 629
    :pswitch_ad
    sget-object v2, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->searchString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSearchResult(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_1a

    .line 637
    .end local v0           #getCursor:I
    :cond_b7
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_1a

    .line 607
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_77
        :pswitch_5d
        :pswitch_5d
        :pswitch_84
        :pswitch_91
        :pswitch_6a
        :pswitch_5d
        :pswitch_ad
        :pswitch_6a
        :pswitch_9f
    .end packed-switch
.end method

.method private final getMenuTitle(I)Ljava/lang/String;
    .registers 4
    .parameter "idx"

    .prologue
    .line 479
    sparse-switch p1, :sswitch_data_42

    .line 495
    const-string v0, ""

    :goto_5
    return-object v0

    .line 481
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 483
    :sswitch_10
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 485
    :sswitch_1a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 487
    :sswitch_24
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 489
    :sswitch_2e
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    const v1, 0x7f0800a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 491
    :sswitch_38
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 479
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

.method private getVideoListItemLayout(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 996
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 997
    const v0, 0x7f03001f

    .line 999
    :goto_6
    return v0

    :cond_7
    const v0, 0x7f03000d

    goto :goto_6
.end method

.method private removeFileToListInfoArray()V
    .registers 9

    .prologue
    .line 914
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 915
    .local v0, VideoIdListSize:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v3

    .line 916
    .local v3, videoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    if-lez v0, :cond_4e

    .line 917
    const/4 v2, 0x0

    .local v2, j:I
    :goto_13
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_49

    .line 918
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/videoplayer/db/VideoDB;->setRemoveFlag(JI)I

    .line 919
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v5

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->delete(J)I

    .line 920
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 921
    add-int/lit8 v2, v2, -0x1

    .line 917
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 924
    :cond_49
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 930
    .end local v0           #VideoIdListSize:I
    .end local v2           #j:I
    .end local v3           #videoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    :cond_4e
    :goto_4e
    return-void

    .line 927
    :catch_4f
    move-exception v1

    .line 928
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "unexpected exception"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method private selectProcess()V
    .registers 3

    .prologue
    .line 804
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_14

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;

    if-eqz v0, :cond_14

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView$6;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btCancel:Landroid/widget/Button;

    if-eqz v0, :cond_22

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btCancel:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView$7;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    :cond_22
    return-void
.end method

.method private setColumnByViewType()V
    .registers 4

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v0

    .line 1038
    .local v0, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v1, "viewBy"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadIntKey(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->viewBy:I

    .line 1039
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->initVideoListViewColumns(Z)V

    .line 1040
    return-void
.end method

.method private videoCounting()V
    .registers 5

    .prologue
    .line 756
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_38

    .line 758
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mVideoCount:I

    .line 759
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 762
    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 763
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

    .line 767
    :cond_2a
    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mVideoCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mVideoCount:I

    .line 770
    :cond_30
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 773
    .end local v0           #VideoID:J
    :cond_38
    return-void
.end method


# virtual methods
.method public changeListView()V
    .registers 4

    .prologue
    .line 859
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_c

    .line 860
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 861
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    .line 865
    :cond_c
    :try_start_c
    iget v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->changeListView(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_16

    .line 869
    :goto_11
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->setBucket(I)V

    .line 870
    return-void

    .line 866
    :catch_16
    move-exception v0

    .line 867
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VideoSplitView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public checkDeleteList()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_29

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 1048
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1051
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;

    if-eqz v0, :cond_20

    .line 1053
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1056
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_29

    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1060
    :cond_29
    return-void
.end method

.method public getListItemCount()I
    .registers 2

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1066
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public initAdapter()V
    .registers 5

    .prologue
    .line 642
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getVideoListItemLayout(I)I

    move-result v0

    .line 643
    .local v0, layoutId:I
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->connectDB()V

    .line 645
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_17

    .line 646
    new-instance v1, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V

    sput-object v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mVideoPlayerSplitAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;

    .line 648
    :cond_17
    return-void
.end method

.method public initMainView()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_d3

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    if-nez v0, :cond_18

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    const v1, 0x7f0a0074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    .line 656
    :cond_18
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->checkState()V

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    sget-object v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mVideoPlayerSplitAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 659
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDrawingCacheQuality(I)V

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 676
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    if-eqz v0, :cond_5c

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5c

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5c

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5c

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7b

    .line 681
    :cond_5c
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView$3;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 743
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 753
    :goto_7a
    return-void

    .line 703
    :cond_7b
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    if-eq v0, v3, :cond_84

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_66

    .line 704
    :cond_84
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->lySelectAll:Landroid/widget/LinearLayout;

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    const v1, 0x7f0a0020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mRoot:Landroid/view/View;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btCancel:Landroid/widget/Button;

    .line 709
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->videoCounting()V

    .line 710
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectProcess()V

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView$4;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->lySelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView$5;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_66

    .line 748
    :cond_d3
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns()V

    goto :goto_7a
.end method

.method public initVideoListViewColumns()V
    .registers 2

    .prologue
    .line 1004
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->initVideoListViewColumns(Z)V

    .line 1005
    return-void
.end method

.method public initVideoListViewColumns(Z)V
    .registers 5
    .parameter "needLayout"

    .prologue
    .line 1008
    const-string v0, "VideoSplitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--initVideoListViewColumns, newConfig.orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->checkState()V

    .line 1011
    if-eqz p1, :cond_47

    .line 1012
    const-string v0, "VideoSplitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "columnCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->initAdapter()V

    .line 1014
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->initMainView()V

    .line 1016
    :cond_47
    return-void
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

    .line 465
    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getMenuTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020047

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 466
    const/16 v0, 0xbdb

    const/16 v1, 0xbdb

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getMenuTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02004d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 467
    invoke-direct {p0, v4}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getMenuTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020045

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 468
    invoke-direct {p0, v5}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getMenuTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v5, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02004a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 469
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 448
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_11

    .line 449
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 452
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1c

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 454
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    .line 457
    :cond_1c
    const-wide/16 v0, -0x1

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 458
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 13
    .parameter "menuItem"

    .prologue
    const/high16 v10, 0x1000

    const/4 v7, 0x1

    .line 533
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v4

    .line 534
    .local v4, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_b4

    .line 581
    const/4 v7, 0x0

    :goto_11
    return v7

    .line 536
    :sswitch_12
    const-string v8, "currentlist"

    iget v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->saveState(Ljava/lang/String;I)V

    .line 537
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    const-class v9, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 538
    .local v0, delIntent:Landroid/content/Intent;
    const-string v8, "bucket_id"

    iget v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mBucketID:I

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 539
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 540
    iget v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    iput v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->deleteFrom:I

    goto :goto_11

    .line 543
    .end local v0           #delIntent:Landroid/content/Intent;
    :sswitch_33
    new-instance v8, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, p0}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;-><init>(Landroid/content/Context;Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V

    goto :goto_11

    .line 546
    :sswitch_3b
    new-instance v8, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/sec/android/app/videoplayer/popup/VideoAutoPlayPopup;-><init>(Landroid/content/Context;)V

    goto :goto_11

    .line 549
    :sswitch_43
    const-string v8, "currentlist"

    iget v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->saveState(Ljava/lang/String;I)V

    .line 550
    new-instance v1, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    const-class v9, Lcom/sec/android/app/videoplayer/activity/SendAppListDialogActivity;

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 551
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "bucket_id"

    iget v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mBucketID:I

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 555
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_60
    const-string v5, "http://waprd.telstra.com/redirect?target=tv-mid"

    .line 557
    .local v5, uri:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    const-class v9, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
    .local v2, intentbp:Landroid/content/Intent;
    const-string v8, "com.android.browser"

    const-string v9, "com.android.browser.BrowserActivity"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v8, "http://waprd.telstra.com/redirect?target=tv-mid"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 560
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 563
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 566
    .end local v2           #intentbp:Landroid/content/Intent;
    .end local v5           #uri:Ljava/lang/String;
    :sswitch_89
    const-string v6, "http://waprd.telstra.com/redirect?target=3gmusicvideos-mid"

    .line 568
    .local v6, urimv:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    const-class v9, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .local v3, intentmv:Landroid/content/Intent;
    const-string v8, "com.android.browser"

    const-string v9, "com.android.browser.BrowserActivity"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v8, "http://waprd.telstra.com/redirect?target=3gmusicvideos-mid"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 571
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 575
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_11

    .line 534
    nop

    :sswitch_data_b4
    .sparse-switch
        0x12d -> :sswitch_12
        0x12e -> :sswitch_33
        0x12f -> :sswitch_3b
        0xbdb -> :sswitch_43
        0xbdc -> :sswitch_60
        0xbdd -> :sswitch_89
    .end sparse-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->setPausingToStopThread()V

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 433
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 434
    return-void
.end method

.method public onPause(I)V
    .registers 6
    .parameter "tabIndex"

    .prologue
    .line 437
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->setPausingToStopThread()V

    .line 438
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 439
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->setTabIndex(I)V

    .line 441
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v1

    .line 442
    .local v1, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v2, "folder_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadIntKey(Ljava/lang/String;I)I

    move-result v0

    .line 443
    .local v0, folderIndex:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->setFolderVideoIndex(I)V

    .line 444
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 445
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 9
    .parameter "menu"

    .prologue
    const/16 v6, 0x12e

    const/16 v5, 0x12d

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 499
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    if-ne v0, v3, :cond_61

    .line 502
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_49

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    if-ne v0, v4, :cond_31

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_49

    .line 505
    :cond_31
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 506
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 507
    const/16 v0, 0xbdb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 530
    :cond_48
    :goto_48
    return-void

    .line 513
    :cond_49
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 514
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 515
    const/16 v0, 0xbdb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_48

    .line 521
    :cond_61
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_75

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_75

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_75

    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    if-ne v0, v4, :cond_48

    .line 523
    :cond_75
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 524
    const/16 v0, 0xbdb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 526
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    if-ne v0, v4, :cond_48

    .line 528
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_48
.end method

.method public onResume()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 261
    const-string v9, "VideoSplitView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume() mListType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v9, "VideoSplitView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume() NEED_LAYOUT : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mLayoutNeeded:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v2, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 265
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v9, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v9, "file"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 271
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    sget-boolean v9, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mLayoutNeeded:Z

    if-nez v9, :cond_6a

    sget-boolean v9, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    if-eqz v9, :cond_75

    .line 274
    :cond_6a
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->reLayout()V

    .line 275
    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->setBucket(I)V

    .line 276
    sput-boolean v12, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mLayoutNeeded:Z

    .line 277
    sput-boolean v12, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 280
    :cond_75
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_98

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_98

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_98

    .line 281
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_98

    .line 282
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 283
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 284
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    :cond_98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, currentVideoIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v5, tobeDeletedVideoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_15b

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_15b

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_15b

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_15b

    .line 292
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 293
    const-wide/16 v7, -0x1

    .line 294
    .local v7, videoId:J
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_ca

    .line 295
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    :cond_ca
    :try_start_ca
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 300
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_e5

    .line 301
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_e5
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_ea} :catch_18e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ca .. :try_end_ea} :catch_1a9

    move-result v9

    if-nez v9, :cond_ca

    .line 310
    :goto_ed
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 312
    .local v3, iterPreviousDeleteList:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_f3
    :goto_f3
    :try_start_f3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12e

    .line 313
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 314
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f3

    .line 315
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_114} :catch_115

    goto :goto_f3

    .line 318
    :catch_115
    move-exception v1

    .line 319
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "VideoSplitView"

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

    .line 322
    .end local v1           #e:Ljava/lang/Exception;
    :cond_12e
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 324
    .local v6, tobedeletedIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_132
    :try_start_132
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15b

    .line 325
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_141} :catch_142

    goto :goto_132

    .line 327
    :catch_142
    move-exception v1

    .line 328
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "VideoSplitView"

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

    .line 335
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #iterPreviousDeleteList:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v6           #tobedeletedIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v7           #videoId:J
    :cond_15b
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_18d

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_18d

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_18d

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_18d

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v9, v10, :cond_18d

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_18d

    .line 341
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 344
    :cond_18d
    return-void

    .line 304
    .restart local v7       #videoId:J
    :catch_18e
    move-exception v1

    .line 305
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "VideoSplitView"

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

    goto/16 :goto_ed

    .line 306
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1a9
    move-exception v4

    .line 307
    .local v4, oome:Ljava/lang/OutOfMemoryError;
    const-string v9, "VideoSplitView"

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

    goto/16 :goto_ed
.end method

.method public onResume(I)V
    .registers 16
    .parameter "tabIndex"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 347
    const-string v9, "VideoSplitView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume() mListType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v9, "VideoSplitView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume() NEED_LAYOUT : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mLayoutNeeded:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v9, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->setTabIndex(I)V

    .line 352
    new-instance v2, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 353
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v9, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v9, "file"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 359
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    sget-boolean v9, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mLayoutNeeded:Z

    if-nez v9, :cond_6f

    sget-boolean v9, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    if-eqz v9, :cond_7a

    .line 362
    :cond_6f
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->reLayout()V

    .line 363
    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->setBucket(I)V

    .line 364
    sput-boolean v12, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mLayoutNeeded:Z

    .line 365
    sput-boolean v12, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 368
    :cond_7a
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_9d

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_9d

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_9d

    .line 369
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_9d

    .line 370
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 371
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 372
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    :cond_9d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v0, currentVideoIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v5, tobeDeletedVideoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_15c

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_15c

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_15c

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_15c

    .line 380
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 381
    const-wide/16 v7, -0x1

    .line 382
    .local v7, videoId:J
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 386
    :cond_cb
    :try_start_cb
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 387
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_e6

    .line 388
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_e6
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_eb} :catch_18f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_cb .. :try_end_eb} :catch_1aa

    move-result v9

    if-nez v9, :cond_cb

    .line 397
    :goto_ee
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 399
    .local v3, iterPreviousDeleteList:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_f4
    :goto_f4
    :try_start_f4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12f

    .line 400
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 401
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f4

    .line 402
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_115} :catch_116

    goto :goto_f4

    .line 405
    :catch_116
    move-exception v1

    .line 406
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "VideoSplitView"

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

    .line 409
    .end local v1           #e:Ljava/lang/Exception;
    :cond_12f
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 411
    .local v6, tobedeletedIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_133
    :try_start_133
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15c

    .line 412
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_142} :catch_143

    goto :goto_133

    .line 414
    :catch_143
    move-exception v1

    .line 415
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "VideoSplitView"

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

    .line 419
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #iterPreviousDeleteList:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v6           #tobedeletedIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v7           #videoId:J
    :cond_15c
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_18e

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_18e

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    if-eqz v9, :cond_18e

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_18e

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v9, v10, :cond_18e

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    if-eqz v9, :cond_18e

    .line 425
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->selectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v9, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 426
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->btDone:Landroid/widget/Button;

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    :cond_18e
    return-void

    .line 391
    .restart local v7       #videoId:J
    :catch_18f
    move-exception v1

    .line 392
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "VideoSplitView"

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

    goto/16 :goto_ee

    .line 393
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1aa
    move-exception v4

    .line 394
    .local v4, oome:Ljava/lang/OutOfMemoryError;
    const-string v9, "VideoSplitView"

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

    goto/16 :goto_ee
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 254
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mLayoutNeeded:Z

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getMostRecentVideoId()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->lastID:J

    .line 258
    return-void
.end method

.method public reLayout()V
    .registers 2

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->setColumnByViewType()V

    .line 474
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->changeListView(I)V

    .line 475
    return-void
.end method

.method public setBucket(I)V
    .registers 8
    .parameter "index"

    .prologue
    .line 876
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 877
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->connectDB()V

    .line 878
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1b

    .line 879
    const-string v3, "VideoSplitView"

    const-string v4, "setBucket  mCursor is null !!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :goto_1a
    return-void

    .line 883
    :cond_1b
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v2

    .line 884
    .local v2, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v3, "folder_index"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadIntKey(Ljava/lang/String;I)I

    move-result v1

    .line 886
    .local v1, oldIndex:I
    if-gez p1, :cond_9f

    .line 887
    move v0, v1

    .line 891
    .local v0, newIndex:I
    :goto_2b
    if-ltz v0, :cond_35

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_6b

    .line 892
    :cond_35
    const-string v3, "VideoSplitView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBucket  index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "count ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "reset"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 896
    :cond_6b
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 897
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    const-string v5, "bucket_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mBucketID:I

    .line 899
    if-eq v1, v0, :cond_87

    .line 900
    const-string v3, "folder_index"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->saveState(Ljava/lang/String;I)V

    .line 903
    :cond_87
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->notifyDataSetChanged()V

    .line 905
    const/4 v3, -0x1

    if-eq p1, v3, :cond_96

    .line 906
    const/4 v0, -0x1

    .line 909
    :cond_96
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFileView:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mBucketID:I

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->setBucket(II)V

    goto/16 :goto_1a

    .line 889
    .end local v0           #newIndex:I
    :cond_9f
    move v0, p1

    .restart local v0       #newIndex:I
    goto :goto_2b
.end method

.method public setSplitWidth()V
    .registers 10

    .prologue
    const/4 v8, -0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 202
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_10

    .line 203
    const-string v4, "VideoSplitView"

    const-string v5, "setSplitWidth() - no need to set divider when list is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_f
    return-void

    .line 207
    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v2

    .line 208
    .local v2, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v4, "split_width"

    const/16 v5, 0x12c

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadIntKey(Ljava/lang/String;I)I

    move-result v3

    .line 209
    .local v3, x:I
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    .line 211
    .local v0, orientation:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isHDPI()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 213
    const/4 v3, -0x1

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 227
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_44
    const/4 v4, 0x1

    if-ne v0, v4, :cond_62

    .line 228
    const/4 v3, -0x1

    .line 229
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    :cond_52
    :goto_52
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 241
    .restart local v1       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, -0x13

    invoke-virtual {v1, v6, v6, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 242
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mFolderView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    .line 231
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_62
    const/4 v4, 0x2

    if-ne v0, v4, :cond_52

    .line 233
    const/16 v4, 0x78

    if-ge v3, v4, :cond_76

    .line 234
    const/16 v3, 0x78

    .line 237
    :cond_6b
    :goto_6b
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_52

    .line 235
    :cond_76
    const/16 v4, 0x2fc

    if-le v3, v4, :cond_6b

    .line 236
    const/16 v3, 0x2fc

    goto :goto_6b
.end method

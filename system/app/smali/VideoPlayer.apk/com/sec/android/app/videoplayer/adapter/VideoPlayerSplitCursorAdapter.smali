.class public Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "VideoPlayerSplitCursorAdapter.java"


# static fields
.field public static final COLUMN_FLAG_BLANK:I = -0x67

.field public static final COLUMN_FLAG_DATE:I = -0x65

.field public static final COLUMN_FLAG_FOLDER:I = -0x66

.field static final VIEW_BY_LIST:I = 0x64

.field static final VIEW_BY_THUMBNAIL:I = 0xc8


# instance fields
.field private folder_text:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDividerPoint:Landroid/widget/ImageView;

.field private mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

.field private videolistview:Lcom/sec/android/app/videoplayer/view/VideoSplitView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 5
    .parameter "context"
    .parameter "layout"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 25
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->videolistview:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    .line 26
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 36
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mDividerPoint:Landroid/widget/ImageView;

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V
    .registers 6
    .parameter "context"
    .parameter "layout"
    .parameter "cursor"
    .parameter "listview"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 25
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->videolistview:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    .line 26
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 36
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mDividerPoint:Landroid/widget/ImageView;

    .line 45
    iput-object p4, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->videolistview:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-nez v0, :cond_20

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 51
    :cond_20
    return-void
.end method

.method private getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "filePath"

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 133
    invoke-static {p1}, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->getHashmapBitmaps(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    :cond_d
    return-object v0
.end method


# virtual methods
.method public CheckIdExist_RemoveIdList(J)Z
    .registers 6
    .parameter "id"

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->videolistview:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->videolistview:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1f

    .line 114
    const/4 v1, 0x1

    .line 118
    :goto_1e
    return v1

    .line 112
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 65
    if-eqz p3, :cond_c1

    .line 66
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v3, v7, Landroid/content/res/Configuration;->orientation:I

    .line 67
    .local v3, orientation:I
    const v7, 0x7f0a0025

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 68
    .local v6, thumbnail:Landroid/widget/ImageView;
    const-string v7, "bucket_id"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->getVideoFolderListCursor(I)Landroid/database/Cursor;

    move-result-object v5

    .line 69
    .local v5, tempCursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 70
    .local v2, filePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 72
    .local v0, VideoID:Ljava/lang/Long;
    if-eqz v5, :cond_5d

    .line 73
    const-string v7, "_data"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string v7, "_id"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_5a

    .line 76
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 77
    :cond_5a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_5d
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 83
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6a

    .line 84
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 85
    const/4 v1, 0x0

    .line 89
    :cond_6a
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    const v7, 0x7f0a0071

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->folder_text:Landroid/widget/TextView;

    .line 92
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->folder_text:Landroid/widget/TextView;

    const-string v8, "bucket_display_name"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v4

    .line 96
    .local v4, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    const-string v8, "folder_index"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadIntKey(Ljava/lang/String;I)I

    move-result v8

    if-ne v7, v8, :cond_d4

    .line 97
    const/4 v7, 0x1

    if-eq v3, v7, :cond_a3

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isHDPI()Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 99
    :cond_a3
    const v7, 0x7f0a0072

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_af
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->folder_text:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 109
    .end local v0           #VideoID:Ljava/lang/Long;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #orientation:I
    .end local v4           #spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    .end local v5           #tempCursor:Landroid/database/Cursor;
    .end local v6           #thumbnail:Landroid/widget/ImageView;
    :cond_c1
    return-void

    .line 101
    .restart local v0       #VideoID:Ljava/lang/Long;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #filePath:Ljava/lang/String;
    .restart local v3       #orientation:I
    .restart local v4       #spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    .restart local v5       #tempCursor:Landroid/database/Cursor;
    .restart local v6       #thumbnail:Landroid/widget/ImageView;
    :cond_c2
    const v7, 0x7f0a0072

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mDividerPoint:Landroid/widget/ImageView;

    .line 102
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mDividerPoint:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_af

    .line 105
    :cond_d4
    const v7, 0x7f0a0072

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_af
.end method

.method public changeDividerPointImage(Z)V
    .registers 4
    .parameter "isPressed"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mDividerPoint:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 123
    if-eqz p1, :cond_f

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mDividerPoint:Landroid/widget/ImageView;

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    :cond_e
    :goto_e
    return-void

    .line 126
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mDividerPoint:Landroid/widget/ImageView;

    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e
.end method

.method public getVideoFolderListCursor(I)Landroid/database/Cursor;
    .registers 5
    .parameter "bucket_id"

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, cur:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-eqz v1, :cond_17

    .line 56
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoFolderListCursorExceptMyVideo(II)Landroid/database/Cursor;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_17

    .line 58
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 61
    :cond_17
    return-object v0
.end method

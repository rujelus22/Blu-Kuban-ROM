.class public Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "VideoPlayerCursorAdapter.java"


# static fields
.field public static final COLUMN_FLAG_BLANK:I = -0x67

.field public static final COLUMN_FLAG_DATE:I = -0x65

.field public static final COLUMN_FLAG_FOLDER:I = -0x66

.field public static final COUNT_ENABLE_VAL:I = 0x14

.field private static final TAG:Ljava/lang/String; = "VideoPlayerCursorAdapter"

.field static final VIEW_BY_LIST:I = 0x64

.field static final VIEW_BY_THUMBNAIL:I = 0xc8


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListType:I

.field private mViewBy:I

.field private videolistview:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/database/Cursor;ILcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 9
    .parameter "context"
    .parameter "listType"
    .parameter "layout"
    .parameter "cursor"
    .parameter "viewBy"
    .parameter "listview"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 52
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 31
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->videolistview:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 33
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    .line 36
    iput v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mViewBy:I

    .line 53
    iput-object p6, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->videolistview:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 54
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput p2, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    .line 57
    iput p5, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mViewBy:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 6
    .parameter "context"
    .parameter "layout"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 31
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->videolistview:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 33
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    .line 36
    iput v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mViewBy:I

    .line 48
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "filePath"

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 258
    invoke-static {p1}, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->getHashmapBitmaps(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    :cond_d
    return-object v0
.end method

.method private stringForTime(J)Ljava/lang/String;
    .registers 15
    .parameter "timeMs"

    .prologue
    const-wide/16 v10, 0x3c

    .line 247
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 248
    .local v6, totalSeconds:J
    rem-long v4, v6, v10

    .line 249
    .local v4, seconds:J
    div-long v8, v6, v10

    rem-long v2, v8, v10

    .line 250
    .local v2, minutes:J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 252
    .local v0, hours:J
    const-string v8, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public CheckIdExist_RemoveIdList(J)Z
    .registers 6
    .parameter "id"

    .prologue
    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->videolistview:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->videolistview:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1f

    .line 239
    const/4 v1, 0x1

    .line 242
    :goto_1e
    return v1

    .line 237
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    :cond_22
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 38
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 63
    if-eqz p3, :cond_47

    .line 64
    const-wide/16 v25, 0x0

    .line 67
    .local v25, videoId:J
    :try_start_4
    const-string v29, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J
    :try_end_1d
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_1d} :catch_48
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1d} :catch_54
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_1d} :catch_60

    move-result-wide v25

    .line 79
    :goto_1e
    const v29, 0x7f0a0028

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 80
    .local v20, row_text:Landroid/widget/LinearLayout;
    const v29, 0x7f0a0024

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 82
    .local v18, normal:Landroid/widget/LinearLayout;
    const-wide/16 v29, -0x67

    cmp-long v29, v25, v29

    if-nez v29, :cond_6c

    .line 83
    const/16 v29, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    .end local v18           #normal:Landroid/widget/LinearLayout;
    .end local v20           #row_text:Landroid/widget/LinearLayout;
    .end local v25           #videoId:J
    :cond_47
    :goto_47
    return-void

    .line 68
    .restart local v25       #videoId:J
    :catch_48
    move-exception v13

    .line 69
    .local v13, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v29, "VideoPlayerCursorAdapter"

    const-string v30, "CursorIndexOutOfBoundsException - bindView"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v13}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1e

    .line 71
    .end local v13           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_54
    move-exception v13

    .line 72
    .local v13, e:Ljava/lang/NumberFormatException;
    const-string v29, "VideoPlayerCursorAdapter"

    const-string v30, "NumberFormatException catched - bindView"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1e

    .line 74
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :catch_60
    move-exception v13

    .line 75
    .local v13, e:Landroid/database/StaleDataException;
    const-string v29, "VideoPlayerCursorAdapter"

    const-string v30, "StaleDataException - bindView"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v13}, Landroid/database/StaleDataException;->printStackTrace()V

    goto :goto_1e

    .line 86
    .end local v13           #e:Landroid/database/StaleDataException;
    .restart local v18       #normal:Landroid/widget/LinearLayout;
    .restart local v20       #row_text:Landroid/widget/LinearLayout;
    :cond_6c
    const/4 v6, 0x0

    .line 87
    .local v6, currentPercent:I
    const-wide/16 v7, 0x0

    .line 88
    .local v7, currentTime:J
    const-wide/16 v9, 0x0

    .line 89
    .local v9, durationTime:J
    const/16 v27, 0x0

    .line 90
    .local v27, videoTitle:Ljava/lang/String;
    const/4 v15, 0x0

    .line 93
    .local v15, filePath:Ljava/lang/String;
    :try_start_74
    const-string v29, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 94
    const-string v29, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 95
    const-string v29, "_data"

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 96
    const/16 v29, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_b7
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_74 .. :try_end_b7} :catch_250
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_b7} :catch_25a
    .catch Ljava/lang/IllegalStateException; {:try_start_74 .. :try_end_b7} :catch_264

    move-result-wide v7

    .line 105
    :goto_b8
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    const v29, 0x7f0a0029

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 109
    .local v23, titleView:Landroid/widget/TextView;
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v29, 0x7f0a002c

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 113
    .local v19, remainView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->stringForTime(J)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    const v29, 0x7f0a002d

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 117
    .local v11, durationView:Landroid/widget/TextView;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  /  "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->stringForTime(J)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const v29, 0x7f0a0026

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 121
    .local v16, lastPlayed:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;

    move/from16 v29, v0

    if-eqz v29, :cond_291

    .line 122
    sget-wide v29, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->lastID:J

    cmp-long v29, v29, v25

    if-nez v29, :cond_26e

    .line 123
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f06000d

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getColor(I)I

    move-result v29

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    :goto_165
    const v29, 0x7f0a0027

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ProgressBar;

    .line 143
    .local v12, duration_progress:Landroid/widget/ProgressBar;
    const v29, 0x7f0a0025

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 145
    .local v22, thumbnail:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 147
    .local v3, bitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_18e

    .line 148
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v29

    if-eqz v29, :cond_18e

    .line 149
    const/4 v3, 0x0

    .line 152
    :cond_18e
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    const-wide/16 v29, 0x0

    cmp-long v29, v9, v29

    if-lez v29, :cond_31c

    .line 156
    const-wide/16 v29, 0x0

    cmp-long v29, v7, v29

    if-gtz v29, :cond_30e

    .line 157
    const/4 v6, 0x0

    .line 170
    :cond_1a0
    :goto_1a0
    if-eqz v6, :cond_1a8

    const/16 v29, 0x64

    move/from16 v0, v29

    if-ne v6, v0, :cond_31f

    .line 171
    :cond_1a8
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    :goto_1af
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_39a

    .line 202
    :goto_1c1
    :pswitch_1c1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 203
    .local v5, cur_pos:I
    const v29, 0x7f0a0023

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 204
    .local v24, top_line:Landroid/widget/LinearLayout;
    if-eqz v24, :cond_1df

    .line 205
    if-nez v5, :cond_373

    .line 206
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    :cond_1df
    :goto_1df
    const v29, 0x7f0a0030

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    .line 213
    .local v28, video_count:Landroid/widget/LinearLayout;
    const v29, 0x7f0a002f

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 215
    .local v14, endline:Landroid/widget/LinearLayout;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v29

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_37e

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-ne v5, v0, :cond_37e

    .line 217
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    const v29, 0x7f0a0031

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 220
    .local v4, count_video:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x7f08008b

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 221
    .local v21, strCount:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_47

    .line 97
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #count_video:Landroid/widget/TextView;
    .end local v5           #cur_pos:I
    .end local v11           #durationView:Landroid/widget/TextView;
    .end local v12           #duration_progress:Landroid/widget/ProgressBar;
    .end local v14           #endline:Landroid/widget/LinearLayout;
    .end local v16           #lastPlayed:Landroid/widget/ImageView;
    .end local v19           #remainView:Landroid/widget/TextView;
    .end local v21           #strCount:Ljava/lang/String;
    .end local v22           #thumbnail:Landroid/widget/ImageView;
    .end local v23           #titleView:Landroid/widget/TextView;
    .end local v24           #top_line:Landroid/widget/LinearLayout;
    .end local v28           #video_count:Landroid/widget/LinearLayout;
    :catch_250
    move-exception v13

    .line 98
    .local v13, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v29, "VideoPlayerCursorAdapter"

    const-string v30, "CursorIndexOutOfBoundsException catched 2  :"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    .line 99
    .end local v13           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_25a
    move-exception v13

    .line 100
    .local v13, e:Ljava/lang/NumberFormatException;
    const-string v29, "VideoPlayerCursorAdapter"

    const-string v30, "NumberFormatException  catched :"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    .line 101
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :catch_264
    move-exception v13

    .line 102
    .local v13, e:Ljava/lang/IllegalStateException;
    const-string v29, "VideoPlayerCursorAdapter"

    const-string v30, "NumberFormatException  catched :"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    .line 126
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .restart local v11       #durationView:Landroid/widget/TextView;
    .restart local v16       #lastPlayed:Landroid/widget/ImageView;
    .restart local v19       #remainView:Landroid/widget/TextView;
    .restart local v23       #titleView:Landroid/widget/TextView;
    :cond_26e
    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f06000b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getColor(I)I

    move-result v29

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_165

    .line 129
    :cond_291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;

    move/from16 v29, v0

    if-eqz v29, :cond_2c2

    .line 130
    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f06000b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getColor(I)I

    move-result v29

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_165

    .line 133
    :cond_2c2
    sget-wide v29, Lcom/sec/android/app/videoplayer/view/VideoListView;->lastID:J

    cmp-long v29, v29, v25

    if-nez v29, :cond_2eb

    .line 134
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f06000d

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getColor(I)I

    move-result v29

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_165

    .line 137
    :cond_2eb
    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f06000b

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getColor(I)I

    move-result v29

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_165

    .line 160
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    .restart local v12       #duration_progress:Landroid/widget/ProgressBar;
    .restart local v22       #thumbnail:Landroid/widget/ImageView;
    :cond_30e
    const-wide/16 v29, 0x64

    mul-long v29, v29, v7

    div-long v29, v29, v9

    move-wide/from16 v0, v29

    long-to-int v6, v0

    .line 161
    if-nez v6, :cond_1a0

    .line 162
    const/4 v6, 0x1

    goto/16 :goto_1a0

    .line 167
    :cond_31c
    const/4 v6, 0x0

    goto/16 :goto_1a0

    .line 173
    :cond_31f
    invoke-virtual {v12, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 174
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1af

    .line 185
    :pswitch_32b
    const v29, 0x7f0a002e

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    .line 186
    .local v17, listcheckBox:Landroid/widget/CheckBox;
    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 189
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 191
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->CheckIdExist_RemoveIdList(J)Z

    move-result v29

    if-eqz v29, :cond_368

    .line 192
    const/16 v29, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1c1

    .line 194
    :cond_368
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1c1

    .line 208
    .end local v17           #listcheckBox:Landroid/widget/CheckBox;
    .restart local v5       #cur_pos:I
    .restart local v24       #top_line:Landroid/widget/LinearLayout;
    :cond_373
    const/16 v29, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1df

    .line 227
    .restart local v14       #endline:Landroid/widget/LinearLayout;
    .restart local v28       #video_count:Landroid/widget/LinearLayout;
    :cond_37e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mViewBy:I

    move/from16 v29, v0

    const/16 v30, 0xc8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_393

    .line 228
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    :cond_393
    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_47

    .line 182
    :pswitch_data_39a
    .packed-switch 0x5
        :pswitch_32b
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_32b
    .end packed-switch
.end method

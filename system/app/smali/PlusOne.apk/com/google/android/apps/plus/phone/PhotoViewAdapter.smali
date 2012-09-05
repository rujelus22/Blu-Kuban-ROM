.class public Lcom/google/android/apps/plus/phone/PhotoViewAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "PhotoViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/PhotoViewAdapter$2;
    }
.end annotation


# static fields
.field private static sPhotoSize:Ljava/lang/Integer;


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActionBarHeight:I

.field private mActionState:Ljava/lang/Integer;

.field private final mCommentLoadView:Landroid/view/View;

.field private final mDefaultAlbumName:Ljava/lang/String;

.field private mDisableSpacer:Z

.field private mDobjanschiContext:Landroid/content/Context;

.field private mExpandTags:Z

.field private mFullScreen:Z

.field private mHasScrollData:Z

.field private mList:Lcom/google/android/apps/plus/views/PhotoListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

.field private mScrollData:Landroid/database/Cursor;

.field private mShowPhotoOnly:Z

.field private mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

.field private final mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/views/CommentRowView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Ljava/lang/String;Landroid/view/View;)V
    .registers 14
    .parameter "context"
    .parameter "listView"
    .parameter "account"
    .parameter "c"
    .parameter "onClickListener"
    .parameter "streamClickListener"
    .parameter "defaultAlbumName"
    .parameter "commentLoadView"

    .prologue
    .line 107
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mViews:Ljava/util/List;

    .line 90
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_62

    const/4 v3, 0x1

    :goto_11
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    .line 108
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 109
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDobjanschiContext:Landroid/content/Context;

    .line 110
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 111
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 112
    iput-object p7, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDefaultAlbumName:Ljava/lang/String;

    .line 113
    iput-object p8, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mCommentLoadView:Landroid/view/View;

    .line 114
    new-instance v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/PhotoViewAdapter;)V

    invoke-virtual {p2, v3}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 126
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    if-nez v3, :cond_5a

    .line 127
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 128
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 130
    .local v2, wm:Landroid/view/WindowManager;
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    .line 131
    .local v0, imageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 132
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter$2;->$SwitchMap$com$google$android$apps$plus$util$ImageUtils$ImageSize:[I

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_86

    .line 146
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    .line 151
    .end local v0           #imageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_5a
    :goto_5a
    check-cast p2, Lcom/google/android/apps/plus/views/PhotoListView;

    .end local p2
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    .line 152
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->createTags()V

    .line 153
    return-void

    .line 90
    .restart local p2
    :cond_62
    const/4 v3, 0x0

    goto :goto_11

    .line 135
    .restart local v0       #imageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;
    .restart local v1       #metrics:Landroid/util/DisplayMetrics;
    .restart local v2       #wm:Landroid/view/WindowManager;
    :pswitch_64
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit16 v3, v3, 0x320

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    goto :goto_5a

    .line 140
    :pswitch_77
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    goto :goto_5a

    .line 132
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_64
        :pswitch_77
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/PhotoViewAdapter;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mCommentLoadView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/PhotoViewAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mViews:Ljava/util/List;

    return-object v0
.end method

.method private bindCaptionView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 715
    const v2, 0x7f0d0116

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 716
    .local v1, captionView:Landroid/widget/TextView;
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, caption:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    return-void
.end method

.method private bindCommentView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 749
    move-object v3, p1

    check-cast v3, Lcom/google/android/apps/plus/views/CommentRowView;

    .line 750
    .local v3, commentView:Lcom/google/android/apps/plus/views/CommentRowView;
    const/4 v10, 0x3

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 751
    .local v0, authorId:J
    const/4 v10, 0x4

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 752
    .local v2, authorName:Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {p2, v10, v11}, Lcom/google/android/apps/plus/util/Dates;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v8

    .line 754
    .local v8, time:Ljava/lang/CharSequence;
    const/4 v10, 0x7

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, contentHtml:Ljava/lang/String;
    const/4 v10, 0x6

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_63

    const/4 v9, 0x1

    .line 758
    .local v9, truncated:Z
    :goto_24
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/CommentRowView;->clear()V

    .line 759
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/CommentRowView;->setPosition(I)V

    .line 760
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/CommentRowView;->setClickListener(Lcom/google/android/apps/plus/views/ItemClickListener;)V

    .line 761
    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/apps/plus/views/CommentRowView;->setAuthor(JLjava/lang/String;)V

    .line 762
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/CommentRowView;->setTime(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v3, v4, v9}, Lcom/google/android/apps/plus/views/CommentRowView;->setContent(Ljava/lang/String;Z)V

    .line 765
    const/16 v10, 0x8

    invoke-interface {p3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_65

    const/4 v6, 0x0

    .line 767
    .local v6, plusOneBlob:[B
    :goto_49
    if-eqz v6, :cond_52

    .line 769
    :try_start_4b
    invoke-static {v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v7

    .line 770
    .local v7, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual {v3, v7}, Lcom/google/android/apps/plus/views/CommentRowView;->setPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    :try_end_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4b .. :try_end_52} :catch_6c

    .line 778
    .end local v7           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_52
    :goto_52
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/CommentRowView;->requestLayout()V

    .line 780
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mViews:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_62

    .line 781
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mViews:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_62
    return-void

    .line 755
    .end local v6           #plusOneBlob:[B
    .end local v9           #truncated:Z
    :cond_63
    const/4 v9, 0x0

    goto :goto_24

    .line 765
    .restart local v9       #truncated:Z
    :cond_65
    const/16 v10, 0x8

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    goto :goto_49

    .line 771
    .restart local v6       #plusOneBlob:[B
    :catch_6c
    move-exception v5

    .line 772
    .local v5, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v10, "PhotoViewAdapter"

    const/4 v11, 0x5

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 773
    const-string v10, "PhotoViewAdapter"

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52
.end method

.method private bindPhotoView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 43
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 629
    const v5, 0x7f0d002a

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 630
    .local v30, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    const v5, 0x7f0d002d

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 631
    .local v33, scrollerView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    const v5, 0x7f0d002c

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/View;

    .line 632
    .local v32, scrollLayout:Landroid/view/View;
    const v5, 0x7f0d002b

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/apps/plus/views/PhotoInfoView;

    .line 633
    .local v28, photoInfoView:Lcom/google/android/apps/plus/views/PhotoInfoView;
    const v5, 0x7f0d0029

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/apps/plus/views/PhotoLayout;

    .line 635
    .local v29, photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    const/4 v5, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 636
    .local v8, photoId:J
    const/16 v5, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 642
    .local v37, unsizedPhotoUrl:Ljava/lang/String;
    const-string v5, "content:"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d1

    .line 643
    new-instance v5, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v37 .. v37}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .end local v8           #photoId:J
    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    sget-object v6, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->getLocalImageAsync(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;I)V

    .line 653
    :goto_77
    const/16 v5, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 654
    .local v21, commentCount:I
    const/16 v5, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 655
    .local v31, plusOneCount:I
    const/4 v5, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 656
    .local v24, ownerId:J
    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 657
    .local v26, ownerName:Ljava/lang/String;
    const/4 v5, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_20c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDefaultAlbumName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 659
    .local v19, albumName:Ljava/lang/String;
    :goto_a4
    const/4 v5, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_215

    const/16 v20, 0x0

    .line 661
    .local v20, albumStream:Ljava/lang/String;
    :goto_af
    const/4 v5, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 662
    .local v17, albumId:J
    const/16 v5, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 664
    .local v35, timestamp:J
    const/16 v5, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionState:Ljava/lang/Integer;

    .line 667
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->setHeaderView(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->setExternalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mHasScrollData:Z

    if-eqz v5, :cond_f9

    .line 670
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mHasScrollData:Z

    .line 671
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mScrollData:Landroid/database/Cursor;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindScroller(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 672
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mScrollData:Landroid/database/Cursor;

    .line 675
    :cond_f9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->shouldShowTags(Landroid/content/Context;)Z

    move-result v34

    .line 676
    .local v34, showTags:Z
    if-eqz v34, :cond_21e

    const/4 v5, 0x0

    :goto_104
    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 679
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v5, :cond_222

    const/16 v27, 0x0

    .line 680
    .local v27, photoHeightAdjust:I
    :goto_111
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PhotoListView;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v5, v27

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoLayout;->setFixedHeight(I)V

    .line 682
    const/16 v5, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_22a

    const/16 v38, 0x0

    .line 684
    .local v38, videoData:[B
    :goto_12c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    if-eqz v5, :cond_234

    if-nez v38, :cond_234

    const/16 v23, 0x1

    .line 685
    .local v23, enableTransforms:Z
    :goto_136
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mShowPhotoOnly:Z

    if-eqz v5, :cond_238

    const/4 v5, 0x0

    :goto_13d
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setCommentCount(I)V

    .line 686
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mShowPhotoOnly:Z

    if-eqz v5, :cond_23c

    const/4 v5, 0x0

    :goto_149
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setPlusOneCount(I)V

    .line 687
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setFullScreen(ZZ)V

    .line 689
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setVideoData([B)V

    .line 690
    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->enableImageTransforms(Z)V

    .line 692
    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setOwner(JLjava/lang/CharSequence;)V

    .line 693
    move-object/from16 v0, v28

    move-wide/from16 v1, v17

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setAlbum(JLjava/lang/String;Ljava/lang/CharSequence;)V

    .line 694
    const-wide/16 v5, 0x0

    cmp-long v5, v35, v5

    if-lez v5, :cond_198

    .line 695
    move-object/from16 v0, p2

    move-wide/from16 v1, v35

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/Dates;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v22

    .line 696
    .local v22, date:Ljava/lang/CharSequence;
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setPhotoDate(Ljava/lang/CharSequence;)V

    .line 698
    .end local v22           #date:Ljava/lang/CharSequence;
    :cond_198
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setCommentCount(I)V

    .line 699
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setPlusOneCount(I)V

    .line 700
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mShowPhotoOnly:Z

    if-nez v5, :cond_1b2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    if-eqz v5, :cond_240

    .line 701
    :cond_1b2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    if-eqz v5, :cond_1c1

    .line 702
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/views/PhotoListView;->setSelectionFromTop(II)V

    .line 704
    :cond_1c1
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoInfoView;->hideHeaderInfoView(Z)V

    .line 708
    :goto_1c7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setExternalClickListener(Lcom/google/android/apps/plus/views/ItemClickListener;)V

    .line 709
    return-void

    .line 647
    .end local v17           #albumId:J
    .end local v19           #albumName:Ljava/lang/String;
    .end local v20           #albumStream:Ljava/lang/String;
    .end local v21           #commentCount:I
    .end local v23           #enableTransforms:Z
    .end local v24           #ownerId:J
    .end local v26           #ownerName:Ljava/lang/String;
    .end local v27           #photoHeightAdjust:I
    .end local v31           #plusOneCount:I
    .end local v34           #showTags:Z
    .end local v35           #timestamp:J
    .end local v38           #videoData:[B
    .restart local v8       #photoId:J
    :cond_1d1
    sget-object v5, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 648
    .local v10, photoUrl:Ljava/lang/String;
    new-instance v5, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v6

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 649
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    sget-object v5, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget-object v5, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v11 .. v16}, Lcom/google/android/apps/plus/service/EsService;->getCoverThumbnailAsynchronous(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;

    goto/16 :goto_77

    .line 657
    .end local v8           #photoId:J
    .end local v10           #photoUrl:Ljava/lang/String;
    .restart local v21       #commentCount:I
    .restart local v24       #ownerId:J
    .restart local v26       #ownerName:Ljava/lang/String;
    .restart local v31       #plusOneCount:I
    :cond_20c
    const/4 v5, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_a4

    .line 659
    .restart local v19       #albumName:Ljava/lang/String;
    :cond_215
    const/4 v5, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_af

    .line 676
    .restart local v17       #albumId:J
    .restart local v20       #albumStream:Ljava/lang/String;
    .restart local v34       #showTags:Z
    .restart local v35       #timestamp:J
    :cond_21e
    const/16 v5, 0x8

    goto/16 :goto_104

    .line 679
    :cond_222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    move/from16 v27, v0

    goto/16 :goto_111

    .line 682
    .restart local v27       #photoHeightAdjust:I
    :cond_22a
    const/16 v5, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v38

    goto/16 :goto_12c

    .line 684
    .restart local v38       #videoData:[B
    :cond_234
    const/16 v23, 0x0

    goto/16 :goto_136

    .restart local v23       #enableTransforms:Z
    :cond_238
    move/from16 v5, v21

    .line 685
    goto/16 :goto_13d

    :cond_23c
    move/from16 v5, v31

    .line 686
    goto/16 :goto_149

    .line 706
    :cond_240
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoInfoView;->showHeaderInfoView(Z)V

    goto :goto_1c7
.end method

.method private bindPlusOneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 727
    const v5, 0x7f0d0125

    :try_start_3
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 728
    .local v0, captionView:Landroid/widget/TextView;
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 729
    .local v1, data:[B
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v3

    .line 730
    .local v3, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p2, v5, v3}, Lcom/google/android/apps/plus/views/PlusOneDataUtils;->getLongPlusOnesString(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/lang/String;

    move-result-object v4

    .line 734
    .local v4, plusOneText:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 736
    const v5, 0x7f0200ad

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 743
    .end local v0           #captionView:Landroid/widget/TextView;
    .end local v1           #data:[B
    .end local v3           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .end local v4           #plusOneText:Ljava/lang/String;
    :goto_2a
    return-void

    .line 738
    .restart local v0       #captionView:Landroid/widget/TextView;
    .restart local v1       #data:[B
    .restart local v3       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .restart local v4       #plusOneText:Ljava/lang/String;
    :cond_2b
    const v5, 0x7f0200ac

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    :try_end_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_34} :catch_35

    goto :goto_2a

    .line 740
    .end local v0           #captionView:Landroid/widget/TextView;
    .end local v1           #data:[B
    .end local v3           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .end local v4           #plusOneText:Ljava/lang/String;
    :catch_35
    move-exception v2

    .line 741
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_2a
.end method

.method private createTags()V
    .registers 5

    .prologue
    .line 828
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 829
    .local v0, listTag:Ljava/lang/Object;
    instance-of v1, v0, Landroid/util/SparseArray;

    if-nez v1, :cond_15

    .line 830
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PhotoListView;->setTag(Ljava/lang/Object;)V

    .line 832
    :cond_15
    return-void
.end method

.method public static getPhotoSize()Ljava/lang/Integer;
    .registers 1

    .prologue
    .line 622
    sget-object v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    return-object v0
.end method

.method private getSpacerView(Landroid/content/Context;)Landroid/view/View;
    .registers 7
    .parameter "context"

    .prologue
    .line 789
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 791
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030068

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 793
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    return-object v1
.end method

.method private getTag(I)Ljava/lang/Object;
    .registers 4
    .parameter "key"

    .prologue
    .line 839
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 840
    .local v0, listTags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private setTag(ILjava/lang/Object;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 848
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 849
    .local v0, listTags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 850
    return-void
.end method

.method private shouldShowTags(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 802
    const v6, 0x7f0d002d

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 803
    .local v4, scrollView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    if-nez v6, :cond_47

    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mShowPhotoOnly:Z

    if-nez v6, :cond_47

    move v5, v7

    .line 805
    .local v5, showTags:Z
    :goto_14
    if-eqz v5, :cond_39

    .line 806
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 808
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 809
    .local v1, height:I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 810
    .local v3, orientation:I
    if-eq v3, v7, :cond_2f

    const/4 v6, 0x3

    if-ne v3, v6, :cond_49

    :cond_2f
    move v2, v7

    .line 813
    .local v2, isRotated:Z
    :goto_30
    if-eqz v5, :cond_4b

    if-eqz v2, :cond_38

    const/16 v6, 0x320

    if-lt v1, v6, :cond_4b

    :cond_38
    move v5, v7

    .line 816
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #height:I
    .end local v2           #isRotated:Z
    .end local v3           #orientation:I
    :cond_39
    :goto_39
    if-eqz v5, :cond_46

    if-eqz v4, :cond_46

    .line 817
    if-eqz v5, :cond_4d

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->hasTags()Z

    move-result v6

    if-eqz v6, :cond_4d

    move v5, v7

    .line 819
    :cond_46
    :goto_46
    return v5

    .end local v5           #showTags:Z
    :cond_47
    move v5, v8

    .line 803
    goto :goto_14

    .restart local v0       #display:Landroid/view/Display;
    .restart local v1       #height:I
    .restart local v3       #orientation:I
    .restart local v5       #showTags:Z
    :cond_49
    move v2, v8

    .line 810
    goto :goto_30

    .restart local v2       #isRotated:Z
    :cond_4b
    move v5, v8

    .line 813
    goto :goto_39

    .end local v0           #display:Landroid/view/Display;
    .end local v1           #height:I
    .end local v2           #isRotated:Z
    .end local v3           #orientation:I
    :cond_4d
    move v5, v8

    .line 817
    goto :goto_46
.end method


# virtual methods
.method public allowComments()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 491
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionState:Ljava/lang/Integer;

    if-nez v2, :cond_23

    .line 492
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 493
    .local v0, myCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 495
    :cond_11
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_32

    .line 496
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionState:Ljava/lang/Integer;

    .line 502
    .end local v0           #myCursor:Landroid/database/Cursor;
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionState:Ljava/lang/Integer;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_39

    :goto_31
    return v1

    .line 499
    .restart local v0       #myCursor:Landroid/database/Cursor;
    :cond_32
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_23

    .line 502
    .end local v0           #myCursor:Landroid/database/Cursor;
    :cond_39
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public bindPhotoImage(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    .line 341
    const v1, 0x7f0d002a

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 342
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_e

    .line 343
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->bindPhoto(Landroid/graphics/Bitmap;)V

    .line 345
    :cond_e
    return-void
.end method

.method public bindScroller(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 371
    const v6, 0x7f0d002d

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 372
    .local v3, scrollView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    const v6, 0x7f0d002c

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 374
    .local v0, scrollLayout:Landroid/view/View;
    if-eqz v3, :cond_61

    .line 375
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3, p1, v6, p2}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->bind(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)V

    .line 377
    const v6, 0x7f0d011b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 378
    .local v2, scrollTitleLayout:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v6, 0x7f0d002e

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 382
    .local v1, scrollTitle:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->isWaitingMyApproval()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020140

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 384
    .local v5, tag:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 388
    :goto_4c
    invoke-virtual {v1, v9, v9, v5, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->shouldShowTags(Landroid/content/Context;)Z

    move-result v4

    .line 391
    .local v4, showTags:Z
    if-eqz v4, :cond_5b

    .line 392
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 401
    .end local v1           #scrollTitle:Landroid/widget/TextView;
    .end local v2           #scrollTitleLayout:Landroid/view/View;
    .end local v4           #showTags:Z
    .end local v5           #tag:Landroid/graphics/drawable/Drawable;
    :goto_58
    return-void

    .line 386
    .restart local v1       #scrollTitle:Landroid/widget/TextView;
    .restart local v2       #scrollTitleLayout:Landroid/view/View;
    :cond_59
    const/4 v5, 0x0

    .restart local v5       #tag:Landroid/graphics/drawable/Drawable;
    goto :goto_4c

    .line 394
    .restart local v4       #showTags:Z
    :cond_5b
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_58

    .line 398
    .end local v1           #scrollTitle:Landroid/widget/TextView;
    .end local v2           #scrollTitleLayout:Landroid/view/View;
    .end local v4           #showTags:Z
    .end local v5           #tag:Landroid/graphics/drawable/Drawable;
    :cond_61
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mHasScrollData:Z

    .line 399
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mScrollData:Landroid/database/Cursor;

    goto :goto_58
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 193
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 194
    .local v0, viewType:I
    packed-switch v0, :pswitch_data_3e

    .line 221
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot bind view of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :pswitch_21
    const v1, 0x7f0d0071

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :goto_2c
    :pswitch_2c
    return-void

    .line 205
    :pswitch_2d
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindPhotoView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_2c

    .line 209
    :pswitch_31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindCaptionView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_2c

    .line 213
    :pswitch_35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindCommentView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_2c

    .line 217
    :pswitch_39
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindPlusOneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_2c

    .line 194
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_21
    .end packed-switch
.end method

.method public clear()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 533
    const v3, 0x7f0d002a

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 534
    .local v1, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    const v3, 0x7f0d002d

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 535
    .local v2, scrollerView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    const v3, 0x7f0d0029

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoLayout;

    .line 537
    .local v0, photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    if-eqz v1, :cond_21

    .line 538
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->clear()V

    .line 540
    :cond_21
    if-eqz v2, :cond_26

    .line 541
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->clear()V

    .line 543
    :cond_26
    if-eqz v0, :cond_2b

    .line 544
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoLayout;->clear()V

    .line 547
    :cond_2b
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 548
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 549
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 550
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mScrollData:Landroid/database/Cursor;

    .line 552
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/PhotoListView;->setTag(Ljava/lang/Object;)V

    .line 553
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    .line 554
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDobjanschiContext:Landroid/content/Context;

    .line 555
    return-void
.end method

.method public getAuthorId()J
    .registers 4

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 581
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 589
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 573
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCount()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 227
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    if-eqz v2, :cond_16

    .line 228
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v3, :cond_14

    :goto_12
    add-int/2addr v0, v2

    .line 231
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 228
    goto :goto_12

    .line 231
    :cond_16
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v3, :cond_20

    :goto_1e
    add-int/2addr v0, v2

    goto :goto_13

    :cond_20
    move v0, v1

    goto :goto_1e
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 266
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 267
    const/4 v1, 0x0

    .line 271
    :goto_7
    return-object v1

    .line 270
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v1, :cond_12

    move v0, p1

    .line 271
    .local v0, newPosition:I
    :goto_d
    invoke-super {p0, v0, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_7

    .line 270
    .end local v0           #newPosition:I
    :cond_12
    add-int/lit8 v0, p1, -0x1

    goto :goto_d
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 236
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 237
    const/4 v1, 0x0

    .line 241
    :goto_7
    return-object v1

    .line 240
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v1, :cond_12

    move v0, p1

    .line 241
    .local v0, newPosition:I
    :goto_d
    invoke-super {p0, v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    .line 240
    .end local v0           #newPosition:I
    :cond_12
    add-int/lit8 v0, p1, -0x1

    goto :goto_d
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 246
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-nez v1, :cond_9

    if-nez p1, :cond_9

    .line 247
    const-wide/16 v1, 0x0

    .line 251
    :goto_8
    return-wide v1

    .line 250
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v1, :cond_13

    move v0, p1

    .line 251
    .local v0, newPosition:I
    :goto_e
    invoke-super {p0, v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_8

    .line 250
    .end local v0           #newPosition:I
    :cond_13
    add-int/lit8 v0, p1, -0x1

    goto :goto_e
.end method

.method public getItemViewType(I)I
    .registers 7
    .parameter "position"

    .prologue
    .line 175
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-nez v2, :cond_8

    if-nez p1, :cond_8

    .line 176
    const/4 v2, 0x0

    .line 188
    :goto_7
    return v2

    .line 178
    :cond_8
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v2, :cond_1b

    move v1, p1

    .line 180
    .local v1, newPosition:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 181
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_1e

    .line 182
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #newPosition:I
    :cond_1b
    add-int/lit8 v1, p1, -0x1

    goto :goto_d

    .line 184
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #newPosition:I
    :cond_1e
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 185
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_3d
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_7
.end method

.method public getMyApprovedShapeId()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 159
    const v1, 0x7f0d002d

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 160
    .local v0, tagScroller:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    if-eqz v0, :cond_10

    .line 161
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->getMyApprovedShapeId()Ljava/lang/Long;

    move-result-object v1

    .line 163
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getPhotoImage()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 355
    const v1, 0x7f0d002a

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 356
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_10

    .line 357
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 359
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getPhotoRef()Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method public getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 596
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 597
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object v2, v3

    .line 599
    .local v2, plusOneBlob:[B
    :goto_e
    if-eqz v2, :cond_14

    .line 601
    :try_start_10
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_13
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_13} :catch_1a

    move-result-object v3

    .line 608
    :cond_14
    :goto_14
    return-object v3

    .line 597
    .end local v2           #plusOneBlob:[B
    :cond_15
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    goto :goto_e

    .line 602
    .restart local v2       #plusOneBlob:[B
    :catch_1a
    move-exception v1

    .line 603
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v4, "PhotoViewAdapter"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 604
    const-string v4, "PhotoViewAdapter"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public getVideoData()[B
    .registers 3

    .prologue
    .line 483
    const v1, 0x7f0d002a

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 484
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-nez v0, :cond_d

    const/4 v1, 0x0

    :goto_c
    return-object v1

    :cond_d
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getVideoData()[B

    move-result-object v1

    goto :goto_c
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 256
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-nez v1, :cond_d

    if-nez p1, :cond_d

    .line 257
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDobjanschiContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getSpacerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 261
    :goto_c
    return-object v1

    .line 260
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v1, :cond_17

    move v0, p1

    .line 261
    .local v0, newPosition:I
    :goto_12
    invoke-super {p0, v0, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_c

    .line 260
    .end local v0           #newPosition:I
    :cond_17
    add-int/lit8 v0, p1, -0x1

    goto :goto_12
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x6

    return v0
.end method

.method public interceptMoveLeft(FF)Z
    .registers 6
    .parameter "origX"
    .parameter "origY"

    .prologue
    .line 510
    const v2, 0x7f0d002a

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 511
    .local v0, photoView:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;
    const v2, 0x7f0d002d

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 513
    .local v1, scrollView:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;
    if-eqz v0, :cond_1a

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;->interceptMoveLeft(FF)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_1a
    if-eqz v1, :cond_24

    invoke-interface {v1, p1, p2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;->interceptMoveLeft(FF)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_22
    const/4 v2, 0x1

    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public interceptMoveRight(FF)Z
    .registers 6
    .parameter "origX"
    .parameter "origY"

    .prologue
    .line 521
    const v2, 0x7f0d002a

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 522
    .local v0, photoView:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;
    const v2, 0x7f0d002d

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 524
    .local v1, scrollView:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;
    if-eqz v0, :cond_1a

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;->interceptMoveRight(FF)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_1a
    if-eqz v1, :cond_24

    invoke-interface {v1, p1, p2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;->interceptMoveRight(FF)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_22
    const/4 v2, 0x1

    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public isPhotoBound()Z
    .registers 3

    .prologue
    .line 467
    const v1, 0x7f0d002a

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 468
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->isPhotoSet()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public isVideo()Z
    .registers 3

    .prologue
    .line 475
    const v1, 0x7f0d002a

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 476
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 276
    const/4 v10, 0x1

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 277
    .local v9, viewType:I
    const-string v10, "layout_inflater"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 279
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    packed-switch v9, :pswitch_data_c2

    .line 325
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot create view of type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 281
    :pswitch_29
    const v10, 0x7f030062

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 282
    .local v8, view:Landroid/view/View;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v1, v10, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 284
    .local v1, layout:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    const v10, 0x7f0d0118

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/PhotoLayout;

    .line 288
    .local v3, photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    const v10, 0x7f0d0119

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 290
    .local v4, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    const v10, 0x7f0d011f

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, infoView:Landroid/view/View;
    const v10, 0x7f0d011a

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 292
    .local v5, scrollLayout:Landroid/view/View;
    const v10, 0x7f0d011d

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 294
    .local v7, scrollerView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    const v10, 0x7f0d011c

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 296
    .local v6, scrollerTitle:Landroid/view/View;
    const v10, 0x7f0d0029

    invoke-direct {p0, v10, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 297
    const v10, 0x7f0d002a

    invoke-direct {p0, v10, v4}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 298
    const v10, 0x7f0d002b

    invoke-direct {p0, v10, v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 299
    const v10, 0x7f0d002c

    invoke-direct {p0, v10, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 300
    const v10, 0x7f0d002d

    invoke-direct {p0, v10, v7}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 301
    const v10, 0x7f0d002e

    invoke-direct {p0, v10, v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 303
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/views/PhotoListView;->getMeasuredHeight()I

    move-result v11

    iget-boolean v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v10, :cond_a0

    const/4 v10, 0x0

    :goto_9a
    sub-int v10, v11, v10

    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/PhotoLayout;->setFixedHeight(I)V

    .line 322
    .end local v0           #infoView:Landroid/view/View;
    .end local v1           #layout:Landroid/widget/AbsListView$LayoutParams;
    .end local v3           #photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    .end local v4           #photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    .end local v5           #scrollLayout:Landroid/view/View;
    .end local v6           #scrollerTitle:Landroid/view/View;
    .end local v7           #scrollerView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    .end local v8           #view:Landroid/view/View;
    :goto_9f
    return-object v8

    .line 303
    .restart local v0       #infoView:Landroid/view/View;
    .restart local v1       #layout:Landroid/widget/AbsListView$LayoutParams;
    .restart local v3       #photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    .restart local v4       #photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    .restart local v5       #scrollLayout:Landroid/view/View;
    .restart local v6       #scrollerTitle:Landroid/view/View;
    .restart local v7       #scrollerView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    .restart local v8       #view:Landroid/view/View;
    :cond_a0
    iget v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    goto :goto_9a

    .line 310
    .end local v0           #infoView:Landroid/view/View;
    .end local v1           #layout:Landroid/widget/AbsListView$LayoutParams;
    .end local v3           #photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    .end local v4           #photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    .end local v5           #scrollLayout:Landroid/view/View;
    .end local v6           #scrollerTitle:Landroid/view/View;
    .end local v7           #scrollerView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    .end local v8           #view:Landroid/view/View;
    :pswitch_a3
    const v10, 0x7f030060

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_9f

    .line 314
    :pswitch_ac
    const v10, 0x7f03001d

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_9f

    .line 318
    :pswitch_b5
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mCommentLoadView:Landroid/view/View;

    goto :goto_9f

    .line 322
    :pswitch_b8
    const v10, 0x7f030067

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_9f

    .line 279
    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_29
        :pswitch_a3
        :pswitch_ac
        :pswitch_b8
        :pswitch_b5
    .end packed-switch
.end method

.method public resetViews()V
    .registers 3

    .prologue
    .line 561
    const v1, 0x7f0d002a

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 563
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_e

    .line 564
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->resetTransformations()V

    .line 566
    :cond_e
    return-void
.end method

.method public setActionBarHeight(I)V
    .registers 7
    .parameter "actionBarHeight"

    .prologue
    const/4 v2, 0x0

    .line 407
    iget v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    if-eq p1, v3, :cond_2c

    const/4 v0, 0x1

    .line 408
    .local v0, heightChanged:Z
    :goto_6
    iput p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    .line 409
    if-eqz v0, :cond_2b

    iget v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    if-lez v3, :cond_2b

    .line 410
    const v3, 0x7f0d0029

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoLayout;

    .line 411
    .local v1, photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    if-eqz v1, :cond_28

    .line 412
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PhotoListView;->getMeasuredHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v4, :cond_2e

    :goto_23
    sub-int v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PhotoLayout;->setFixedHeight(I)V

    .line 415
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->notifyDataSetChanged()V

    .line 417
    .end local v1           #photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    :cond_2b
    return-void

    .end local v0           #heightChanged:Z
    :cond_2c
    move v0, v2

    .line 407
    goto :goto_6

    .line 412
    .restart local v0       #heightChanged:Z
    .restart local v1       #photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    :cond_2e
    iget v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    goto :goto_23
.end method

.method public setFullScreen(ZZ)V
    .registers 5
    .parameter "fullScreen"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 423
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    .line 425
    if-eqz p1, :cond_11

    .line 427
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    if-eqz v0, :cond_c

    .line 428
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->toggleTags()V

    .line 430
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/apps/plus/views/PhotoListView;->setSelectionFromTop(II)V

    .line 432
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/PhotoListView;->disableScrolling(Z)V

    .line 433
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1e

    .line 434
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    .line 436
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->notifyDataSetChanged()V

    .line 437
    return-void
.end method

.method public setShowPhotoOnly(Z)V
    .registers 2
    .parameter "showPhotoOnly"

    .prologue
    .line 443
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mShowPhotoOnly:Z

    .line 444
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3
    .parameter "newCursor"

    .prologue
    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionState:Ljava/lang/Integer;

    .line 331
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public toggleTags()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 450
    const v2, 0x7f0d002d

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 451
    .local v1, scrollView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    const v2, 0x7f0d002e

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 453
    .local v0, scrollTitleView:Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    if-nez v2, :cond_2e

    move v2, v3

    :goto_19
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    .line 454
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    if-eqz v2, :cond_30

    .line 455
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    if-nez v2, :cond_24

    move v4, v3

    :cond_24
    invoke-virtual {v1, v4, v3}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->hideTags(ZZ)V

    .line 456
    const v2, 0x7f07007f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 461
    :goto_2d
    return-void

    :cond_2e
    move v2, v4

    .line 453
    goto :goto_19

    .line 458
    :cond_30
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    if-nez v2, :cond_35

    move v4, v3

    :cond_35
    invoke-virtual {v1, v4, v3}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->hideTags(ZZ)V

    .line 459
    const v2, 0x7f07007e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2d
.end method

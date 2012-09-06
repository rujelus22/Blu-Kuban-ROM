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

.field private final mEventId:Ljava/lang/String;

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
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Landroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .registers 15
    .parameter "context"
    .parameter "listView"
    .parameter "account"
    .parameter "c"
    .parameter "onClickListener"
    .parameter "streamClickListener"
    .parameter "defaultAlbumName"
    .parameter "eventId"
    .parameter "commentLoadView"

    .prologue
    .line 111
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mViews:Ljava/util/List;

    .line 94
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_64

    const/4 v3, 0x1

    :goto_11
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    .line 112
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 113
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDobjanschiContext:Landroid/content/Context;

    .line 114
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 115
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 116
    iput-object p7, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDefaultAlbumName:Ljava/lang/String;

    .line 117
    iput-object p8, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mEventId:Ljava/lang/String;

    .line 118
    iput-object p9, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mCommentLoadView:Landroid/view/View;

    .line 119
    new-instance v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/PhotoViewAdapter;)V

    invoke-virtual {p2, v3}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 131
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    if-nez v3, :cond_5c

    .line 132
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 133
    .local v1, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 135
    .local v2, wm:Landroid/view/WindowManager;
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    .line 136
    .local v0, imageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter$2;->$SwitchMap$com$google$android$apps$plus$util$ImageUtils$ImageSize:[I

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_7a

    .line 147
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    .line 152
    .end local v0           #imageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_5c
    :goto_5c
    check-cast p2, Lcom/google/android/apps/plus/views/PhotoListView;

    .end local p2
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    .line 153
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->createTags()V

    .line 154
    return-void

    .line 94
    .restart local p2
    :cond_64
    const/4 v3, 0x0

    goto :goto_11

    .line 140
    .restart local v0       #imageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;
    .restart local v1       #metrics:Landroid/util/DisplayMetrics;
    .restart local v2       #wm:Landroid/view/WindowManager;
    :pswitch_66
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit16 v3, v3, 0x320

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    goto :goto_5c

    .line 137
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_66
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/PhotoViewAdapter;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mCommentLoadView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/PhotoViewAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mViews:Ljava/util/List;

    return-object v0
.end method

.method private bindCaptionView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 775
    const v2, 0x7f090196

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 776
    .local v1, captionView:Landroid/widget/TextView;
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, caption:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    return-void
.end method

.method private bindCommentView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 813
    move-object v3, p1

    check-cast v3, Lcom/google/android/apps/plus/views/CommentRowView;

    .line 814
    .local v3, commentView:Lcom/google/android/apps/plus/views/CommentRowView;
    const/4 v10, 0x3

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, authorId:Ljava/lang/String;
    const/4 v10, 0x4

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, authorName:Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {p2, v10, v11}, Lcom/google/android/apps/plus/util/Dates;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v8

    .line 818
    .local v8, time:Ljava/lang/CharSequence;
    const/4 v10, 0x7

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 819
    .local v4, contentHtml:Ljava/lang/String;
    const/4 v10, 0x6

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_73

    const/4 v9, 0x1

    .line 820
    .local v9, truncated:Z
    :goto_24
    const/4 v10, 0x2

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, commentId:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/CommentRowView;->clear()V

    .line 824
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/CommentRowView;->setShowPlusOneView(Z)V

    .line 825
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/CommentRowView;->setPosition(I)V

    .line 826
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/CommentRowView;->setClickListener(Lcom/google/android/apps/plus/views/ItemClickListener;)V

    .line 827
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v1}, Lcom/google/android/apps/plus/views/CommentRowView;->setAuthor(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/CommentRowView;->setTime(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v3, v4, v9}, Lcom/google/android/apps/plus/views/CommentRowView;->setContent(Ljava/lang/String;Z)V

    .line 830
    invoke-virtual {v3, v2}, Lcom/google/android/apps/plus/views/CommentRowView;->setCommentId(Ljava/lang/String;)V

    .line 832
    const/16 v10, 0x8

    invoke-interface {p3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_75

    const/4 v6, 0x0

    .line 834
    .local v6, plusOneBlob:[B
    :goto_59
    if-eqz v6, :cond_62

    .line 836
    :try_start_5b
    invoke-static {v6}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v7

    .line 837
    .local v7, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual {v3, v7}, Lcom/google/android/apps/plus/views/CommentRowView;->setPlusOneData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    :try_end_62
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5b .. :try_end_62} :catch_7c

    .line 845
    .end local v7           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_62
    :goto_62
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/CommentRowView;->requestLayout()V

    .line 847
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mViews:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_72

    .line 848
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mViews:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_72
    return-void

    .line 819
    .end local v2           #commentId:Ljava/lang/String;
    .end local v6           #plusOneBlob:[B
    .end local v9           #truncated:Z
    :cond_73
    const/4 v9, 0x0

    goto :goto_24

    .line 832
    .restart local v2       #commentId:Ljava/lang/String;
    .restart local v9       #truncated:Z
    :cond_75
    const/16 v10, 0x8

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    goto :goto_59

    .line 838
    .restart local v6       #plusOneBlob:[B
    :catch_7c
    move-exception v5

    .line 839
    .local v5, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v10, "PhotoViewAdapter"

    const/4 v11, 0x5

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 840
    const-string v10, "PhotoViewAdapter"

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62
.end method

.method private bindPhotoView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 45
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 681
    const v5, 0x7f090035

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 682
    .local v31, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    const v5, 0x7f090038

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 683
    .local v34, scrollerView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    const v5, 0x7f090037

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/view/View;

    .line 684
    .local v33, scrollLayout:Landroid/view/View;
    const v5, 0x7f090036

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/android/apps/plus/views/PhotoInfoView;

    .line 685
    .local v29, photoInfoView:Lcom/google/android/apps/plus/views/PhotoInfoView;
    const v5, 0x7f090034

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/google/android/apps/plus/views/PhotoLayout;

    .line 686
    .local v30, photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    const/16 v5, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1f5

    const/16 v40, 0x0

    .line 689
    .local v40, videoData:[B
    :goto_43
    const/4 v5, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 690
    .local v7, photoId:J
    const/16 v5, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 691
    .local v38, unsizedPhotoUrl:Ljava/lang/String;
    const/16 v5, 0x11

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 692
    .local v39, uploadStatus:I
    const/4 v5, 0x2

    move/from16 v0, v39

    if-ne v0, v5, :cond_1ff

    const/16 v25, 0x1

    .line 698
    .local v25, isPlaceHolder:Z
    :goto_61
    if-nez v25, :cond_9e

    .line 699
    if-eqz v40, :cond_203

    sget-object v11, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->VIDEO:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    .line 701
    .local v11, type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    :goto_67
    const-string v5, "content:"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_207

    .line 702
    new-instance v5, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .end local v7           #photoId:J
    move-result-object v10

    invoke-direct/range {v5 .. v11}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 704
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    sget-object v6, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/google/android/apps/plus/service/EsService;->getLocalPhotoAsync(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;I)V

    .line 711
    :goto_98
    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setPhotoLoading(Z)V

    .line 714
    .end local v11           #type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    :cond_9e
    const/16 v5, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 715
    .local v22, commentCount:I
    const/16 v5, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 716
    .local v32, plusOneCount:I
    const/4 v5, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 717
    .local v26, ownerId:Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 718
    .local v27, ownerName:Ljava/lang/String;
    const/4 v5, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_242

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDefaultAlbumName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 720
    .local v20, albumName:Ljava/lang/String;
    :goto_cb
    const/4 v5, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_24b

    const/16 v21, 0x0

    .line 722
    .local v21, albumStream:Ljava/lang/String;
    :goto_d6
    const/4 v5, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 723
    .local v18, albumId:J
    const/16 v5, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 725
    .local v36, timestamp:J
    const/16 v5, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionState:Ljava/lang/Integer;

    .line 728
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->setHeaderView(Lcom/google/android/apps/plus/views/PhotoHeaderView;)V

    .line 729
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->setExternalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mHasScrollData:Z

    if-eqz v5, :cond_120

    .line 731
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mHasScrollData:Z

    .line 732
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mScrollData:Landroid/database/Cursor;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindScroller(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 733
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mScrollData:Landroid/database/Cursor;

    .line 736
    :cond_120
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->shouldShowTags(Landroid/content/Context;)Z

    move-result v35

    .line 737
    .local v35, showTags:Z
    if-eqz v35, :cond_254

    const/4 v5, 0x0

    :goto_12b
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 740
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v5, :cond_258

    const/16 v28, 0x0

    .line 741
    .local v28, photoHeightAdjust:I
    :goto_138
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/PhotoListView;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v5, v28

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoLayout;->setFixedHeight(I)V

    .line 743
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    if-eqz v5, :cond_260

    if-nez v40, :cond_260

    const/16 v24, 0x1

    .line 744
    .local v24, enableTransforms:Z
    :goto_151
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mShowPhotoOnly:Z

    if-eqz v5, :cond_264

    const/4 v5, 0x0

    :goto_158
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setCommentCount(I)V

    .line 745
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mShowPhotoOnly:Z

    if-eqz v5, :cond_268

    const/4 v5, 0x0

    :goto_164
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setPlusOneCount(I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v6}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setFullScreen(ZZ)V

    .line 748
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setVideoBlob([B)V

    .line 749
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->enableImageTransforms(Z)V

    .line 751
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setOwner(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 752
    move-object/from16 v0, v29

    move-wide/from16 v1, v18

    move-object/from16 v3, v21

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setAlbum(JLjava/lang/String;Ljava/lang/CharSequence;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mEventId:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setEvent(Ljava/lang/String;)V

    .line 754
    const-wide/16 v5, 0x0

    cmp-long v5, v36, v5

    if-lez v5, :cond_1bc

    .line 755
    move-object/from16 v0, p2

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/Dates;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v23

    .line 756
    .local v23, date:Ljava/lang/CharSequence;
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setPhotoDate(Ljava/lang/CharSequence;)V

    .line 758
    .end local v23           #date:Ljava/lang/CharSequence;
    :cond_1bc
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setCommentCount(I)V

    .line 759
    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setPlusOneCount(I)V

    .line 760
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mShowPhotoOnly:Z

    if-nez v5, :cond_1d6

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    if-eqz v5, :cond_26c

    .line 761
    :cond_1d6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    if-eqz v5, :cond_1e5

    .line 762
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Lcom/google/android/apps/plus/views/PhotoListView;->setSelectionFromTop(II)V

    .line 764
    :cond_1e5
    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoInfoView;->hideHeaderInfoView(Z)V

    .line 768
    :goto_1eb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setExternalClickListener(Lcom/google/android/apps/plus/views/ItemClickListener;)V

    .line 769
    return-void

    .line 686
    .end local v18           #albumId:J
    .end local v20           #albumName:Ljava/lang/String;
    .end local v21           #albumStream:Ljava/lang/String;
    .end local v22           #commentCount:I
    .end local v24           #enableTransforms:Z
    .end local v25           #isPlaceHolder:Z
    .end local v26           #ownerId:Ljava/lang/String;
    .end local v27           #ownerName:Ljava/lang/String;
    .end local v28           #photoHeightAdjust:I
    .end local v32           #plusOneCount:I
    .end local v35           #showTags:Z
    .end local v36           #timestamp:J
    .end local v38           #unsizedPhotoUrl:Ljava/lang/String;
    .end local v39           #uploadStatus:I
    .end local v40           #videoData:[B
    :cond_1f5
    const/16 v5, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v40

    goto/16 :goto_43

    .line 692
    .restart local v7       #photoId:J
    .restart local v38       #unsizedPhotoUrl:Ljava/lang/String;
    .restart local v39       #uploadStatus:I
    .restart local v40       #videoData:[B
    :cond_1ff
    const/16 v25, 0x0

    goto/16 :goto_61

    .line 699
    .restart local v25       #isPlaceHolder:Z
    :cond_203
    sget-object v11, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    goto/16 :goto_67

    .line 706
    .restart local v11       #type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    :cond_207
    sget-object v5, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getResizedUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 707
    .local v9, photoUrl:Ljava/lang/String;
    new-instance v5, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 708
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    sget-object v5, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sget-object v5, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v12, p2

    invoke-static/range {v12 .. v17}, Lcom/google/android/apps/plus/service/EsService;->getRemotePhotoAsync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)V

    goto/16 :goto_98

    .line 718
    .end local v7           #photoId:J
    .end local v9           #photoUrl:Ljava/lang/String;
    .end local v11           #type:Lcom/google/android/apps/plus/api/MediaRef$MediaType;
    .restart local v22       #commentCount:I
    .restart local v26       #ownerId:Ljava/lang/String;
    .restart local v27       #ownerName:Ljava/lang/String;
    .restart local v32       #plusOneCount:I
    :cond_242
    const/4 v5, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_cb

    .line 720
    .restart local v20       #albumName:Ljava/lang/String;
    :cond_24b
    const/4 v5, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_d6

    .line 737
    .restart local v18       #albumId:J
    .restart local v21       #albumStream:Ljava/lang/String;
    .restart local v35       #showTags:Z
    .restart local v36       #timestamp:J
    :cond_254
    const/16 v5, 0x8

    goto/16 :goto_12b

    .line 740
    :cond_258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    move/from16 v28, v0

    goto/16 :goto_138

    .line 743
    .restart local v28       #photoHeightAdjust:I
    :cond_260
    const/16 v24, 0x0

    goto/16 :goto_151

    .restart local v24       #enableTransforms:Z
    :cond_264
    move/from16 v5, v22

    .line 744
    goto/16 :goto_158

    :cond_268
    move/from16 v5, v32

    .line 745
    goto/16 :goto_164

    .line 766
    :cond_26c
    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/views/PhotoInfoView;->showHeaderInfoView(Z)V

    goto/16 :goto_1eb
.end method

.method private bindPlusOneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 787
    const v5, 0x7f0901a7

    :try_start_3
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 788
    .local v0, captionView:Landroid/widget/TextView;
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 789
    .local v1, data:[B
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v3

    .line 790
    .local v3, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p2, v5, v3}, Lcom/google/android/apps/plus/views/PlusOneDataUtils;->getLongPlusOnesString(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/lang/String;

    move-result-object v4

    .line 794
    .local v4, plusOneText:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 796
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 797
    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 798
    const v5, 0x7f02015c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 807
    .end local v0           #captionView:Landroid/widget/TextView;
    .end local v1           #data:[B
    .end local v3           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .end local v4           #plusOneText:Ljava/lang/String;
    :goto_32
    return-void

    .line 801
    .restart local v0       #captionView:Landroid/widget/TextView;
    .restart local v1       #data:[B
    .restart local v3       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .restart local v4       #plusOneText:Ljava/lang/String;
    :cond_33
    const v5, 0x7f02015b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    :try_end_3c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3c} :catch_3d

    goto :goto_32

    .line 804
    .end local v0           #captionView:Landroid/widget/TextView;
    .end local v1           #data:[B
    .end local v3           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .end local v4           #plusOneText:Ljava/lang/String;
    :catch_3d
    move-exception v2

    .line 805
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_32
.end method

.method private createTags()V
    .registers 5

    .prologue
    .line 895
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 896
    .local v0, listTag:Ljava/lang/Object;
    instance-of v1, v0, Landroid/util/SparseArray;

    if-nez v1, :cond_15

    .line 897
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PhotoListView;->setTag(Ljava/lang/Object;)V

    .line 899
    :cond_15
    return-void
.end method

.method public static getPhotoSize()Ljava/lang/Integer;
    .registers 1

    .prologue
    .line 674
    sget-object v0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->sPhotoSize:Ljava/lang/Integer;

    return-object v0
.end method

.method private getSpacerView(Landroid/content/Context;)Landroid/view/View;
    .registers 7
    .parameter "context"

    .prologue
    .line 856
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 858
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030094

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 860
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    return-object v1
.end method

.method private getTag(I)Ljava/lang/Object;
    .registers 4
    .parameter "key"

    .prologue
    .line 906
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 907
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
    .line 915
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 916
    .local v0, listTags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 917
    return-void
.end method

.method private shouldShowTags(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 869
    const v6, 0x7f090038

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 870
    .local v4, scrollView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    if-nez v6, :cond_47

    iget-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mShowPhotoOnly:Z

    if-nez v6, :cond_47

    move v5, v7

    .line 872
    .local v5, showTags:Z
    :goto_14
    if-eqz v5, :cond_39

    .line 873
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 875
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 876
    .local v1, height:I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 877
    .local v3, orientation:I
    if-eq v3, v7, :cond_2f

    const/4 v6, 0x3

    if-ne v3, v6, :cond_49

    :cond_2f
    move v2, v7

    .line 880
    .local v2, isRotated:Z
    :goto_30
    if-eqz v5, :cond_4b

    if-eqz v2, :cond_38

    const/16 v6, 0x320

    if-lt v1, v6, :cond_4b

    :cond_38
    move v5, v7

    .line 883
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #height:I
    .end local v2           #isRotated:Z
    .end local v3           #orientation:I
    :cond_39
    :goto_39
    if-eqz v5, :cond_46

    if-eqz v4, :cond_46

    .line 884
    if-eqz v5, :cond_4d

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->hasTags()Z

    move-result v6

    if-eqz v6, :cond_4d

    move v5, v7

    .line 886
    :cond_46
    :goto_46
    return v5

    .end local v5           #showTags:Z
    :cond_47
    move v5, v8

    .line 870
    goto :goto_14

    .restart local v0       #display:Landroid/view/Display;
    .restart local v1       #height:I
    .restart local v3       #orientation:I
    .restart local v5       #showTags:Z
    :cond_49
    move v2, v8

    .line 877
    goto :goto_30

    .restart local v2       #isRotated:Z
    :cond_4b
    move v5, v8

    .line 880
    goto :goto_39

    .end local v0           #display:Landroid/view/Display;
    .end local v1           #height:I
    .end local v2           #isRotated:Z
    .end local v3           #orientation:I
    :cond_4d
    move v5, v8

    .line 884
    goto :goto_46
.end method


# virtual methods
.method public allowComments()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 535
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionState:Ljava/lang/Integer;

    if-nez v2, :cond_23

    .line 536
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 537
    .local v0, myCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 539
    :cond_11
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_32

    .line 540
    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionState:Ljava/lang/Integer;

    .line 546
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

    .line 543
    .restart local v0       #myCursor:Landroid/database/Cursor;
    :cond_32
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_23

    .line 546
    .end local v0           #myCursor:Landroid/database/Cursor;
    :cond_39
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public bindPhoto(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    .line 339
    const v1, 0x7f090035

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 340
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_12

    .line 341
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setPhotoLoading(Z)V

    .line 342
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->bindPhoto(Landroid/graphics/Bitmap;)V

    .line 344
    :cond_12
    return-void
.end method

.method public bindScroller(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 381
    const v6, 0x7f090038

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 382
    .local v3, scrollView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    const v6, 0x7f090037

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 384
    .local v0, scrollLayout:Landroid/view/View;
    if-eqz v3, :cond_61

    .line 385
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3, p1, v6, p2}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->bind(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;)V

    .line 387
    const v6, 0x7f09019e

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 388
    .local v2, scrollTitleLayout:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const v6, 0x7f090039

    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 392
    .local v1, scrollTitle:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->isWaitingMyApproval()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02022e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 394
    .local v5, tag:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 398
    :goto_4c
    invoke-virtual {v1, v9, v9, v5, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 400
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->shouldShowTags(Landroid/content/Context;)Z

    move-result v4

    .line 401
    .local v4, showTags:Z
    if-eqz v4, :cond_5b

    .line 402
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 411
    .end local v1           #scrollTitle:Landroid/widget/TextView;
    .end local v2           #scrollTitleLayout:Landroid/view/View;
    .end local v4           #showTags:Z
    .end local v5           #tag:Landroid/graphics/drawable/Drawable;
    :goto_58
    return-void

    .line 396
    .restart local v1       #scrollTitle:Landroid/widget/TextView;
    .restart local v2       #scrollTitleLayout:Landroid/view/View;
    :cond_59
    const/4 v5, 0x0

    .restart local v5       #tag:Landroid/graphics/drawable/Drawable;
    goto :goto_4c

    .line 404
    .restart local v4       #showTags:Z
    :cond_5b
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_58

    .line 408
    .end local v1           #scrollTitle:Landroid/widget/TextView;
    .end local v2           #scrollTitleLayout:Landroid/view/View;
    .end local v4           #showTags:Z
    .end local v5           #tag:Landroid/graphics/drawable/Drawable;
    :cond_61
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mHasScrollData:Z

    .line 409
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mScrollData:Landroid/database/Cursor;

    goto :goto_58
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 194
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 195
    .local v0, viewType:I
    packed-switch v0, :pswitch_data_3e

    .line 222
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

    .line 202
    :pswitch_21
    const v1, 0x7f090079

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :goto_2c
    :pswitch_2c
    return-void

    .line 206
    :pswitch_2d
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindPhotoView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_2c

    .line 210
    :pswitch_31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindCaptionView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_2c

    .line 214
    :pswitch_35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindCommentView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_2c

    .line 218
    :pswitch_39
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindPlusOneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_2c

    .line 195
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

    .line 577
    const v3, 0x7f090035

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 578
    .local v1, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    const v3, 0x7f090038

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 579
    .local v2, scrollerView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    const v3, 0x7f090034

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoLayout;

    .line 581
    .local v0, photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    if-eqz v1, :cond_21

    .line 582
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->clear()V

    .line 584
    :cond_21
    if-eqz v2, :cond_26

    .line 585
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->clear()V

    .line 587
    :cond_26
    if-eqz v0, :cond_2b

    .line 588
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoLayout;->clear()V

    .line 591
    :cond_2b
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mStreamClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 592
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 593
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    .line 594
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mScrollData:Landroid/database/Cursor;

    .line 596
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/PhotoListView;->setTag(Ljava/lang/Object;)V

    .line 597
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    .line 598
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDobjanschiContext:Landroid/content/Context;

    .line 599
    return-void
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 517
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 518
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 519
    .local v0, albumName:Ljava/lang/String;
    if-eqz v1, :cond_22

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 521
    :cond_f
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_1c

    .line 522
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v0, 0x0

    .line 525
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_f

    .line 528
    :cond_22
    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDefaultAlbumName:Ljava/lang/String;

    .end local v0           #albumName:Ljava/lang/String;
    :cond_26
    return-object v0

    .line 522
    .restart local v0       #albumName:Ljava/lang/String;
    :cond_27
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public getAuthorGaiaId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 633
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 641
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCommentContentHtml()Ljava/lang/String;
    .registers 3

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 625
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 617
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

    .line 228
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    if-eqz v2, :cond_16

    .line 229
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v3, :cond_14

    :goto_12
    add-int/2addr v0, v2

    .line 232
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 229
    goto :goto_12

    .line 232
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
    .line 267
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 268
    const/4 v1, 0x0

    .line 272
    :goto_7
    return-object v1

    .line 271
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v1, :cond_12

    move v0, p1

    .line 272
    .local v0, newPosition:I
    :goto_d
    invoke-super {p0, v0, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_7

    .line 271
    .end local v0           #newPosition:I
    :cond_12
    add-int/lit8 v0, p1, -0x1

    goto :goto_d
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 237
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 238
    const/4 v1, 0x0

    .line 242
    :goto_7
    return-object v1

    .line 241
    :cond_8
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v1, :cond_12

    move v0, p1

    .line 242
    .local v0, newPosition:I
    :goto_d
    invoke-super {p0, v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    .line 241
    .end local v0           #newPosition:I
    :cond_12
    add-int/lit8 v0, p1, -0x1

    goto :goto_d
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 247
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-nez v1, :cond_9

    if-nez p1, :cond_9

    .line 248
    const-wide/16 v1, 0x0

    .line 252
    :goto_8
    return-wide v1

    .line 251
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v1, :cond_13

    move v0, p1

    .line 252
    .local v0, newPosition:I
    :goto_e
    invoke-super {p0, v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_8

    .line 251
    .end local v0           #newPosition:I
    :cond_13
    add-int/lit8 v0, p1, -0x1

    goto :goto_e
.end method

.method public getItemViewType(I)I
    .registers 7
    .parameter "position"

    .prologue
    .line 176
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-nez v2, :cond_8

    if-nez p1, :cond_8

    .line 177
    const/4 v2, 0x0

    .line 189
    :goto_7
    return v2

    .line 179
    :cond_8
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v2, :cond_1b

    move v1, p1

    .line 181
    .local v1, newPosition:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 182
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_1e

    .line 183
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #newPosition:I
    :cond_1b
    add-int/lit8 v1, p1, -0x1

    goto :goto_d

    .line 185
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #newPosition:I
    :cond_1e
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 186
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

    .line 189
    :cond_3d
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_7
.end method

.method public getMyApprovedShapeId()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 160
    const v1, 0x7f090038

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 161
    .local v0, tagScroller:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    if-eqz v0, :cond_10

    .line 162
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->getMyApprovedShapeId()Ljava/lang/Long;

    move-result-object v1

    .line 164
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getPhotoImage()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 365
    const v1, 0x7f090035

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 366
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_10

    .line 367
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 369
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getPhotoRef()Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mPhotoRef:Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method public getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 648
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 649
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object v2, v3

    .line 651
    .local v2, plusOneBlob:[B
    :goto_e
    if-eqz v2, :cond_14

    .line 653
    :try_start_10
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :try_end_13
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_13} :catch_1a

    move-result-object v3

    .line 660
    :cond_14
    :goto_14
    return-object v3

    .line 649
    .end local v2           #plusOneBlob:[B
    :cond_15
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    goto :goto_e

    .line 654
    .restart local v2       #plusOneBlob:[B
    :catch_1a
    move-exception v1

    .line 655
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v4, "PhotoViewAdapter"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 656
    const-string v4, "PhotoViewAdapter"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public getVideoData()[B
    .registers 3

    .prologue
    .line 509
    const v1, 0x7f090035

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 510
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
    .line 257
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-nez v1, :cond_d

    if-nez p1, :cond_d

    .line 258
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDobjanschiContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getSpacerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 262
    :goto_c
    return-object v1

    .line 261
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v1, :cond_17

    move v0, p1

    .line 262
    .local v0, newPosition:I
    :goto_12
    invoke-super {p0, v0, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_c

    .line 261
    .end local v0           #newPosition:I
    :cond_17
    add-int/lit8 v0, p1, -0x1

    goto :goto_12
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x6

    return v0
.end method

.method public interceptMoveLeft(FF)Z
    .registers 6
    .parameter "origX"
    .parameter "origY"

    .prologue
    .line 554
    const v2, 0x7f090035

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 555
    .local v0, photoView:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;
    const v2, 0x7f090038

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 557
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
    .line 565
    const v2, 0x7f090035

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 566
    .local v0, photoView:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$HorizontallySrollable;
    const v2, 0x7f090038

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 568
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
    .line 477
    const v1, 0x7f090035

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 478
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->isPhotoBound()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public isPhotoLoading()Z
    .registers 3

    .prologue
    .line 485
    const v1, 0x7f090035

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 486
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->isPhotoLoading()Z

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
    .line 493
    const v1, 0x7f090035

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 494
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

.method public isVideoReady()Z
    .registers 3

    .prologue
    .line 501
    const v1, 0x7f090035

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 502
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->isVideoReady()Z

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
    .line 277
    const/4 v10, 0x1

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 278
    .local v9, viewType:I
    const-string v10, "layout_inflater"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 280
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    packed-switch v9, :pswitch_data_c2

    .line 326
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

    .line 282
    :pswitch_29
    const v10, 0x7f03008e

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 283
    .local v8, view:Landroid/view/View;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v1, v10, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 285
    .local v1, layout:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v8, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    const v10, 0x7f09019b

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/PhotoLayout;

    .line 289
    .local v3, photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    const v10, 0x7f09019c

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 291
    .local v4, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    const v10, 0x7f0901a2

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, infoView:Landroid/view/View;
    const v10, 0x7f09019d

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 293
    .local v5, scrollLayout:Landroid/view/View;
    const v10, 0x7f0901a0

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 295
    .local v7, scrollerView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    const v10, 0x7f09019f

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 297
    .local v6, scrollerTitle:Landroid/view/View;
    const v10, 0x7f090034

    invoke-direct {p0, v10, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 298
    const v10, 0x7f090035

    invoke-direct {p0, v10, v4}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 299
    const v10, 0x7f090036

    invoke-direct {p0, v10, v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 300
    const v10, 0x7f090037

    invoke-direct {p0, v10, v5}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 301
    const v10, 0x7f090038

    invoke-direct {p0, v10, v7}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 302
    const v10, 0x7f090039

    invoke-direct {p0, v10, v6}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->setTag(ILjava/lang/Object;)V

    .line 304
    iget-object v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/views/PhotoListView;->getMeasuredHeight()I

    move-result v11

    iget-boolean v10, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v10, :cond_a0

    const/4 v10, 0x0

    :goto_9a
    sub-int v10, v11, v10

    invoke-virtual {v3, v10}, Lcom/google/android/apps/plus/views/PhotoLayout;->setFixedHeight(I)V

    .line 323
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

    .line 304
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

    .line 311
    .end local v0           #infoView:Landroid/view/View;
    .end local v1           #layout:Landroid/widget/AbsListView$LayoutParams;
    .end local v3           #photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    .end local v4           #photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    .end local v5           #scrollLayout:Landroid/view/View;
    .end local v6           #scrollerTitle:Landroid/view/View;
    .end local v7           #scrollerView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    .end local v8           #view:Landroid/view/View;
    :pswitch_a3
    const v10, 0x7f030089

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_9f

    .line 315
    :pswitch_ac
    const v10, 0x7f03001e

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_9f

    .line 319
    :pswitch_b5
    iget-object v8, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mCommentLoadView:Landroid/view/View;

    goto :goto_9f

    .line 323
    :pswitch_b8
    const v10, 0x7f030093

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    goto :goto_9f

    .line 280
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

.method public resetPhotoView()V
    .registers 3

    .prologue
    .line 350
    const v1, 0x7f090035

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 351
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_13

    .line 352
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setPhotoLoading(Z)V

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->bindPhoto(Landroid/graphics/Bitmap;)V

    .line 355
    :cond_13
    return-void
.end method

.method public resetViews()V
    .registers 3

    .prologue
    .line 605
    const v1, 0x7f090035

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 607
    .local v0, photoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    if-eqz v0, :cond_e

    .line 608
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->resetTransformations()V

    .line 610
    :cond_e
    return-void
.end method

.method public setActionBarHeight(I)V
    .registers 7
    .parameter "actionBarHeight"

    .prologue
    const/4 v2, 0x0

    .line 417
    iget v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    if-eq p1, v3, :cond_2c

    const/4 v0, 0x1

    .line 418
    .local v0, heightChanged:Z
    :goto_6
    iput p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    .line 419
    if-eqz v0, :cond_2b

    iget v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionBarHeight:I

    if-lez v3, :cond_2b

    .line 420
    const v3, 0x7f090034

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoLayout;

    .line 421
    .local v1, photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    if-eqz v1, :cond_28

    .line 422
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/PhotoListView;->getMeasuredHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    if-eqz v4, :cond_2e

    :goto_23
    sub-int v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/PhotoLayout;->setFixedHeight(I)V

    .line 425
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->notifyDataSetChanged()V

    .line 427
    .end local v1           #photoLayout:Lcom/google/android/apps/plus/views/PhotoLayout;
    :cond_2b
    return-void

    .end local v0           #heightChanged:Z
    :cond_2c
    move v0, v2

    .line 417
    goto :goto_6

    .line 422
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

    .line 433
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mFullScreen:Z

    .line 435
    if-eqz p1, :cond_11

    .line 437
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    if-eqz v0, :cond_c

    .line 438
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->toggleTags()V

    .line 440
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/apps/plus/views/PhotoListView;->setSelectionFromTop(II)V

    .line 442
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mList:Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/PhotoListView;->disableScrolling(Z)V

    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1e

    .line 444
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mDisableSpacer:Z

    .line 446
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->notifyDataSetChanged()V

    .line 447
    return-void
.end method

.method public setShowPhotoOnly(Z)V
    .registers 2
    .parameter "showPhotoOnly"

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mShowPhotoOnly:Z

    .line 454
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3
    .parameter "newCursor"

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mActionState:Ljava/lang/Integer;

    .line 332
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public toggleTags()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 460
    const v2, 0x7f090038

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoTagScroller;

    .line 461
    .local v1, scrollView:Lcom/google/android/apps/plus/views/PhotoTagScroller;
    const v2, 0x7f090039

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 463
    .local v0, scrollTitleView:Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    if-nez v2, :cond_2e

    move v2, v3

    :goto_19
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    .line 464
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    if-eqz v2, :cond_30

    .line 465
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    if-nez v2, :cond_24

    move v4, v3

    :cond_24
    invoke-virtual {v1, v4, v3}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->hideTags(ZZ)V

    .line 466
    const v2, 0x7f0800a2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 471
    :goto_2d
    return-void

    :cond_2e
    move v2, v4

    .line 463
    goto :goto_19

    .line 468
    :cond_30
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->mExpandTags:Z

    if-nez v2, :cond_35

    move v4, v3

    :cond_35
    invoke-virtual {v1, v4, v3}, Lcom/google/android/apps/plus/views/PhotoTagScroller;->hideTags(ZZ)V

    .line 469
    const v2, 0x7f0800a1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2d
.end method

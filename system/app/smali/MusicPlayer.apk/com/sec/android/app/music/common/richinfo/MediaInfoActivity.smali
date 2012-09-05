.class public Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;
.super Landroid/app/Activity;
.source "MediaInfoActivity.java"

# interfaces
.implements Lcom/sec/android/app/music/common/util/OnLowBatteryListener;


# static fields
.field private static final CLASSTAG:Ljava/lang/String;


# instance fields
.field private mAlbumView:Landroid/view/View;

.field private mAlbumartBitmap:Landroid/graphics/Bitmap;

.field private mArtistView:Landroid/view/View;

.field private mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

.field private mContext:Landroid/content/Context;

.field private mCreditView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAudioPreviewInfo:Z

.field private mMediaInfoView:Landroid/view/View;

.field private mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

.field private mOthersView:Landroid/view/View;

.field private mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

.field private mPlayingUri:Landroid/net/Uri;

.field private mPressBack:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReviewView:Landroid/view/View;

.field private mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

.field private mTitleView:Landroid/view/View;

.field private mToast:Landroid/widget/Toast;

.field private final mUMSResponseHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-class v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->CLASSTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mPlayingUri:Landroid/net/Uri;

    .line 72
    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    .line 74
    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    .line 82
    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    .line 104
    iput-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mIsAudioPreviewInfo:Z

    .line 123
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$1;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$2;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$3;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mHandler:Landroid/os/Handler;

    .line 338
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$10;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mUMSResponseHandler:Landroid/os/Handler;

    .line 901
    iput-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mPressBack:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->CLASSTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->showSearchPopup(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->showMediaInfoView()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)Lcom/sec/android/app/music/common/richinfo/RichInfoView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->setVisibleMediaInfoView()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->requestUMSinfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->showRichInfoView()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->parsingRichInfoData()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private hideProgressDialog()V
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 719
    :cond_14
    return-void
.end method

.method private makeMediaInfoDefaultView()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 734
    const v1, 0x7f0c0044

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 736
    .local v0, mediaInfoDefaultView:Landroid/view/ViewGroup;
    const v1, 0x7f090060

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v2, v2, Lcom/sec/android/app/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    invoke-direct {p0, v4, v1, v2, v5}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->makeMediaInfoView(IILjava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 738
    const v1, 0x7f090076

    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v2, v2, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-direct {p0, v5, v1, v2, v5}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->makeMediaInfoView(IILjava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 740
    const/4 v1, 0x3

    const v2, 0x7f090077

    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v3, v3, Lcom/sec/android/app/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v5}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->makeMediaInfoView(IILjava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 742
    const/4 v1, 0x4

    const v2, 0x7f090075

    invoke-direct {p0, v1, v2, v6, v4}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->makeMediaInfoView(IILjava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 744
    const/4 v1, 0x5

    const v2, 0x7f090078

    invoke-direct {p0, v1, v2, v6, v4}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->makeMediaInfoView(IILjava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 746
    const/4 v1, 0x6

    const v2, 0x7f09007b

    invoke-direct {p0, v1, v2, v6, v4}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->makeMediaInfoView(IILjava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 748
    return-object v0
.end method

.method private makeMediaInfoView(IILjava/lang/String;Z)Landroid/view/View;
    .registers 16
    .parameter "id"
    .parameter "titleId"
    .parameter "title"
    .parameter "showButtonAndTitleId"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    .line 761
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 762
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f03001a

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 763
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6, p1}, Landroid/view/View;->setId(I)V

    .line 765
    const v7, 0x7f0c0064

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 766
    .local v3, titleIdView:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 768
    const v7, 0x7f0c0068

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 769
    .local v4, titleView:Landroid/widget/TextView;
    const v7, 0x7f0c0067

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 773
    .local v1, searchButton:Landroid/view/ViewGroup;
    if-eqz p4, :cond_89

    .line 774
    if-eqz p3, :cond_40

    const-string v7, ""

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 775
    :cond_40
    const v5, 0x7f090134

    .line 776
    .local v5, unkownTextId:I
    if-ne p1, v9, :cond_7e

    .line 777
    const v5, 0x7f090136

    .line 781
    :cond_48
    :goto_48
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 785
    .end local v5           #unkownTextId:I
    :goto_4b
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 787
    new-instance v7, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$17;

    invoke-direct {v7, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$17;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 805
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 807
    new-instance v7, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$18;

    invoke-direct {v7, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$18;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    const v7, 0x7f0c0066

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 817
    .local v2, searchImageView:Landroid/widget/ImageView;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 819
    new-instance v7, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$19;

    invoke-direct {v7, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$19;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    .end local v2           #searchImageView:Landroid/widget/ImageView;
    :goto_7d
    return-object v6

    .line 778
    .restart local v5       #unkownTextId:I
    :cond_7e
    const/4 v7, 0x3

    if-ne p1, v7, :cond_48

    .line 779
    const v5, 0x7f090135

    goto :goto_48

    .line 783
    .end local v5           #unkownTextId:I
    :cond_85
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4b

    .line 827
    :cond_89
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_7d
.end method

.method private parsingRichInfoData()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 642
    sput-boolean v8, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasRichInfo:Z

    .line 643
    sget-object v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    if-eqz v5, :cond_12

    sget-object v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 649
    :cond_12
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 712
    :goto_17
    return-void

    .line 660
    :cond_18
    sget-object v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 663
    .local v2, index:I
    sget-object v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    invoke-virtual {v5, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 678
    .local v3, input:Ljava/io/InputStream;
    const/4 v5, 0x2

    :try_start_2e
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/sec/android/app/music/common/richinfo/crypto/AesCrypt;->crypt(ILjava/io/File;)Ljava/io/InputStream;

    move-result-object v3

    .line 683
    if-eqz v3, :cond_4b

    .line 686
    invoke-static {v3}, Lcom/sec/android/app/music/common/richinfo/RichInfoParser;->parsingRichInfoXML(Ljava/io/InputStream;)Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    .line 687
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    if-eqz v5, :cond_4b

    .line 688
    const/4 v5, 0x1

    sput-boolean v5, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasRichInfo:Z

    .line 692
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mParsedData:Lcom/sec/android/app/music/common/richinfo/RichInfoData;

    invoke-static {v5}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->setRichInfoData(Lcom/sec/android/app/music/common/richinfo/RichInfoData;)V
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_6a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4b} :catch_5b

    .line 699
    :cond_4b
    if-eqz v3, :cond_50

    .line 700
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_56

    .line 708
    :cond_50
    :goto_50
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_17

    .line 702
    :catch_56
    move-exception v0

    .line 703
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 695
    .end local v0           #e:Ljava/io/IOException;
    :catch_5b
    move-exception v1

    .line 696
    .local v1, e1:Ljava/lang/Exception;
    :try_start_5c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_6a

    .line 699
    if-eqz v3, :cond_50

    .line 700
    :try_start_61
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_50

    .line 702
    :catch_65
    move-exception v0

    .line 703
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 698
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/lang/Exception;
    :catchall_6a
    move-exception v5

    .line 699
    if-eqz v3, :cond_70

    .line 700
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    .line 704
    :cond_70
    :goto_70
    throw v5

    .line 702
    :catch_71
    move-exception v0

    .line 703
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_70
.end method

.method private requestUMSinfo()V
    .registers 3

    .prologue
    .line 287
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mUMSResponseHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/util/http/HTTPRequestHelper;->getResponseHandlerInstance(Landroid/os/Handler;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v0

    .line 291
    .local v0, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    new-instance v1, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$9;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;Lorg/apache/http/client/ResponseHandler;)V

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$9;->start()V

    .line 336
    return-void
.end method

.method private setVisibleMediaInfoView()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x7f0c0065

    .line 181
    const/4 v4, 0x0

    .line 183
    .local v4, setVisibleBottomView:Z
    sget-boolean v6, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasTrackList:Z

    if-eqz v6, :cond_97

    .line 184
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mTitleView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 186
    .local v5, trackView:Landroid/view/ViewGroup;
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 187
    new-instance v6, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$4;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const/4 v4, 0x1

    .line 202
    .end local v5           #trackView:Landroid/view/ViewGroup;
    :goto_20
    sget-boolean v6, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasBiography:Z

    if-eqz v6, :cond_a1

    .line 203
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mArtistView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 205
    .local v1, artistView:Landroid/view/ViewGroup;
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 206
    new-instance v6, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$5;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const/4 v4, 0x1

    .line 221
    .end local v1           #artistView:Landroid/view/ViewGroup;
    :goto_38
    sget-boolean v6, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasDiscography:Z

    if-eqz v6, :cond_ab

    .line 222
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mAlbumView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 224
    .local v0, albumView:Landroid/view/ViewGroup;
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 225
    new-instance v6, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$6;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const/4 v4, 0x1

    .line 240
    .end local v0           #albumView:Landroid/view/ViewGroup;
    :goto_50
    sget-boolean v6, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasReview:Z

    if-eqz v6, :cond_b5

    .line 241
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mReviewView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mReviewView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 244
    .local v3, reviewView:Landroid/view/ViewGroup;
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 245
    new-instance v6, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$7;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$7;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const/4 v4, 0x1

    .line 260
    .end local v3           #reviewView:Landroid/view/ViewGroup;
    :goto_6d
    sget-boolean v6, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasCredit:Z

    if-eqz v6, :cond_bb

    .line 261
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mCreditView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mCreditView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 264
    .local v2, creditView:Landroid/view/ViewGroup;
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 265
    new-instance v6, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$8;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$8;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const/4 v4, 0x1

    .line 281
    .end local v2           #creditView:Landroid/view/ViewGroup;
    :goto_8a
    if-eqz v4, :cond_96

    .line 282
    const v6, 0x7f0c003d

    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 284
    :cond_96
    return-void

    .line 200
    :cond_97
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mTitleView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_20

    .line 219
    :cond_a1
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mArtistView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_38

    .line 238
    :cond_ab
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mAlbumView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_50

    .line 258
    :cond_b5
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mReviewView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6d

    .line 278
    :cond_bb
    iget-object v6, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mCreditView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8a
.end method

.method private showMediaInfoView()V
    .registers 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    return-void
.end method

.method private showRichInfoView()V
    .registers 3

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setVisibility(I)V

    .line 725
    return-void
.end method

.method private showSearchPopup(I)V
    .registers 7
    .parameter "tag"

    .prologue
    .line 835
    const/4 v1, 0x0

    .line 836
    .local v1, mime:Ljava/lang/String;
    const/4 v2, 0x0

    .line 837
    .local v2, title:Ljava/lang/String;
    packed-switch p1, :pswitch_data_da

    .line 867
    :pswitch_5
    const-string v1, "audio/*"

    .line 871
    :cond_7
    :goto_7
    if-nez v2, :cond_29

    .line 872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090134

    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 875
    :cond_29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 876
    .local v0, i:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 877
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string v3, "query"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v3, "android.intent.extra.title"

    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v4, v4, Lcom/sec/android/app/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string v3, "android.intent.extra.focus"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 886
    return-void

    .line 839
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_53
    const-string v1, "audio/*"

    .line 841
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    if-eqz v3, :cond_7

    .line 842
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v3, v3, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v3, v3, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8a

    .line 843
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v4, v4, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v4, v4, Lcom/sec/android/app/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    .line 846
    :cond_8a
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v2, v3, Lcom/sec/android/app/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    goto/16 :goto_7

    .line 850
    :pswitch_90
    const-string v1, "vnd.android.cursor.item/artist"

    .line 852
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    if-eqz v3, :cond_7

    .line 853
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v2, v3, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    goto/16 :goto_7

    .line 856
    :pswitch_9c
    const-string v1, "vnd.android.cursor.item/album"

    .line 858
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    if-eqz v3, :cond_7

    .line 859
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v3, v3, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    if-eqz v3, :cond_d3

    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v3, v3, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_d3

    .line 860
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v4, v4, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v4, v4, Lcom/sec/android/app/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    .line 863
    :cond_d3
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v2, v3, Lcom/sec/android/app/music/common/data/MediaMetadata;->album:Ljava/lang/String;

    goto/16 :goto_7

    .line 837
    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_53
        :pswitch_90
        :pswitch_5
        :pswitch_9c
    .end packed-switch
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 971
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v3, 0x7f09008f

    const v2, 0x7f09008c

    const/4 v1, 0x0

    .line 601
    if-nez p1, :cond_c

    .line 602
    packed-switch p2, :pswitch_data_60

    .line 639
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 606
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1f

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mToast:Landroid/widget/Toast;

    .line 612
    :goto_19
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 610
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_19

    .line 615
    :pswitch_25
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_37

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mToast:Landroid/widget/Toast;

    .line 621
    :goto_31
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 619
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_31

    .line 624
    :pswitch_3d
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 626
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$16;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_c

    .line 602
    nop

    :pswitch_data_60
    .packed-switch -0x1
        :pswitch_3d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_25
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setOrientation(I)V

    .line 572
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 573
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .parameter "savedInstanceState"

    .prologue
    .line 367
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mContext:Landroid/content/Context;

    .line 370
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->setVolumeControlStream(I)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/Window;->requestFeature(I)Z

    .line 372
    const v14, 0x7f030014

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->setContentView(I)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 376
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_48

    .line 377
    const-string v14, "playing_uri"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 378
    .local v13, uri:Ljava/lang/String;
    if-eqz v13, :cond_35

    .line 379
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mPlayingUri:Landroid/net/Uri;

    .line 381
    :cond_35
    const-string v14, "launch_from"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 382
    .local v9, launchFrom:Ljava/lang/String;
    const-string v14, "audio_preview"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_48

    .line 383
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mIsAudioPreviewInfo:Z

    .line 401
    .end local v9           #launchFrom:Ljava/lang/String;
    .end local v13           #uri:Ljava/lang/String;
    :cond_48
    new-instance v8, Landroid/content/IntentFilter;

    const-string v14, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v8, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 402
    .local v8, intentFilter:Landroid/content/IntentFilter;
    const-string v14, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v8, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v14, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v8, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v14, "file"

    invoke-virtual {v8, v14}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/app/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/music/common/data/MusicDB;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    .line 409
    new-instance v14, Lcom/sec/android/app/music/common/data/MediaMetadata;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-direct {v14, v15}, Lcom/sec/android/app/music/common/data/MediaMetadata;-><init>(Lcom/sec/android/app/music/common/data/MusicDB;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    .line 411
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mIsAudioPreviewInfo:Z

    if-eqz v14, :cond_208

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mPlayingUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/app/music/common/data/MediaMetadata;->parseForAudioPreview(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 417
    :goto_97
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v14, v14, Lcom/sec/android/app/music/common/data/MediaMetadata;->albumImagePath:Ljava/lang/String;

    if-eqz v14, :cond_ad

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v14, v14, Lcom/sec/android/app/music/common/data/MediaMetadata;->albumImagePath:Ljava/lang/String;

    invoke-static {v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mAlbumartBitmap:Landroid/graphics/Bitmap;

    .line 420
    :cond_ad
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mAlbumartBitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_c2

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200b8

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mAlbumartBitmap:Landroid/graphics/Bitmap;

    .line 425
    :cond_c2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    invoke-static {v14}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->setMediaMetaData(Lcom/sec/android/app/music/common/data/MediaMetadata;)V

    .line 433
    const v14, 0x7f0c0019

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 434
    .local v6, headerView:Landroid/view/View;
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 435
    const v14, 0x7f0c001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 436
    .local v2, albumArt:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mAlbumartBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 437
    const v14, 0x7f0c0020

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 438
    .local v12, title:Landroid/widget/TextView;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v14, v14, Lcom/sec/android/app/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    if-eqz v14, :cond_215

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v14, v14, Lcom/sec/android/app/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_215

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v14, v14, Lcom/sec/android/app/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :goto_116
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setSelected(Z)V

    .line 445
    const v14, 0x7f0c001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 446
    .local v3, artist:Landroid/widget/TextView;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v14, v14, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    if-eqz v14, :cond_21d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v14, v14, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_21d

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    iget-object v14, v14, Lcom/sec/android/app/music/common/data/MediaMetadata;->artist:Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    :goto_148
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setSelected(Z)V

    .line 456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mPlayingUri:Landroid/net/Uri;

    if-eqz v14, :cond_160

    .line 457
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mPlayingUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/sec/android/app/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    .line 460
    :cond_160
    const v14, 0x7f0c001d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 465
    .local v4, findTagButton:Landroid/view/ViewGroup;
    sget-boolean v14, Lcom/sec/android/app/music/MusicFeatures;->FLAG_ENABLE_FIND_TAG:Z

    if-eqz v14, :cond_225

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mIsAudioPreviewInfo:Z

    if-nez v14, :cond_225

    sget-object v14, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    if-eqz v14, :cond_225

    sget-object v14, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_225

    .line 467
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 468
    new-instance v14, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$11;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 476
    new-instance v14, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$12;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    const v14, 0x7f0c001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 485
    .local v11, textView:Landroid/widget/TextView;
    new-instance v14, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$13;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    .end local v11           #textView:Landroid/widget/TextView;
    :goto_1b0
    const v14, 0x7f0c0046

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    .line 499
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mIsAudioPreviewInfo:Z

    if-eqz v14, :cond_22b

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->initView(Landroid/view/Display;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    sget-object v14, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageMap:Ljava/util/HashMap;

    const-string v16, "OTHER"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v15, v14}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setPageWidthDelay(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    const v15, 0x7f0c005d

    invoke-virtual {v14, v15}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 505
    .local v5, header:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setVisibility(I)V

    .line 567
    .end local v5           #header:Landroid/view/View;
    :goto_207
    return-void

    .line 414
    .end local v2           #albumArt:Landroid/widget/ImageView;
    .end local v3           #artist:Landroid/widget/TextView;
    .end local v4           #findTagButton:Landroid/view/ViewGroup;
    .end local v6           #headerView:Landroid/view/View;
    .end local v12           #title:Landroid/widget/TextView;
    :cond_208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaMetadata:Lcom/sec/android/app/music/common/data/MediaMetadata;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mPlayingUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Lcom/sec/android/app/music/common/data/MediaMetadata;->parse(Landroid/net/Uri;)Z

    goto/16 :goto_97

    .line 442
    .restart local v2       #albumArt:Landroid/widget/ImageView;
    .restart local v6       #headerView:Landroid/view/View;
    .restart local v12       #title:Landroid/widget/TextView;
    :cond_215
    const v14, 0x7f090134

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_116

    .line 450
    .restart local v3       #artist:Landroid/widget/TextView;
    :cond_21d
    const v14, 0x7f090136

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_148

    .line 494
    .restart local v4       #findTagButton:Landroid/view/ViewGroup;
    :cond_225
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1b0

    .line 511
    :cond_22b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->makeMediaInfoDefaultView()Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaInfoView:Landroid/view/View;

    .line 512
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaInfoView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mTitleView:Landroid/view/View;

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaInfoView:Landroid/view/View;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mArtistView:Landroid/view/View;

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaInfoView:Landroid/view/View;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mAlbumView:Landroid/view/View;

    .line 515
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaInfoView:Landroid/view/View;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mReviewView:Landroid/view/View;

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaInfoView:Landroid/view/View;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mCreditView:Landroid/view/View;

    .line 517
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaInfoView:Landroid/view/View;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mOthersView:Landroid/view/View;

    .line 518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mOthersView:Landroid/view/View;

    const v15, 0x7f0c0065

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 520
    .local v10, otherView:Landroid/view/ViewGroup;
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 521
    new-instance v14, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$14;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mReviewView:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mCreditView:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090081

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 545
    new-instance v14, Ljava/lang/Thread;

    new-instance v15, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$15;-><init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    invoke-direct {v14, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    goto/16 :goto_207
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mUMSResponseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 950
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->hideProgressDialog()V

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_2c

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_27

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 957
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 959
    :cond_2c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 960
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v3, 0x7f04000a

    const v2, 0x7f040009

    const/4 v0, 0x1

    .line 583
    const/4 v1, 0x4

    if-ne v1, p1, :cond_26

    .line 584
    iput-boolean v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mPressBack:Z

    .line 585
    iget-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mIsAudioPreviewInfo:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1f

    .line 586
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->showMediaInfoView()V

    .line 587
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->overridePendingTransition(II)V

    .line 594
    :goto_1e
    return v0

    .line 590
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->finish()V

    .line 591
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->overridePendingTransition(II)V

    goto :goto_1e

    .line 594
    :cond_26
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1e
.end method

.method protected onPause()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 909
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_7} :catch_8d

    .line 913
    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_10

    .line 914
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 916
    :cond_10
    iget-boolean v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mIsAudioPreviewInfo:Z

    if-eqz v0, :cond_89

    .line 918
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 920
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 922
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 923
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 925
    if-eqz v1, :cond_89

    if-nez v0, :cond_89

    iget-boolean v4, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mPressBack:Z

    if-nez v4, :cond_89

    .line 926
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->CLASSTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckPause.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_97

    move v0, v2

    :goto_4e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mPressBack:Z

    if-nez v1, :cond_99

    :goto_5c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.soundplayer.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 930
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 933
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.soundplayer.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    const-string v1, "command"

    const-string v2, "unregister_bt_receiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 939
    :cond_89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 941
    return-void

    .line 910
    :catch_8d
    move-exception v0

    .line 911
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->CLASSTAG:Ljava/lang/String;

    const-string v1, "onPause : mLowBatteryReceiver is not registered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_97
    move v0, v3

    .line 926
    goto :goto_4e

    :cond_99
    move v2, v3

    goto :goto_5c
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 893
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mPressBack:Z

    .line 894
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 895
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 896
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 897
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 898
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 899
    return-void
.end method

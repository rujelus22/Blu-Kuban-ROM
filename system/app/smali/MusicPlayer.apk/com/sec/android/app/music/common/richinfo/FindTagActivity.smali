.class public Lcom/sec/android/app/music/common/richinfo/FindTagActivity;
.super Landroid/app/Activity;
.source "FindTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;,
        Lcom/sec/android/app/music/common/richinfo/FindTagActivity$RichInfoSaver;
    }
.end annotation


# static fields
.field private static final CLASSTAG:Ljava/lang/String;

.field private static sDate:Ljava/lang/String;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDidUMSChecking:Z

.field private mFindTagResultView:Landroid/view/ViewGroup;

.field mIndex:I

.field private final mIsEnableShop:Z

.field private mIsShowResults:Z

.field private final mLatestRequestConfigDate:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

.field private final mNetworkResponseHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

.field private final mRecordingCompleteHandler:Landroid/os/Handler;

.field private mRecordingTime:I

.field private final mRichInfoResponseHandler:Landroid/os/Handler;

.field private mRichInfoSettings:Landroid/content/SharedPreferences;

.field private mSigExtractor:Lcom/shazam/sig/SIGExtractor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 75
    const-class v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->CLASSTAG:Ljava/lang/String;

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 475
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->sFormatter:Ljava/util/Formatter;

    .line 477
    const-string v0, "%04d-%02d-%02dT%02d:%02d:%02d"

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->sDate:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mIsEnableShop:Z

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mDidUMSChecking:Z

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mLatestRequestConfigDate:I

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mIsShowResults:Z

    .line 198
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$3;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;

    .line 280
    iput v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingTime:I

    .line 291
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$4;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingCompleteHandler:Landroid/os/Handler;

    .line 590
    iput v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mIndex:I

    .line 592
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$9;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkResponseHandler:Landroid/os/Handler;

    .line 963
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->CLASSTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->cancelAllOperations()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingTime:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingTime:I

    return p1
.end method

.method static synthetic access$1012(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingTime:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/framework/SecMediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingCompleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/shazam/sig/SIGExtractor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mSigExtractor:Lcom/shazam/sig/SIGExtractor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Lcom/shazam/sig/SIGExtractor;)Lcom/shazam/sig/SIGExtractor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mSigExtractor:Lcom/shazam/sig/SIGExtractor;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Z)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->getBaseOrbitParameters(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->sFormatBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->sDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/util/Formatter;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->sFormatter:Ljava/util/Formatter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Lcom/sec/android/app/music/common/richinfo/NetworkData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Lcom/sec/android/app/music/common/richinfo/NetworkData;)Lcom/sec/android/app/music/common/richinfo/NetworkData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->requestConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;[B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->doRecognition([B)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->requestResults(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->internalRecording()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->displayFindTagResults()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private cancelAllOperations()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkResponseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoResponseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_20

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->stop()V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 173
    iput-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 175
    :cond_20
    iget-boolean v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mIsShowResults:Z

    if-nez v0, :cond_27

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->finish()V

    .line 178
    :cond_27
    return-void
.end method

.method private displayFindTagResults()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 690
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->setContentView(I)V

    .line 691
    const v5, 0x7f0c0003

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 692
    .local v2, subTitle:Landroid/widget/TextView;
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 693
    const v5, 0x7f0c0006

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mFindTagResultView:Landroid/view/ViewGroup;

    .line 695
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iget-object v5, v5, Lcom/sec/android/app/music/common/richinfo/NetworkData;->resultFindTags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 696
    .local v1, resultSize:I
    const-string v5, "RichInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->CLASSTAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resultSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    if-nez v1, :cond_59

    .line 698
    const v5, 0x7f0c0004

    invoke-virtual {p0, v5}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 700
    .local v4, view:Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    .end local v4           #view:Landroid/widget/TextView;
    :cond_53
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->hideProgressDialog()V

    .line 711
    iput-boolean v10, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mIsShowResults:Z

    .line 712
    return-void

    .line 702
    :cond_59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5a
    if-ge v0, v1, :cond_53

    .line 703
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkData:Lcom/sec/android/app/music/common/richinfo/NetworkData;

    iget-object v5, v5, Lcom/sec/android/app/music/common/richinfo/NetworkData;->resultFindTags:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;

    .line 704
    .local v3, tag:Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;
    iget-object v5, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mFindTagResultView:Landroid/view/ViewGroup;

    iget-object v6, v3, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;->url:Ljava/lang/String;

    iget-object v7, v3, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;->albumArtUrl:Ljava/lang/String;

    iget-object v8, v3, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;->trackName:Ljava/lang/String;

    iget-object v9, v3, Lcom/sec/android/app/music/common/richinfo/NetworkData$FindTag;->artistName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->makeFindTagResultItemView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a
.end method

.method private doRecognition([B)V
    .registers 4
    .parameter "recordedSample"

    .prologue
    .line 480
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkResponseHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/util/http/HTTPRequestHelper;->getResponseHandlerInstance(Landroid/os/Handler;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v0

    .line 485
    .local v0, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    new-instance v1, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$7;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$7;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;[BLorg/apache/http/client/ResponseHandler;)V

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$7;->start()V

    .line 508
    return-void
.end method

.method private getBaseOrbitParameters(Z)Ljava/util/List;
    .registers 9
    .parameter "requestConfig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/util/http/multipart/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v0, parts:Ljava/util/List;,"Ljava/util/List<Lcom/util/http/multipart/Part;>;"
    if-eqz p1, :cond_76

    .line 549
    new-instance v2, Lcom/util/http/multipart/StringPart;

    const-string v3, "service"

    const-string v4, "cn=Config,cn=Samsung,cn=services"

    invoke-direct {v2, v3, v4}, Lcom/util/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    :goto_13
    new-instance v2, Lcom/util/http/multipart/StringPart;

    const-string v3, "language"

    invoke-virtual {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/util/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v2, Lcom/util/http/multipart/StringPart;

    const-string v3, "cryptToken"

    const-string v4, "025B58C0"

    invoke-static {v4}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encrypt_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/util/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 566
    .local v1, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Lcom/util/http/multipart/StringPart;

    const-string v3, "deviceId"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encrypt_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/util/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v2, Lcom/util/http/multipart/StringPart;

    const-string v3, "deviceModel"

    sget-object v4, Lcom/util/http/Network;->DEVICEMODEL:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encrypt_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/util/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    new-instance v2, Lcom/util/http/multipart/StringPart;

    const-string v3, "applicationIdentifier"

    const-string v4, "Samsung_FT_Android_GA__3.0.0"

    invoke-static {v4}, Lcom/sec/android/app/music/common/richinfo/crypto/IceCrypt;->encrypt_string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/util/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    return-object v0

    .line 554
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_76
    new-instance v2, Lcom/util/http/multipart/StringPart;

    const-string v3, "service"

    iget-object v4, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoSettings:Landroid/content/SharedPreferences;

    const-string v5, "service"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/util/http/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method private hideProgressDialog()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 250
    iput-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 252
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 254
    iput-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 256
    :cond_27
    return-void
.end method

.method private internalRecording()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 374
    new-instance v3, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 376
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 378
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v3, 0x12fd1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const v3, 0x251c0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    :try_start_2c
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    sget-object v4, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->prepare()V

    .line 387
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    .line 388
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->seekTo(I)V

    .line 389
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->start()V

    .line 390
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecorder:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_50} :catch_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_50} :catch_64
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_50} :catch_69

    .line 399
    :goto_50
    new-instance v3, Lcom/shazam/sig/SIGExtractor;

    invoke-direct {v3}, Lcom/shazam/sig/SIGExtractor;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mSigExtractor:Lcom/shazam/sig/SIGExtractor;

    .line 400
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRecordingCompleteHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 401
    return-void

    .line 391
    :catch_5f
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_50

    .line 393
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_64
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_50

    .line 395
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_69
    move-exception v0

    .line 396
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50
.end method

.method private makeFindTagResultItemView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 16
    .parameter "url"
    .parameter "artwork"
    .parameter "line1"
    .parameter "line2"

    .prologue
    .line 726
    iget-object v8, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030016

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 728
    .local v7, view:Landroid/view/View;
    const v8, 0x7f0c0054

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 729
    .local v5, listItem:Landroid/view/View;
    invoke-virtual {v5, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 730
    new-instance v8, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$10;

    invoke-direct {v8, p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$10;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    const v8, 0x7f0c0055

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 746
    .local v2, imageView:Landroid/widget/ImageView;
    const/high16 v8, 0x7f04

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 750
    if-eqz p2, :cond_82

    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_82

    .line 752
    new-instance v0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    .line 753
    .local v0, al:Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v0, v8}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 759
    .end local v0           #al:Lcom/sec/android/app/music/common/richinfo/FindTagActivity$AlbumArtLoader;
    :goto_45
    const v8, 0x7f0c0057

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 760
    .local v3, line1View:Landroid/widget/TextView;
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 763
    const v8, 0x7f0c0058

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 764
    .local v4, line2View:Landroid/widget/TextView;
    if-nez p4, :cond_8c

    .line 765
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    :goto_65
    const v8, 0x7f0c0059

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 774
    .local v6, ratingView:Landroid/widget/ImageView;
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 776
    const v8, 0x7f0c0056

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 777
    .local v1, buyButton:Landroid/widget/Button;
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 779
    return-object v7

    .line 756
    .end local v1           #buyButton:Landroid/widget/Button;
    .end local v3           #line1View:Landroid/widget/TextView;
    .end local v4           #line2View:Landroid/widget/TextView;
    .end local v6           #ratingView:Landroid/widget/ImageView;
    :cond_82
    iget-object v8, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_45

    .line 767
    .restart local v3       #line1View:Landroid/widget/TextView;
    .restart local v4       #line2View:Landroid/widget/TextView;
    :cond_8c
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_65
.end method

.method private requestConfig()V
    .registers 3

    .prologue
    .line 458
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkResponseHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/util/http/HTTPRequestHelper;->getResponseHandlerInstance(Landroid/os/Handler;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v0

    .line 462
    .local v0, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    new-instance v1, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$6;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Lorg/apache/http/client/ResponseHandler;)V

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$6;->start()V

    .line 471
    return-void
.end method

.method private requestResults(Ljava/lang/String;)V
    .registers 4
    .parameter "requestId"

    .prologue
    .line 511
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkResponseHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/util/http/HTTPRequestHelper;->getResponseHandlerInstance(Landroid/os/Handler;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v0

    .line 516
    .local v0, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    new-instance v1, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$8;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Ljava/lang/String;Lorg/apache/http/client/ResponseHandler;)V

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$8;->start()V

    .line 535
    return-void
.end method

.method private requestUMSinfo()V
    .registers 3

    .prologue
    .line 404
    iget-object v1, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mNetworkResponseHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/util/http/HTTPRequestHelper;->getResponseHandlerInstance(Landroid/os/Handler;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v0

    .line 408
    .local v0, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    new-instance v1, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$5;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;Lorg/apache/http/client/ResponseHandler;)V

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$5;->start()V

    .line 455
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->setVolumeControlStream(I)V

    .line 108
    iput-object p0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mContext:Landroid/content/Context;

    .line 109
    iput-boolean v2, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mIsShowResults:Z

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mContext:Landroid/content/Context;

    const-string v1, "RichInfoSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mRichInfoSettings:Landroid/content/SharedPreferences;

    .line 126
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 128
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 129
    .local v6, pm:Landroid/os/PowerManager;
    const v0, 0x20000006

    sget-object v1, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->CLASSTAG:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090081

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v5, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$1;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity$2;-><init>(Lcom/sec/android/app/music/common/richinfo/FindTagActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 151
    sget-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasMusicHub:Z

    if-eqz v0, :cond_68

    sget-boolean v0, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasShop:Z

    if-nez v0, :cond_68

    .line 152
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->requestUMSinfo()V

    .line 156
    :goto_67
    return-void

    .line 154
    :cond_68
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->requestConfig()V

    goto :goto_67
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 161
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->hideProgressDialog()V

    .line 162
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/FindTagActivity;->cancelAllOperations()V

    .line 163
    return-void
.end method

.class public Lcom/google/android/apps/plus/fragments/VideoViewFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "VideoViewFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragment;",
        "Landroid/media/MediaPlayer$OnErrorListener;",
        "Landroid/media/MediaPlayer$OnInfoListener;",
        "Landroid/media/MediaPlayer$OnPreparedListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final sPlayableTypes:Landroid/util/SparseBooleanArray;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mError:Z

.field private final mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mIntent:Landroid/content/Intent;

.field private mIsWiFiConnection:Z

.field private mLoading:Z

.field private mOwnerId:Ljava/lang/String;

.field private mPerformedRefetch:Z

.field private mPhotoId:J

.field private mPlayOnResume:Z

.field private mPlayerView:Landroid/widget/VideoView;

.field private mPreviousOrientation:I

.field private mVideoBlob:[B

.field private mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

.field private mVideoPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->PROJECTION:[Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->sPlayableTypes:Landroid/util/SparseBooleanArray;

    .line 71
    sget-object v0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->sPlayableTypes:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 72
    sget-object v0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->sPlayableTypes:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 74
    sget-object v0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->sPlayableTypes:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPreviousOrientation:I

    .line 105
    new-instance v0, Lcom/google/android/apps/plus/fragments/VideoViewFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/VideoViewFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/VideoViewFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPhotoId:J

    return-wide v0
.end method

.method private getBestStream(Ljava/util/List;)Ljava/lang/String;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoStream;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, streams:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$VideoStream;>;"
    const/4 v0, 0x0

    .line 418
    .local v0, best:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    const/4 v1, 0x0

    .line 419
    .local v1, bestStreamHeight:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    .line 420
    .local v5, stream:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getVideoHeight()I

    move-result v6

    .line 421
    .local v6, streamHeight:I
    sget-object v7, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->sPlayableTypes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getFormatId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 422
    .local v4, isStreamPlayable:Z
    if-eqz v4, :cond_6

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 423
    const/16 v7, 0x280

    if-gt v6, v7, :cond_49

    const/4 v3, 0x1

    .line 424
    .local v3, isStandardDef:Z
    :goto_31
    if-eqz v0, :cond_47

    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIsWiFiConnection:Z

    if-eqz v7, :cond_39

    if-gt v6, v1, :cond_47

    :cond_39
    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIsWiFiConnection:Z

    if-nez v7, :cond_41

    if-eqz v3, :cond_41

    if-gt v6, v1, :cond_47

    :cond_41
    iget-boolean v7, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIsWiFiConnection:Z

    if-nez v7, :cond_6

    if-ge v6, v1, :cond_6

    .line 428
    :cond_47
    move-object v0, v5

    goto :goto_6

    .line 423
    .end local v3           #isStandardDef:Z
    :cond_49
    const/4 v3, 0x0

    goto :goto_31

    .line 433
    .end local v4           #isStreamPlayable:Z
    .end local v5           #stream:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    .end local v6           #streamHeight:I
    :cond_4b
    if-nez v0, :cond_4f

    const/4 v7, 0x0

    :goto_4e
    return-object v7

    :cond_4f
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrl()Ljava/lang/String;

    move-result-object v7

    goto :goto_4e
.end method

.method private startPlayback()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 380
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->READY:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    if-eq v1, v2, :cond_15

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FINAL:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    if-ne v1, v2, :cond_54

    .line 383
    :cond_15
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPhotoId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3c

    .line 385
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStreamList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrl()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, streamUrl:Ljava/lang/String;
    :goto_2e
    if-eqz v0, :cond_47

    .line 394
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 395
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 405
    .end local v0           #streamUrl:Ljava/lang/String;
    :goto_3b
    return-void

    .line 389
    :cond_3c
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStreamList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getBestStream(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #streamUrl:Ljava/lang/String;
    goto :goto_2e

    .line 397
    :cond_47
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    .line 398
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08009c

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    goto :goto_3b

    .line 400
    .end local v0           #streamUrl:Ljava/lang/String;
    :cond_54
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    if-ne v1, v2, :cond_69

    .line 401
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08009b

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    goto :goto_3b

    .line 403
    :cond_69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08009a

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    goto :goto_3b
.end method

.method private updateView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 441
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->READY:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    if-eq v1, v2, :cond_18

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FINAL:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    if-ne v1, v2, :cond_21

    :cond_18
    const/4 v0, 0x1

    .line 445
    .local v0, hasResults:Z
    :goto_19
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    if-eqz v1, :cond_23

    .line 446
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 454
    :goto_20
    return-void

    .line 441
    .end local v0           #hasResults:Z
    :cond_21
    const/4 v0, 0x0

    goto :goto_19

    .line 448
    .restart local v0       #hasResults:Z
    :cond_23
    if-eqz v0, :cond_2d

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    if-nez v1, :cond_2d

    .line 449
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->showContent(Landroid/view/View;)V

    goto :goto_20

    .line 451
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_20
.end method


# virtual methods
.method protected isEmpty()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 244
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v3

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->READY:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    if-eq v3, v4, :cond_1a

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v3

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FINAL:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    if-ne v3, v4, :cond_27

    :cond_1a
    move v1, v2

    .line 247
    .local v1, hasResults:Z
    :goto_1b
    if-eqz v1, :cond_25

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    if-nez v3, :cond_25

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    if-eqz v3, :cond_26

    :cond_25
    move v0, v2

    .line 248
    .local v0, empty:Z
    :cond_26
    return v0

    .end local v0           #empty:Z
    .end local v1           #hasResults:Z
    :cond_27
    move v1, v0

    .line 244
    goto :goto_1b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 254
    .local v2, obj:Ljava/lang/Object;
    instance-of v4, v2, Landroid/widget/MediaController;

    if-eqz v4, :cond_14

    move-object v3, v2

    .line 255
    check-cast v3, Landroid/widget/MediaController;

    .line 256
    .local v3, playbackController:Landroid/widget/MediaController;
    invoke-virtual {v3}, Landroid/widget/MediaController;->isShowing()Z

    move-result v4

    if-nez v4, :cond_14

    .line 258
    :try_start_11
    invoke-virtual {v3}, Landroid/widget/MediaController;->show()V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_14} :catch_15

    .line 271
    .end local v3           #playbackController:Landroid/widget/MediaController;
    :cond_14
    :goto_14
    return-void

    .line 259
    .restart local v3       #playbackController:Landroid/widget/MediaController;
    :catch_15
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 262
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    .line 263
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 264
    .local v1, fragmentView:Landroid/view/View;
    if-eqz v1, :cond_14

    .line 265
    const v4, 0x7f08009c

    invoke-virtual {p0, v1, v4}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 266
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    goto :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    if-eqz p1, :cond_2f

    .line 128
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.apps.plus.VideoViewFragment.INTENT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    .line 129
    const-string v1, "com.google.android.apps.plus.VideoViewFragment.POSITION"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoPosition:I

    .line 130
    const-string v1, "com.google.android.apps.plus.VideoViewFragment.PLAY_ON_RESUME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayOnResume:Z

    .line 131
    const-string v1, "com.google.android.apps.plus.VideoViewFragment.PREVIOUS_ORIENTATION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPreviousOrientation:I

    .line 141
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 142
    .local v0, currentOrientation:I
    iget v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPreviousOrientation:I

    if-eq v1, v0, :cond_42

    .line 143
    iput v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPreviousOrientation:I

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayOnResume:Z

    .line 147
    :cond_42
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "photo_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPhotoId:J

    .line 149
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "owner_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mOwnerId:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 151
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoBlob:[B

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 154
    :try_start_7b
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoBlob:[B

    if-eqz v1, :cond_87

    .line 155
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoBlob:[B

    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    :try_end_87
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_7b .. :try_end_87} :catch_88

    .line 160
    :cond_87
    :goto_87
    return-void

    .line 157
    :catch_88
    move-exception v1

    goto :goto_87
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .parameter "id"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 275
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPhotoId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 278
    .local v2, photoUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    .line 165
    const v3, 0x7f0300ed

    invoke-super {p0, p1, p2, p3, v3}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, view:Landroid/view/View;
    new-instance v1, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 169
    .local v1, playbackController:Landroid/widget/MediaController;
    const v3, 0x7f09027d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, layout:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 174
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/MediaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    const v3, 0x7f09027e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    .line 178
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 179
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 180
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 182
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    if-nez v3, :cond_53

    .line 183
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 187
    :cond_53
    const v3, 0x7f08009a

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 188
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    .line 190
    return-object v2
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 11
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v6, 0x1

    .line 342
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPerformedRefetch:Z

    if-nez v1, :cond_17

    if-ne p2, v6, :cond_17

    .line 344
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPerformedRefetch:Z

    .line 345
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mOwnerId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPhotoId:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/service/EsService;->getPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;J)I

    .line 357
    :cond_16
    :goto_16
    return v6

    .line 348
    :cond_17
    iput-boolean v6, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 351
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 352
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_16

    .line 353
    const v1, 0x7f08009c

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 354
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    goto :goto_16
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 311
    sparse-switch p2, :sswitch_data_1e

    .line 327
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 328
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_e

    .line 329
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    .line 331
    :cond_e
    return v2

    .line 313
    .end local v0           #v:Landroid/view/View;
    :sswitch_f
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 314
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    goto :goto_5

    .line 317
    :sswitch_14
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 318
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    goto :goto_5

    .line 323
    :sswitch_19
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 324
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    goto :goto_5

    .line 311
    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_19
        0x64 -> :sswitch_19
        0xc8 -> :sswitch_19
        0x2bd -> :sswitch_f
        0x2be -> :sswitch_14
    .end sparse-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x0

    .line 283
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 284
    if-eqz p2, :cond_27

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 285
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoBlob:[B

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 288
    :try_start_14
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoBlob:[B

    if-eqz v1, :cond_20

    .line 289
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoBlob:[B

    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    :try_end_20
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_14 .. :try_end_20} :catch_31

    .line 294
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    if-eqz v1, :cond_27

    .line 295
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->startPlayback()V

    .line 298
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_30

    .line 300
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    .line 302
    :cond_30
    return-void

    .line 291
    .end local v0           #v:Landroid/view/View;
    :catch_31
    move-exception v1

    goto :goto_20
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 227
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 228
    return-void

    .line 222
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    goto :goto_1c
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    .line 362
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 363
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 364
    iget v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoPosition:I

    if-nez v1, :cond_19

    .line 365
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 370
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 371
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_18

    .line 372
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    .line 374
    :cond_18
    return-void

    .line 367
    .end local v0           #v:Landroid/view/View;
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 368
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto :goto_f
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 195
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 197
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v4}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 201
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 203
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_39

    :goto_22
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIsWiFiConnection:Z

    .line 206
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    if-eqz v2, :cond_2f

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayOnResume:Z

    if-eqz v2, :cond_2f

    .line 207
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->startPlayback()V

    .line 209
    :cond_2f
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayOnResume:Z

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    .line 212
    return-void

    :cond_39
    move v2, v3

    .line 203
    goto :goto_22
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2b

    .line 235
    const-string v0, "com.google.android.apps.plus.VideoViewFragment.INTENT"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 236
    const-string v0, "com.google.android.apps.plus.VideoViewFragment.POSITION"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v0, "com.google.android.apps.plus.VideoViewFragment.PLAY_ON_RESUME"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayOnResume:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v0, "com.google.android.apps.plus.VideoViewFragment.PREVIOUS_ORIENTATION"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPreviousOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    :cond_2b
    return-void
.end method

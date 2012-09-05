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
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/media/MediaPlayer$OnPreparedListener;",
        "Landroid/media/MediaPlayer$OnInfoListener;",
        "Landroid/media/MediaPlayer$OnErrorListener;"
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

.field private mOwnerId:J

.field private mPerformedRefetch:Z

.field private mPhotoId:J

.field private mPlayerView:Landroid/widget/VideoView;

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

    .line 65
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->sPlayableTypes:Landroid/util/SparseBooleanArray;

    .line 66
    sget-object v0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->sPlayableTypes:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 67
    sget-object v0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->sPlayableTypes:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 69
    sget-object v0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->sPlayableTypes:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 96
    new-instance v0, Lcom/google/android/apps/plus/fragments/VideoViewFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/VideoViewFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    .line 112
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
    .line 367
    .local p1, streams:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$VideoStream;>;"
    const/4 v0, 0x0

    .line 368
    .local v0, best:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    const/4 v1, 0x0

    .line 369
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

    .line 370
    .local v5, stream:Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getVideoHeight()I

    move-result v6

    .line 371
    .local v6, streamHeight:I
    sget-object v7, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->sPlayableTypes:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getFormatId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 372
    .local v4, isStreamPlayable:Z
    if-eqz v4, :cond_6

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 373
    const/16 v7, 0x280

    if-gt v6, v7, :cond_49

    const/4 v3, 0x1

    .line 374
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

    .line 378
    :cond_47
    move-object v0, v5

    goto :goto_6

    .line 373
    .end local v3           #isStandardDef:Z
    :cond_49
    const/4 v3, 0x0

    goto :goto_31

    .line 383
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

    .line 330
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

    .line 333
    :cond_15
    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPhotoId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3c

    .line 335
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStreamList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream;->getStreamUrl()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, streamUrl:Ljava/lang/String;
    :goto_2e
    if-eqz v0, :cond_47

    .line 344
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 345
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 355
    .end local v0           #streamUrl:Ljava/lang/String;
    :goto_3b
    return-void

    .line 339
    :cond_3c
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStreamList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getBestStream(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #streamUrl:Ljava/lang/String;
    goto :goto_2e

    .line 347
    :cond_47
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    .line 348
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f07007a

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    goto :goto_3b

    .line 350
    .end local v0           #streamUrl:Ljava/lang/String;
    :cond_54
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->getStatus()Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    if-ne v1, v2, :cond_69

    .line 351
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070079

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    goto :goto_3b

    .line 353
    :cond_69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070078

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    goto :goto_3b
.end method

.method private updateView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 391
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

    .line 395
    .local v0, hasResults:Z
    :goto_19
    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    if-eqz v1, :cond_23

    .line 396
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 404
    :goto_20
    return-void

    .line 391
    .end local v0           #hasResults:Z
    :cond_21
    const/4 v0, 0x0

    goto :goto_19

    .line 398
    .restart local v0       #hasResults:Z
    :cond_23
    if-eqz v0, :cond_2d

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    if-nez v1, :cond_2d

    .line 399
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->showContent(Landroid/view/View;)V

    goto :goto_20

    .line 401
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

    .line 201
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

    .line 204
    .local v1, hasResults:Z
    :goto_1b
    if-eqz v1, :cond_25

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    if-nez v3, :cond_25

    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    if-eqz v3, :cond_26

    :cond_25
    move v0, v2

    .line 205
    .local v0, empty:Z
    :cond_26
    return v0

    .end local v0           #empty:Z
    .end local v1           #hasResults:Z
    :cond_27
    move v1, v0

    .line 201
    goto :goto_1b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 211
    .local v2, obj:Ljava/lang/Object;
    instance-of v4, v2, Landroid/widget/MediaController;

    if-eqz v4, :cond_14

    move-object v3, v2

    .line 212
    check-cast v3, Landroid/widget/MediaController;

    .line 213
    .local v3, playbackController:Landroid/widget/MediaController;
    invoke-virtual {v3}, Landroid/widget/MediaController;->isShowing()Z

    move-result v4

    if-nez v4, :cond_14

    .line 215
    :try_start_11
    invoke-virtual {v3}, Landroid/widget/MediaController;->show()V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_14} :catch_15

    .line 228
    .end local v3           #playbackController:Landroid/widget/MediaController;
    :cond_14
    :goto_14
    return-void

    .line 216
    .restart local v3       #playbackController:Landroid/widget/MediaController;
    :catch_15
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/NullPointerException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 219
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 221
    .local v1, fragmentView:Landroid/view/View;
    if-eqz v1, :cond_14

    .line 222
    const v4, 0x7f07007a

    invoke-virtual {p0, v1, v4}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 223
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    goto :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v2, 0x0

    .line 116
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    if-eqz p1, :cond_21

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.apps.plus.VideoViewFragment.INTENT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    .line 120
    const-string v0, "com.google.android.apps.plus.VideoViewFragment.POSITION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoPosition:I

    .line 123
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "photo_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPhotoId:J

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mOwnerId:J

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoBlob:[B

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoBlob:[B

    invoke-static {v0}, Lcom/google/android/apps/plus/content/DbVideo;->deserialize([B)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 130
    :cond_5d
    return-void
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

    .line 232
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->PHOTO_BY_PHOTO_ID_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPhotoId:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 235
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

    .line 135
    const v3, 0x7f0300ad

    invoke-super {p0, p1, p2, p3, v3}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v2

    .line 138
    .local v2, view:Landroid/view/View;
    new-instance v1, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 139
    .local v1, playbackController:Landroid/widget/MediaController;
    const v3, 0x7f0d0192

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, layout:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 144
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/MediaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    const v3, 0x7f0d0193

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    iput-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    .line 148
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 149
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 150
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 152
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    if-nez v3, :cond_53

    .line 153
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 157
    :cond_53
    const v3, 0x7f070078

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 158
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    .line 160
    return-object v2
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 12
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v7, 0x1

    .line 292
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPerformedRefetch:Z

    if-nez v0, :cond_17

    if-ne p2, v7, :cond_17

    .line 294
    iput-boolean v7, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPerformedRefetch:Z

    .line 295
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mOwnerId:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPhotoId:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)I

    .line 307
    :cond_16
    :goto_16
    return v7

    .line 298
    :cond_17
    iput-boolean v7, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 301
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 302
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_16

    .line 303
    const v0, 0x7f07007a

    invoke-virtual {p0, v6, v0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->setupEmptyView(Landroid/view/View;I)V

    .line 304
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

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

    .line 261
    sparse-switch p2, :sswitch_data_1e

    .line 277
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_e

    .line 279
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    .line 281
    :cond_e
    return v2

    .line 263
    .end local v0           #v:Landroid/view/View;
    :sswitch_f
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 264
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    goto :goto_5

    .line 267
    :sswitch_14
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 268
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    goto :goto_5

    .line 273
    :sswitch_19
    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 274
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mError:Z

    goto :goto_5

    .line 261
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

    .line 240
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 241
    if-eqz p2, :cond_20

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 242
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoBlob:[B

    .line 243
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoBlob:[B

    invoke-static {v1}, Lcom/google/android/apps/plus/content/DbVideo;->deserialize([B)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    .line 244
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    if-eqz v1, :cond_20

    .line 245
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->startPlayback()V

    .line 248
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_29

    .line 250
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    .line 252
    :cond_29
    return-void
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
    .line 257
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 187
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    .line 312
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mLoading:Z

    .line 313
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 314
    iget v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoPosition:I

    if-nez v1, :cond_19

    .line 315
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 320
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_18

    .line 322
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    .line 324
    :cond_18
    return-void

    .line 317
    .end local v0           #v:Landroid/view/View;
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    iget v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 318
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto :goto_f
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 165
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 167
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mEsListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 171
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 173
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_32

    :goto_21
    iput-boolean v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIsWiFiConnection:Z

    .line 175
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mVideoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    if-eqz v2, :cond_2a

    .line 176
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->startPlayback()V

    .line 178
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->updateView(Landroid/view/View;)V

    .line 179
    return-void

    .line 173
    :cond_32
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1d

    .line 194
    const-string v0, "com.google.android.apps.plus.VideoViewFragment.INTENT"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 195
    const-string v0, "com.google.android.apps.plus.VideoViewFragment.POSITION"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPlayerView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    :cond_1d
    return-void
.end method

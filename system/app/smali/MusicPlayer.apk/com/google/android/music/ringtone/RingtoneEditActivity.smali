.class public Lcom/google/android/music/ringtone/RingtoneEditActivity;
.super Landroid/app/Activity;
.source "RingtoneEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/music/ringtone/MarkerView$MarkerListener;
.implements Lcom/google/android/music/ringtone/WaveformView$WaveformListener;


# static fields
.field private static final LOGD:Z

.field private static final sCursorCols:[Ljava/lang/String;


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumCover:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mAlbumId:J

.field private mArtist:Ljava/lang/String;

.field private mArtistNameView:Landroid/widget/TextView;

.field private mAutoScrollDirection:I

.field private mAutoScrollOnEdge:Z

.field private mCanSeekAccurately:Z

.field private mCaption:Ljava/lang/String;

.field private mDoneButton:Lcom/google/android/music/widgets/ActionBarItem;

.field private mEndPos:I

.field private mExtension:Ljava/lang/String;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private mFile:Ljava/io/File;

.field private mFilename:Ljava/lang/String;

.field private mFlingVelocity:I

.field private mHandler:Landroid/os/Handler;

.field private mInfo:Landroid/widget/TextView;

.field private mIsPlaying:Z

.field private mKeyDown:Z

.field private final mLoadListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

.field private final mLoadSongThread:Ljava/lang/Thread;

.field private mLoadingKeepGoing:Z

.field private mLoadingLastUpdateTime:J

.field private mMarkerHeight:I

.field private mMarkerTouched:Z

.field private mMarkerWidth:I

.field private mMaxPos:I

.field private mMusicId:J

.field private mOffset:I

.field private mOffsetGoal:I

.field private final mPlayBackThread:Ljava/lang/Thread;

.field private mPlayButton:Lcom/google/android/music/PlayPauseButton;

.field private mPlayEndMsec:I

.field private mPlayStartMsec:I

.field private mPlayStartOffset:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecordingFilename:Ljava/lang/String;

.field private mRecordingUri:Landroid/net/Uri;

.field private mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

.field private mRewindButton:Landroid/widget/ImageButton;

.field private mSongNameView:Landroid/widget/TextView;

.field private mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

.field private mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

.field private mStartPos:I

.field private mTitle:Ljava/lang/String;

.field private mTopbar:Lcom/google/android/music/widgets/ActionBarItem;

.field private mTouchDragging:Z

.field private mTouchInitialEndPos:I

.field private mTouchInitialOffset:I

.field private mTouchInitialStartPos:I

.field private mTouchStart:F

.field private mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 69
    const-string v0, "MusicRingtones"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->LOGD:Z

    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const-string v1, "album_id"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->sCursorCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v0, 0x64

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerWidth:I

    .line 87
    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerHeight:I

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mCaption:Ljava/lang/String;

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAutoScrollDirection:I

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerTouched:Z

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMusicId:J

    .line 162
    new-instance v0, Lcom/google/android/music/ringtone/RingtoneEditActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity$1;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

    .line 177
    new-instance v0, Lcom/google/android/music/ringtone/RingtoneEditActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity$2;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayBackThread:Ljava/lang/Thread;

    .line 196
    new-instance v0, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity$3;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadSongThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/ringtone/RingtoneEditActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadingLastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/google/android/music/ringtone/RingtoneEditActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadingLastUpdateTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->finishOpeningSoundFile()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Lcom/google/android/music/ringtone/MarkerView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Lcom/google/android/music/ringtone/WaveformView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->queryTrackInfo()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->handlePause()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/music/ringtone/RingtoneEditActivity;Ljava/lang/String;Ljava/io/File;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->afterSavingRingtone(Ljava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateInfoViews()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadingKeepGoing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/music/ringtone/RingtoneEditActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadingKeepGoing:Z

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/music/ringtone/RingtoneEditActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mCanSeekAccurately:Z

    return p1
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->LOGD:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/ringtone/RingtoneEditActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/music/ringtone/RingtoneEditActivity;Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;)Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/ringtone/RingtoneEditActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method private afterSavingRingtone(Ljava/lang/String;Ljava/io/File;I)V
    .registers 6
    .parameter "title"
    .parameter "outFile"
    .parameter "duration"

    .prologue
    .line 1118
    invoke-static {p0, p2, p1}, Lcom/google/android/music/store/MusicRingtoneManager;->insertRingtoneInMediaStore(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)I

    move-result v0

    .line 1119
    .local v0, status:I
    if-nez v0, :cond_12

    .line 1120
    new-instance v1, Lcom/google/android/music/ringtone/RingtoneEditActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/ringtone/RingtoneEditActivity$10;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1139
    :goto_e
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->finish()V

    .line 1140
    return-void

    .line 1129
    :cond_12
    new-instance v1, Lcom/google/android/music/ringtone/RingtoneEditActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/ringtone/RingtoneEditActivity$11;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_e
.end method

.method private finishOpeningSoundFile()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0x64

    .line 728
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    invoke-virtual {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->setSoundFile(Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;)V

    .line 729
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->recomputeHeights()V

    .line 731
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->getmaxPos()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    .line 733
    iput-boolean v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchDragging:Z

    .line 735
    iput v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    .line 736
    iput v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    .line 737
    iput v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    .line 738
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->resetPositions()V

    .line 739
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    if-le v0, v1, :cond_2c

    .line 740
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 742
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    invoke-virtual {v1}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getFiletype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    invoke-virtual {v1}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    invoke-virtual {v1}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getAvgBitrateKbps()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kbps, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mCaption:Ljava/lang/String;

    .line 745
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 748
    return-void
.end method

.method private formatDecimal(D)Ljava/lang/String;
    .registers 10
    .parameter "x"

    .prologue
    const/16 v6, 0xa

    .line 940
    double-to-int v1, p1

    .line 941
    .local v1, xWhole:I
    const-wide/high16 v2, 0x4059

    int-to-double v4, v1

    sub-double v4, p1, v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 943
    .local v0, xFrac:I
    const/16 v2, 0x64

    if-lt v0, v2, :cond_19

    .line 944
    add-int/lit8 v1, v1, 0x1

    .line 945
    add-int/lit8 v0, v0, -0x64

    .line 946
    if-ge v0, v6, :cond_19

    .line 947
    mul-int/lit8 v0, v0, 0xa

    .line 951
    :cond_19
    if-ge v0, v6, :cond_33

    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 954
    :goto_32
    return-object v2

    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_32
.end method

.method private formatTime(I)Ljava/lang/String;
    .registers 4
    .parameter "pixels"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 933
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToSeconds(I)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->formatDecimal(D)Ljava/lang/String;

    move-result-object v0

    .line 935
    :goto_16
    return-object v0

    :cond_17
    const-string v0, ""

    goto :goto_16
.end method

.method private getDefaultRingtoneName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    return-object v0
.end method

.method private getExtensionFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "filename"

    .prologue
    .line 1159
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilenameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1164
    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1165
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_12

    .line 1172
    :goto_11
    return-object v2

    .line 1168
    :cond_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1169
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1172
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_11
.end method

.method private getMinLengthInPixel()I
    .registers 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->millisecsToPixels(I)I

    move-result v0

    return v0
.end method

.method private declared-synchronized handlePause()V
    .registers 3

    .prologue
    .line 958
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 959
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 961
    :cond_12
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->setPlayback(I)V

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mIsPlaying:Z

    .line 963
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updatePlayButtonImage()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 964
    monitor-exit p0

    return-void

    .line 958
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isInAutoScrollRegion(F)Z
    .registers 4
    .parameter "x"

    .prologue
    const/4 v0, 0x1

    .line 499
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWidth:I

    add-int/lit8 v1, v1, -0x28

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_d

    .line 500
    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAutoScrollDirection:I

    .line 506
    :goto_c
    return v0

    .line 502
    :cond_d
    const/high16 v1, 0x4220

    cmpg-float v1, p1, v1

    if-gez v1, :cond_17

    .line 503
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAutoScrollDirection:I

    goto :goto_c

    .line 506
    :cond_17
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private loadFromFile()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 698
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFile:Ljava/io/File;

    .line 699
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getExtensionFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mExtension:Ljava/lang/String;

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadingLastUpdateTime:J

    .line 702
    iput-boolean v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadingKeepGoing:Z

    .line 703
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 704
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 705
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0d00a0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 706
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 707
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/music/ringtone/RingtoneEditActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity$5;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 713
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mCanSeekAccurately:Z

    .line 716
    new-instance v0, Lcom/google/android/music/ringtone/RingtoneEditActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity$6;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 723
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayBackThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 724
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mLoadSongThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 725
    return-void
.end method

.method private loadGui()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 623
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setContentView(I)V

    .line 625
    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/widgets/ActionBarItem;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTopbar:Lcom/google/android/music/widgets/ActionBarItem;

    .line 626
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTopbar:Lcom/google/android/music/widgets/ActionBarItem;

    invoke-virtual {v0, p0}, Lcom/google/android/music/widgets/ActionBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/widgets/ActionBarItem;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mDoneButton:Lcom/google/android/music/widgets/ActionBarItem;

    .line 629
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mDoneButton:Lcom/google/android/music/widgets/ActionBarItem;

    invoke-virtual {v0, p0}, Lcom/google/android/music/widgets/ActionBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    const v0, 0x7f1000cb

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mRewindButton:Landroid/widget/ImageButton;

    .line 632
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mRewindButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->prepButton(Landroid/view/View;)V

    .line 633
    const v0, 0x7f1000cc

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/PlayPauseButton;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayButton:Lcom/google/android/music/PlayPauseButton;

    .line 634
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayButton:Lcom/google/android/music/PlayPauseButton;

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->prepButton(Landroid/view/View;)V

    .line 635
    const v0, 0x7f1000cd

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFfwdButton:Landroid/widget/ImageButton;

    .line 636
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->prepButton(Landroid/view/View;)V

    .line 638
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updatePlayButtonImage()V

    .line 640
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/ringtone/WaveformView;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    .line 641
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/ringtone/WaveformView;->setActivity(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    .line 642
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/ringtone/WaveformView;->setListener(Lcom/google/android/music/ringtone/WaveformView$WaveformListener;)V

    .line 644
    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mInfo:Landroid/widget/TextView;

    .line 645
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    const v0, 0x7f1000d3

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAlbumCover:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 648
    const v0, 0x7f1000d4

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSongNameView:Landroid/widget/TextView;

    .line 649
    const v0, 0x7f1000d5

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mArtistNameView:Landroid/widget/TextView;

    .line 651
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    .line 653
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    if-eqz v0, :cond_bd

    .line 654
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    invoke-virtual {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->setSoundFile(Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;)V

    .line 655
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->recomputeHeights()V

    .line 656
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->getmaxPos()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    .line 659
    :cond_bd
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerWidth:I

    .line 660
    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/ringtone/MarkerView;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    .line 661
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/ringtone/MarkerView;->setListener(Lcom/google/android/music/ringtone/MarkerView$MarkerListener;)V

    .line 662
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/ringtone/MarkerView;->setFocusable(Z)V

    .line 663
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/ringtone/MarkerView;->setFocusableInTouchMode(Z)V

    .line 665
    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/ringtone/MarkerView;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

    .line 666
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/ringtone/MarkerView;->setListener(Lcom/google/android/music/ringtone/MarkerView$MarkerListener;)V

    .line 667
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/ringtone/MarkerView;->setFocusable(Z)V

    .line 668
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/ringtone/MarkerView;->setFocusableInTouchMode(Z)V

    .line 670
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 671
    return-void
.end method

.method private declared-synchronized onPlay(I)V
    .registers 8
    .parameter

    .prologue
    const-wide v4, 0x3f50624dd2f1a9fcL

    .line 967
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mIsPlaying:Z

    if-eqz v0, :cond_f

    .line 968
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->handlePause()V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_c5

    .line 1035
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 972
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_c5

    if-eqz v0, :cond_d

    .line 978
    :try_start_13
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToMillisecs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartMsec:I

    .line 979
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    if-ge p1, v0, :cond_c8

    .line 980
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToMillisecs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayEndMsec:I

    .line 987
    :goto_29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartOffset:I

    .line 989
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartMsec:I

    int-to-double v1, v1

    mul-double/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/ringtone/WaveformView;->secondsToFrames(D)I

    move-result v0

    .line 991
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayEndMsec:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/ringtone/WaveformView;->secondsToFrames(D)I

    move-result v1

    .line 993
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    invoke-virtual {v2, v0}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getSeekableFrameOffset(I)I

    move-result v4

    .line 994
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    invoke-virtual {v0, v1}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->getSeekableFrameOffset(I)I

    move-result v5

    .line 995
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mCanSeekAccurately:Z
    :try_end_4e
    .catchall {:try_start_13 .. :try_end_4e} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4e} :catch_bc

    if-eqz v0, :cond_80

    if-ltz v4, :cond_80

    if-ltz v5, :cond_80

    .line 997
    :try_start_54
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 998
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 999
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    int-to-long v2, v4

    sub-int v4, v5, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1003
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1004
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartMsec:I

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartOffset:I
    :try_end_80
    .catchall {:try_start_54 .. :try_end_80} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_80} :catch_e4

    .line 1015
    :cond_80
    :goto_80
    :try_start_80
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/google/android/music/ringtone/RingtoneEditActivity$7;

    invoke-direct {v1, p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity$7;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mIsPlaying:Z

    .line 1022
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartOffset:I

    if-nez v0, :cond_98

    .line 1023
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartMsec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1025
    :cond_98
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1026
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartOffset:I

    add-int/2addr v0, v1

    .line 1027
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v1, v0}, Lcom/google/android/music/ringtone/WaveformView;->millisecsToPixels(I)I

    move-result v0

    .line 1028
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWidth:I

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalNoUpdate(I)V

    .line 1029
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 1030
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updatePlayButtonImage()V
    :try_end_ba
    .catchall {:try_start_80 .. :try_end_ba} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_ba} :catch_bc

    goto/16 :goto_d

    .line 1031
    :catch_bc
    move-exception v0

    .line 1032
    const v1, 0x7f0d0186

    :try_start_c0
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->showFinalAlert(Ljava/lang/Exception;I)V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c5

    goto/16 :goto_d

    .line 967
    :catchall_c5
    move-exception v0

    monitor-exit p0

    throw v0

    .line 981
    :cond_c8
    :try_start_c8
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    if-le p1, v0, :cond_d8

    .line 982
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToMillisecs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayEndMsec:I

    goto/16 :goto_29

    .line 984
    :cond_d8
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToMillisecs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayEndMsec:I

    goto/16 :goto_29

    .line 1005
    :catch_e4
    move-exception v0

    .line 1006
    const-string v0, "MusicRingtones"

    const-string v1, "Exception trying to play file subset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1008
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1009
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1011
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartOffset:I
    :try_end_10a
    .catchall {:try_start_c8 .. :try_end_10a} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_10a} :catch_bc

    goto/16 :goto_80
.end method

.method private onSave()V
    .registers 2

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mIsPlaying:Z

    if-eqz v0, :cond_7

    .line 1144
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->handlePause()V

    .line 1147
    :cond_7
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getDefaultRingtoneName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->saveRingtone(Ljava/lang/String;)V

    .line 1148
    return-void
.end method

.method private prepButton(Landroid/view/View;)V
    .registers 3
    .parameter "button"

    .prologue
    .line 678
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    new-instance v0, Lcom/google/android/music/FadingColorDrawable;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 680
    return-void
.end method

.method private queryTrackInfo()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1206
    sget-boolean v0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->LOGD:Z

    if-eqz v0, :cond_c

    const-string v0, "MusicRingtones"

    const-string v1, "queryTrackInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_c
    iget-wide v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMusicId:J

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$XAudio;->getAudioUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 1210
    sget-object v2, Lcom/google/android/music/ringtone/RingtoneEditActivity;->sCursorCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1211
    sget-boolean v1, Lcom/google/android/music/ringtone/RingtoneEditActivity;->LOGD:Z

    if-eqz v1, :cond_26

    const-string v1, "MusicRingtones"

    const-string v2, "creating new cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_26
    if-eqz v0, :cond_52

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1213
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTitle:Ljava/lang/String;

    .line 1214
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAlbum:Ljava/lang/String;

    .line 1215
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAlbumId:J

    .line 1216
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mArtist:Ljava/lang/String;

    .line 1217
    new-instance v1, Lcom/google/android/music/ringtone/RingtoneEditActivity$12;

    invoke-direct {v1, p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity$12;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1223
    :cond_52
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1224
    return-void
.end method

.method private resetPositions()V
    .registers 4

    .prologue
    .line 855
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/ringtone/WaveformView;->secondsToPixels(D)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    .line 856
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    const-wide/high16 v1, 0x403e

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/ringtone/WaveformView;->secondsToPixels(D)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 857
    return-void
.end method

.method private saveRingtone(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1070
    invoke-static {p1}, Lcom/google/android/music/store/MusicRingtoneManager;->getRingtoneFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1071
    if-nez v2, :cond_f

    .line 1072
    const-string v0, "MusicRingtones"

    const-string v1, "Failed to create ringtone file for writing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :goto_e
    return-void

    .line 1076
    :cond_f
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToSeconds(I)D

    move-result-wide v0

    .line 1077
    iget-object v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    invoke-virtual {v3, v4}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToSeconds(I)D

    move-result-wide v5

    .line 1078
    iget-object v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/music/ringtone/WaveformView;->secondsToFrames(D)I

    move-result v3

    .line 1079
    iget-object v4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/ringtone/WaveformView;->secondsToFrames(D)I

    move-result v4

    .line 1080
    sub-double v0, v5, v0

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v0, v5

    double-to-int v6, v0

    .line 1083
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1084
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1085
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0180

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1086
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1087
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1088
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1090
    new-instance v0, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/ringtone/RingtoneEditActivity$9;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;Ljava/io/File;IILjava/lang/String;I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    goto :goto_e
.end method

.method private setOffsetGoal(I)V
    .registers 2
    .parameter "offset"

    .prologue
    .line 915
    invoke-direct {p0, p1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalNoUpdate(I)V

    .line 916
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 917
    return-void
.end method

.method private setOffsetGoalEnd()V
    .registers 3

    .prologue
    .line 907
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoal(I)V

    .line 908
    return-void
.end method

.method private setOffsetGoalEndNoUpdate()V
    .registers 3

    .prologue
    .line 911
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalNoUpdate(I)V

    .line 912
    return-void
.end method

.method private setOffsetGoalNoUpdate(I)V
    .registers 5
    .parameter "offset"

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchDragging:Z

    if-eqz v0, :cond_5

    .line 929
    :cond_4
    :goto_4
    return-void

    .line 924
    :cond_5
    iput p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    .line 925
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWidth:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_17

    .line 926
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    .line 927
    :cond_17
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    if-gez v0, :cond_4

    .line 928
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    goto :goto_4
.end method

.method private setOffsetGoalStart()V
    .registers 3

    .prologue
    .line 899
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoal(I)V

    .line 900
    return-void
.end method

.method private setOffsetGoalStartNoUpdate()V
    .registers 3

    .prologue
    .line 903
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalNoUpdate(I)V

    .line 904
    return-void
.end method

.method private shouldHandleTouch(F)Z
    .registers 5
    .parameter "y"

    .prologue
    .line 539
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v1}, Lcom/google/android/music/ringtone/WaveformView;->waveBottom()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v2}, Lcom/google/android/music/ringtone/WaveformView;->waveTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 540
    .local v0, bottom:I
    add-int/lit8 v1, v0, -0x3c

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_17

    .line 541
    const/4 v1, 0x1

    .line 543
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private showFinalAlert(Ljava/lang/Exception;I)V
    .registers 4
    .parameter "e"
    .parameter "messageResourceId"

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->showFinalAlert(Ljava/lang/Exception;Ljava/lang/CharSequence;)V

    .line 1039
    return-void
.end method

.method private showFinalAlert(Ljava/lang/Exception;Ljava/lang/CharSequence;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1048
    if-eqz p1, :cond_40

    .line 1049
    const-string v0, "Ringdroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 1055
    :goto_23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    new-instance v2, Lcom/google/android/music/ringtone/RingtoneEditActivity$8;

    invoke-direct {v2, p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity$8;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1067
    return-void

    .line 1052
    :cond_40
    const-string v0, "Ringdroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private trap(I)I
    .registers 4
    .parameter "pos"

    .prologue
    const/16 v0, -0x64

    .line 865
    if-ge p1, v0, :cond_6

    move p1, v0

    .line 869
    .end local p1
    :cond_5
    :goto_5
    return p1

    .line 867
    .restart local p1
    :cond_6
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    add-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWidth:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_5

    .line 868
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    add-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWidth:I

    sub-int p1, v0, v1

    goto :goto_5
.end method

.method private trapMarker(I)I
    .registers 3
    .parameter "pos"

    .prologue
    .line 878
    if-gez p1, :cond_4

    .line 879
    const/4 p1, 0x0

    .line 882
    .end local p1
    :cond_3
    :goto_3
    return p1

    .line 880
    .restart local p1
    :cond_4
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    if-le p1, v0, :cond_3

    .line 881
    iget p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    goto :goto_3
.end method

.method private trapStartMarker(I)I
    .registers 4
    .parameter "pos"

    .prologue
    .line 891
    if-gez p1, :cond_4

    .line 892
    const/4 p1, 0x0

    .line 895
    .end local p1
    :cond_3
    :goto_3
    return p1

    .line 893
    .restart local p1
    :cond_4
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getMinLengthInPixel()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_3

    .line 894
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getMinLengthInPixel()I

    move-result v1

    sub-int p1, v0, v1

    goto :goto_3
.end method

.method private declared-synchronized updateDisplay()V
    .registers 11

    .prologue
    .line 752
    monitor-enter p0

    :try_start_1
    iget-boolean v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mIsPlaying:Z

    if-eqz v6, :cond_21

    .line 753
    iget-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    iget v7, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartOffset:I

    add-int v2, v6, v7

    .line 754
    .local v2, now:I
    iget-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v6, v2}, Lcom/google/android/music/ringtone/WaveformView;->millisecsToPixels(I)I

    move-result v1

    .line 755
    .local v1, frames:I
    iget-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v6, v1}, Lcom/google/android/music/ringtone/WaveformView;->setPlayback(I)V

    .line 756
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayEndMsec:I

    if-lt v2, v6, :cond_21

    .line 757
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->handlePause()V

    .line 761
    .end local v1           #frames:I
    .end local v2           #now:I
    :cond_21
    iget-boolean v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAutoScrollOnEdge:Z

    if-eqz v6, :cond_5d

    .line 762
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAutoScrollDirection:I

    mul-int/lit8 v5, v6, 0xa

    .line 763
    .local v5, step:I
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    add-int v0, v6, v5

    .line 764
    .local v0, expectStart:I
    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->trapStartMarker(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    .line 766
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    .line 767
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    add-int/2addr v6, v5

    invoke-direct {p0, v6}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->trapMarker(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 768
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    if-eq v6, v0, :cond_48

    .line 770
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAutoScrollOnEdge:Z

    .line 811
    .end local v0           #expectStart:I
    .end local v5           #step:I
    :cond_48
    :goto_48
    iget-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v7, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    iget v8, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iget v9, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/music/ringtone/WaveformView;->setParameters(III)V

    .line 812
    iget-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v6}, Lcom/google/android/music/ringtone/WaveformView;->invalidate()V

    .line 814
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateMarkers()V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_8b

    .line 815
    monitor-exit p0

    return-void

    .line 772
    :cond_5d
    :try_start_5d
    iget-boolean v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchDragging:Z

    if-nez v6, :cond_48

    .line 775
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    if-eqz v6, :cond_9f

    .line 776
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    div-int/lit8 v4, v6, 0x1e

    .line 777
    .local v4, offsetDelta:I
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    const/16 v7, 0x50

    if-le v6, v7, :cond_8e

    .line 778
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    add-int/lit8 v6, v6, -0x50

    iput v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    .line 787
    :goto_75
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    add-int v3, v6, v4

    .line 788
    .local v3, offset:I
    invoke-direct {p0, v3}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->trap(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    .line 789
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    if-eq v6, v3, :cond_86

    .line 790
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    .line 792
    :cond_86
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    iput v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I
    :try_end_8a
    .catchall {:try_start_5d .. :try_end_8a} :catchall_8b

    goto :goto_48

    .line 752
    .end local v3           #offset:I
    .end local v4           #offsetDelta:I
    :catchall_8b
    move-exception v6

    monitor-exit p0

    throw v6

    .line 779
    .restart local v4       #offsetDelta:I
    :cond_8e
    :try_start_8e
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    const/16 v7, -0x50

    if-ge v6, v7, :cond_9b

    .line 780
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    add-int/lit8 v6, v6, 0x50

    iput v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    goto :goto_75

    .line 782
    :cond_9b
    const/4 v6, 0x0

    iput v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    goto :goto_75

    .line 794
    .end local v4           #offsetDelta:I
    :cond_9f
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    iget v7, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    sub-int v4, v6, v7

    .line 796
    .restart local v4       #offsetDelta:I
    const/16 v6, 0xa

    if-le v4, v6, :cond_b1

    .line 797
    div-int/lit8 v4, v4, 0xa

    .line 807
    :goto_ab
    iget v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    goto :goto_48

    .line 798
    :cond_b1
    if-lez v4, :cond_b5

    .line 799
    const/4 v4, 0x1

    goto :goto_ab

    .line 800
    :cond_b5
    const/16 v6, -0xa

    if-ge v4, v6, :cond_bc

    .line 801
    div-int/lit8 v4, v4, 0xa
    :try_end_bb
    .catchall {:try_start_8e .. :try_end_bb} :catchall_8b

    goto :goto_ab

    .line 802
    :cond_bc
    if-gez v4, :cond_c0

    .line 803
    const/4 v4, -0x1

    goto :goto_ab

    .line 805
    :cond_c0
    const/4 v4, 0x0

    goto :goto_ab
.end method

.method private updateInfoViews()V
    .registers 7

    .prologue
    .line 686
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSongNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mArtistNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAlbumCover:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-wide v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAlbumId:J

    iget-object v4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAlbum:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTitle:Ljava/lang/String;

    .line 691
    .local v0, titleLabel:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_40

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    :cond_40
    invoke-virtual {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 695
    return-void
.end method

.method private updateMarkers()V
    .registers 8

    .prologue
    .line 818
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0181

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    invoke-direct {p0, v4}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/ringtone/MarkerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0182

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    invoke-direct {p0, v4}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->formatTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/ringtone/MarkerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 825
    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    iget v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {v3}, Lcom/google/android/music/ringtone/MarkerView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 826
    .local v1, startX:I
    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iget v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {v3}, Lcom/google/android/music/ringtone/MarkerView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 827
    .local v0, endX:I
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v2}, Lcom/google/android/music/ringtone/WaveformView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v3, v3, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerHeight:I

    .line 828
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerWidth:I

    iget v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerHeight:I

    iget-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v6, v6, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    invoke-direct {v3, v4, v5, v1, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/ringtone/MarkerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerWidth:I

    iget v5, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerHeight:I

    iget-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v6, v6, Lcom/google/android/music/ringtone/WaveformView;->sBorderYOffset:I

    invoke-direct {v3, v4, v5, v0, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/ringtone/MarkerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    return-void
.end method

.method private updatePlayButtonImage()V
    .registers 3

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mIsPlaying:Z

    if-eqz v0, :cond_b

    .line 845
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    .line 849
    :goto_a
    return-void

    .line 847
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    goto :goto_a
.end method


# virtual methods
.method getMarkerTouched()Z
    .registers 2

    .prologue
    .line 1236
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerTouched:Z

    return v0
.end method

.method public markerDraw()V
    .registers 1

    .prologue
    .line 450
    return-void
.end method

.method public markerEnter(Lcom/google/android/music/ringtone/MarkerView;)V
    .registers 2
    .parameter "marker"

    .prologue
    .line 597
    return-void
.end method

.method public markerFocus(Lcom/google/android/music/ringtone/MarkerView;)V
    .registers 3
    .parameter "marker"

    .prologue
    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mKeyDown:Z

    .line 606
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    if-ne p1, v0, :cond_e

    .line 607
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalStartNoUpdate()V

    .line 612
    :goto_a
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 613
    return-void

    .line 609
    :cond_e
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalEndNoUpdate()V

    goto :goto_a
.end method

.method public markerKeyUp()V
    .registers 2

    .prologue
    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mKeyDown:Z

    .line 601
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 602
    return-void
.end method

.method public markerLeft(Lcom/google/android/music/ringtone/MarkerView;I)V
    .registers 6
    .parameter "marker"
    .parameter "velocity"

    .prologue
    .line 547
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mKeyDown:Z

    .line 549
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    if-ne p1, v1, :cond_22

    .line 550
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    .line 551
    .local v0, saveStart:I
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->trap(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    .line 552
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    sub-int v2, v0, v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->trap(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 553
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalStart()V

    .line 556
    .end local v0           #saveStart:I
    :cond_22
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

    if-ne p1, v1, :cond_3c

    .line 557
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    if-ne v1, v2, :cond_40

    .line 558
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->trap(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    .line 559
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 564
    :goto_39
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalEnd()V

    .line 567
    :cond_3c
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 568
    return-void

    .line 561
    :cond_40
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->trap(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    goto :goto_39
.end method

.method public markerRight(Lcom/google/android/music/ringtone/MarkerView;I)V
    .registers 6
    .parameter "marker"
    .parameter "velocity"

    .prologue
    .line 571
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mKeyDown:Z

    .line 573
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    if-ne p1, v1, :cond_2d

    .line 574
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    .line 575
    .local v0, saveStart:I
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    .line 576
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    if-le v1, v2, :cond_18

    .line 577
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    .line 578
    :cond_18
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 579
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    if-le v1, v2, :cond_2a

    .line 580
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 582
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalStart()V

    .line 585
    .end local v0           #saveStart:I
    :cond_2d
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

    if-ne p1, v1, :cond_43

    .line 586
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 587
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    if-le v1, v2, :cond_40

    .line 588
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 590
    :cond_40
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalEnd()V

    .line 593
    :cond_43
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 594
    return-void
.end method

.method public markerTouchEnd(Lcom/google/android/music/ringtone/MarkerView;F)Z
    .registers 4
    .parameter "marker"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 519
    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchDragging:Z

    .line 520
    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerTouched:Z

    .line 521
    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAutoScrollOnEdge:Z

    .line 522
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    if-ne p1, v0, :cond_10

    .line 523
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalStart()V

    .line 527
    :goto_e
    const/4 v0, 0x1

    return v0

    .line 525
    :cond_10
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->setOffsetGoalEnd()V

    goto :goto_e
.end method

.method public markerTouchMove(Lcom/google/android/music/ringtone/MarkerView;FF)Z
    .registers 10
    .parameter "marker"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 467
    invoke-direct {p0, p3}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->shouldHandleTouch(F)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v2, 0x0

    .line 488
    :cond_8
    :goto_8
    return v2

    .line 469
    :cond_9
    iget v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchStart:F

    sub-float v0, p2, v3

    .line 471
    .local v0, delta:F
    iget-object v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    if-ne p1, v3, :cond_39

    .line 472
    invoke-direct {p0, p2}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->isInAutoScrollRegion(F)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAutoScrollOnEdge:Z

    .line 473
    iget-boolean v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mAutoScrollOnEdge:Z

    if-nez v3, :cond_8

    .line 475
    iget v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchInitialStartPos:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v1, v3

    .line 476
    .local v1, expectStart:I
    invoke-direct {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->trapStartMarker(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    .line 477
    iget v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    if-ne v3, v1, :cond_35

    .line 479
    iget v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchInitialEndPos:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->trapMarker(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 487
    .end local v1           #expectStart:I
    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    goto :goto_8

    .line 482
    :cond_39
    iget v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchInitialEndPos:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->trapMarker(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 483
    iget v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iget v4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getMinLengthInPixel()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_35

    .line 484
    iget v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getMinLengthInPixel()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    goto :goto_35
.end method

.method public markerTouchStart(Lcom/google/android/music/ringtone/MarkerView;FF)Z
    .registers 6
    .parameter "marker"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 454
    invoke-direct {p0, p3}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->shouldHandleTouch(F)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    .line 462
    :goto_8
    return v0

    .line 456
    :cond_9
    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchDragging:Z

    .line 457
    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMarkerTouched:Z

    .line 458
    iput p2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchStart:F

    .line 459
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchInitialStartPos:I

    .line 460
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchInitialEndPos:I

    goto :goto_8
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "dataIntent"

    .prologue
    .line 292
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 322
    :cond_3
    :goto_3
    return-void

    .line 300
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 304
    const/4 v0, -0x1

    if-eq p2, v0, :cond_e

    .line 305
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->finish()V

    goto :goto_3

    .line 309
    :cond_e
    if-nez p3, :cond_14

    .line 310
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->finish()V

    goto :goto_3

    .line 318
    :cond_14
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mRecordingUri:Landroid/net/Uri;

    .line 319
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mRecordingUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getFilenameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mRecordingFilename:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mRecordingFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFilename:Ljava/lang/String;

    .line 321
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->loadFromFile()V

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1176
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTopbar:Lcom/google/android/music/widgets/ActionBarItem;

    if-ne p1, v1, :cond_8

    .line 1177
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->finish()V

    .line 1203
    :cond_7
    :goto_7
    return-void

    .line 1178
    :cond_8
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mDoneButton:Lcom/google/android/music/widgets/ActionBarItem;

    if-ne p1, v1, :cond_10

    .line 1179
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->onSave()V

    goto :goto_7

    .line 1180
    :cond_10
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mRewindButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_37

    .line 1181
    iget-boolean v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mIsPlaying:Z

    if-eqz v1, :cond_2c

    .line 1182
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v0, v1, -0x1388

    .line 1183
    .local v0, newPos:I
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartMsec:I

    if-ge v0, v1, :cond_26

    .line 1184
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartMsec:I

    .line 1185
    :cond_26
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_7

    .line 1187
    .end local v0           #newPos:I
    :cond_2c
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {v1}, Lcom/google/android/music/ringtone/MarkerView;->requestFocus()Z

    .line 1188
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->markerFocus(Lcom/google/android/music/ringtone/MarkerView;)V

    goto :goto_7

    .line 1190
    :cond_37
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayButton:Lcom/google/android/music/PlayPauseButton;

    if-ne p1, v1, :cond_41

    .line 1191
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    invoke-direct {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->onPlay(I)V

    goto :goto_7

    .line 1192
    :cond_41
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFfwdButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_7

    .line 1193
    iget-boolean v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mIsPlaying:Z

    if-eqz v1, :cond_5d

    .line 1194
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v0, v1, 0x1388

    .line 1195
    .restart local v0       #newPos:I
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayEndMsec:I

    if-le v0, v1, :cond_57

    .line 1196
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayEndMsec:I

    .line 1197
    :cond_57
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_7

    .line 1199
    .end local v0           #newPos:I
    :cond_5d
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {v1}, Lcom/google/android/music/ringtone/MarkerView;->requestFocus()Z

    .line 1200
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mResizeMarker:Lcom/google/android/music/ringtone/MarkerView;

    invoke-virtual {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->markerFocus(Lcom/google/android/music/ringtone/MarkerView;)V

    goto :goto_7
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter "newConfig"

    .prologue
    .line 330
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v2}, Lcom/google/android/music/ringtone/WaveformView;->getZoomFactor()D

    move-result-wide v0

    .line 331
    .local v0, saveZoomLevel:D
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 333
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->loadGui()V

    .line 334
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateInfoViews()V

    .line 336
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/music/ringtone/RingtoneEditActivity$4;

    invoke-direct {v3, p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity$4;-><init>(Lcom/google/android/music/ringtone/RingtoneEditActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 247
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->requestWindowFeature(I)Z

    .line 248
    iput-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mRecordingFilename:Ljava/lang/String;

    .line 249
    iput-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mRecordingUri:Landroid/net/Uri;

    .line 250
    iput-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 251
    iput-boolean v7, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mIsPlaying:Z

    .line 253
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 254
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFilename:Ljava/lang/String;

    .line 255
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 256
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_49

    .line 257
    const-string v2, "musicId"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMusicId:J

    .line 258
    const-string v2, "MusicRingtones"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get music id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMusicId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_49
    iput-object v6, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mSoundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    .line 262
    iput-boolean v7, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mKeyDown:Z

    .line 264
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mHandler:Landroid/os/Handler;

    .line 265
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->loadGui()V

    .line 267
    iget-object v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFilename:Ljava/lang/String;

    const-string v3, "record"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 268
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->loadFromFile()V

    .line 270
    :cond_64
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 352
    const v0, 0x7f0d0007

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 353
    const/4 v0, 0x2

    const v1, 0x7f0d0183

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 354
    return v3
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 275
    const-string v0, "Ringdroid"

    const-string v1, "EditActivity OnDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 278
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 280
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 281
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_24

    .line 282
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 284
    :cond_24
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 285
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 375
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_b

    .line 376
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->onPlay(I)V

    .line 377
    const/4 v0, 0x1

    .line 380
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_18

    move v0, v1

    .line 369
    :goto_a
    return v0

    .line 361
    :pswitch_b
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->onSave()V

    goto :goto_a

    .line 364
    :pswitch_f
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->resetPositions()V

    .line 365
    iput v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    .line 366
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    goto :goto_a

    .line 359
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method updatePosition()V
    .registers 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->getStart()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mStartPos:I

    .line 1228
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->getEnd()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mEndPos:I

    .line 1229
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->getmaxPos()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mMaxPos:I

    .line 1230
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    .line 1231
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    .line 1232
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 1233
    return-void
.end method

.method public waveformDoubleClick(FF)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 424
    iget-boolean v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mIsPlaying:Z

    if-eqz v1, :cond_25

    .line 425
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/ringtone/WaveformView;->pixelsToMillisecs(I)I

    move-result v0

    .line 427
    .local v0, seekMsec:I
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartMsec:I

    if-lt v0, v1, :cond_21

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayEndMsec:I

    if-ge v0, v1, :cond_21

    .line 429
    iget-object v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mPlayStartOffset:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 436
    .end local v0           #seekMsec:I
    :goto_20
    return-void

    .line 431
    .restart local v0       #seekMsec:I
    :cond_21
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->handlePause()V

    goto :goto_20

    .line 434
    .end local v0           #seekMsec:I
    :cond_25
    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->onPlay(I)V

    goto :goto_20
.end method

.method public waveformDraw()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWaveformView:Lcom/google/android/music/ringtone/WaveformView;

    invoke-virtual {v0}, Lcom/google/android/music/ringtone/WaveformView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mWidth:I

    .line 393
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    if-eq v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mKeyDown:Z

    if-nez v0, :cond_16

    .line 394
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 400
    :cond_15
    :goto_15
    return-void

    .line 395
    :cond_16
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mIsPlaying:Z

    if-eqz v0, :cond_1e

    .line 396
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    goto :goto_15

    .line 397
    :cond_1e
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    if-eqz v0, :cond_15

    .line 398
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    goto :goto_15
.end method

.method public waveformFling(F)V
    .registers 3
    .parameter "vx"

    .prologue
    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchDragging:Z

    .line 440
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    .line 441
    neg-float v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    .line 442
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 443
    return-void
.end method

.method public waveformTouchEnd()V
    .registers 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchDragging:Z

    if-eqz v0, :cond_8

    .line 418
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffsetGoal:I

    .line 420
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchDragging:Z

    .line 421
    return-void
.end method

.method public waveformTouchMove(F)V
    .registers 4
    .parameter "x"

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchDragging:Z

    if-eqz v0, :cond_15

    .line 411
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchInitialOffset:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchStart:F

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->trap(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    .line 412
    invoke-direct {p0}, Lcom/google/android/music/ringtone/RingtoneEditActivity;->updateDisplay()V

    .line 414
    :cond_15
    return-void
.end method

.method public waveformTouchStart(F)V
    .registers 3
    .parameter "x"

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchDragging:Z

    .line 404
    iput p1, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchStart:F

    .line 405
    iget v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mOffset:I

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mTouchInitialOffset:I

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/ringtone/RingtoneEditActivity;->mFlingVelocity:I

    .line 407
    return-void
.end method

.class Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EffectSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;,
        Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;
    }
.end annotation


# static fields
.field private static final sResizePaint:Landroid/graphics/Paint;


# instance fields
.field private final MAX_THUMBNAIL_PERMITTED:I

.field private mAudioSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioSettings;

.field private mAudioTrackPCMFilePath:Ljava/lang/String;

.field private mClipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

.field mEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mErrorFlagSet:Z

.field private mExportFilename:Ljava/lang/String;

.field private mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

.field public mInvalidatePreviewArray:Z

.field private mIsAbortGeneratePreviewInBGCalled:Z

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mManualEditContext:I

.field private mOutputFilename:Ljava/lang/String;

.field private mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

.field mPreviewEffectsSize:I

.field private mPreviewProgress:J

.field private mProcessingObject:Ljava/lang/Object;

.field private mProcessingState:I

.field private mProgressToApp:I

.field private final mProjectPath:Ljava/lang/String;

.field private mRegenerateAudio:Z

.field public mStoryBoardSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

.field private mTotalClips:I

.field mTotalKenBurnClips:I

.field mTotalTransitions:I

.field private final mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 72
    const-string v0, "/system/lib/liblifevibes_mediashare_jni.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Lcom/lifevibes/videoeditor/VideoEditor;)V
    .registers 10
    .parameter "projectPath"
    .parameter "lock"
    .parameter "veObj"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1928
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipList:Ljava/util/List;

    .line 76
    const/16 v1, 0x8

    iput v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->MAX_THUMBNAIL_PERMITTED:I

    .line 94
    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    .line 96
    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    .line 100
    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mAudioSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AudioSettings;

    .line 103
    iput-boolean v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mInvalidatePreviewArray:Z

    .line 105
    iput-boolean v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mRegenerateAudio:Z

    .line 107
    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    .line 135
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewProgress:J

    .line 137
    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 139
    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 141
    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEffectsSize:I

    .line 142
    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalTransitions:I

    .line 143
    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalKenBurnClips:I

    .line 145
    iput-boolean v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mErrorFlagSet:Z

    .line 147
    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mManualEditContext:I

    .line 150
    iput-boolean v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mIsAbortGeneratePreviewInBGCalled:Z

    .line 1929
    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    .line 1930
    if-eqz p3, :cond_89

    .line 1931
    iput-object p3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    .line 1936
    iget-object v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    if-nez v1, :cond_42

    .line 1937
    new-instance v1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v1}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    iput-object v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mStoryBoardSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    .line 1940
    :cond_42
    iput-object p2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mLock:Ljava/util/concurrent/Semaphore;

    .line 1942
    iget-object v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProjectPath:Ljava/lang/String;

    const-string v2, "null"

    invoke-direct {p0, v1, v2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->_init(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mAudioTrackPCMFilePath:Ljava/lang/String;

    .line 1944
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getVersion()Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;

    move-result-object v0

    .line 1945
    .local v0, version:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;
    const-string v1, "MediaArtistNativeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoEditor Version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;->major:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;->minor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;->revision:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    .line 1948
    invoke-direct {p0, v4, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->onProgressUpdate(II)V

    .line 1949
    return-void

    .line 1933
    .end local v0           #version:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;
    :cond_89
    iput-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    .line 1934
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "video editor object is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private native _init(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private findVideoResolution(II)I
    .registers 9
    .parameter "aspectRatio"
    .parameter "height"

    .prologue
    const/16 v5, 0x2d0

    const/16 v4, 0x1e0

    .line 3146
    const/4 v2, -0x1

    .line 3147
    .local v2, retValue:I
    packed-switch p1, :pswitch_data_7a

    .line 3187
    :cond_8
    :goto_8
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    .line 3188
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    invoke-interface {v3}, Lcom/lifevibes/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v3

    invoke-static {v3}, Lcom/lifevibes/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v1

    .line 3190
    .local v1, resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v1, v3

    .line 3191
    .local v0, maxResolution:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    invoke-interface {v3}, Lcom/lifevibes/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v4

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v3}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v2

    .line 3194
    .end local v0           #maxResolution:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1           #resolutions:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2c
    return v2

    .line 3149
    :pswitch_2d
    if-ne p2, v4, :cond_31

    .line 3150
    const/4 v2, 0x7

    goto :goto_8

    .line 3151
    :cond_31
    if-ne p2, v5, :cond_8

    .line 3152
    const/16 v2, 0xb

    goto :goto_8

    .line 3155
    :pswitch_36
    if-ne p2, v4, :cond_3b

    .line 3156
    const/16 v2, 0x9

    goto :goto_8

    .line 3157
    :cond_3b
    if-ne p2, v5, :cond_40

    .line 3158
    const/16 v2, 0xa

    goto :goto_8

    .line 3159
    :cond_40
    const/16 v3, 0x438

    if-ne p2, v3, :cond_47

    .line 3160
    const/16 v2, 0xd

    goto :goto_8

    .line 3161
    :cond_47
    const/16 v3, 0x168

    if-ne p2, v3, :cond_8

    .line 3162
    const/16 v2, 0x8

    goto :goto_8

    .line 3165
    :pswitch_4e
    const/16 v3, 0x60

    if-ne p2, v3, :cond_54

    .line 3166
    const/4 v2, 0x0

    goto :goto_8

    .line 3167
    :cond_54
    const/16 v3, 0x78

    if-ne p2, v3, :cond_5a

    .line 3168
    const/4 v2, 0x1

    goto :goto_8

    .line 3169
    :cond_5a
    const/16 v3, 0xf0

    if-ne p2, v3, :cond_60

    .line 3170
    const/4 v2, 0x3

    goto :goto_8

    .line 3171
    :cond_60
    if-ne p2, v4, :cond_64

    .line 3172
    const/4 v2, 0x5

    goto :goto_8

    .line 3173
    :cond_64
    if-ne p2, v5, :cond_8

    .line 3174
    const/16 v2, 0xc

    goto :goto_8

    .line 3177
    :pswitch_69
    if-ne p2, v4, :cond_8

    .line 3178
    const/4 v2, 0x6

    goto :goto_8

    .line 3181
    :pswitch_6d
    const/16 v3, 0x90

    if-ne p2, v3, :cond_73

    .line 3182
    const/4 v2, 0x2

    goto :goto_8

    .line 3183
    :cond_73
    const/16 v3, 0x120

    if-ne p2, v3, :cond_8

    .line 3184
    const/4 v2, 0x4

    goto :goto_8

    .line 3147
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_36
        :pswitch_4e
        :pswitch_69
        :pswitch_6d
    .end packed-switch
.end method

.method private getMediaItemProperties(Ljava/util/List;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lifevibes/videoeditor/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mediaItemsList:Ljava/util/List;,"Ljava/util/List<Lcom/lifevibes/videoeditor/MediaItem;>;"
    const/16 v12, 0x64

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2056
    iput v9, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 2058
    new-instance v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    iput-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    .line 2059
    new-instance v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    invoke-direct {v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;-><init>()V

    iput-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    .line 2060
    new-array v1, v11, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 2061
    .local v1, clipSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;
    new-instance v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 2062
    .local v0, clipSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;
    const/4 v3, 0x0

    .line 2064
    .local v3, lMediaItem:Lcom/lifevibes/videoeditor/MediaVideoItem;
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/lifevibes/videoeditor/MediaVideoItem;

    if-nez v4, :cond_2d

    .line 2065
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Not a media video item"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2068
    :cond_2d
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #lMediaItem:Lcom/lifevibes/videoeditor/MediaVideoItem;
    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    .line 2069
    .restart local v3       #lMediaItem:Lcom/lifevibes/videoeditor/MediaVideoItem;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    .line 2071
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-array v5, v5, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 2072
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    new-array v5, v9, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 2073
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iput-object v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 2074
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 2075
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput v12, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->primaryTrackVolume:I

    .line 2076
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    new-array v5, v5, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    iput-object v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    .line 2078
    invoke-virtual {p0, v0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->initClipSettings(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    .line 2079
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2080
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFileType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaItemFileType(I)I

    move-result v4

    iput v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 2083
    :try_start_75
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaProperties(Ljava/lang/String;)Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_84} :catch_129

    .line 2088
    new-array v4, v11, [I

    iput-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    .line 2089
    new-array v4, v11, [I

    iput-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    .line 2091
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->isExcludeCalled()Z

    move-result v4

    if-eqz v4, :cond_132

    .line 2092
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getExcludeEndTime()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getExcludeBeginTime()J

    move-result-wide v7

    long-to-int v7, v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    .line 2095
    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    aput v9, v4, v9

    .line 2096
    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getExcludeBeginTime()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v9

    .line 2097
    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getExcludeEndTime()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v10

    .line 2098
    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v4, v10

    .line 2099
    iput v11, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->mNumCuts:I

    .line 2101
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v4, :cond_ea

    .line 2102
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v9

    iget v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    .line 2105
    :cond_ea
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v4, :cond_104

    .line 2106
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v9

    iget v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    .line 2124
    :cond_104
    :goto_104
    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getRenderingMode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v4

    iput v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 2125
    iput v12, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipVolumePercentage:I

    .line 2127
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;

    aput-object v0, v4, v9

    .line 2129
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    invoke-interface {v5}, Lcom/lifevibes/videoeditor/VideoEditor;->getAspectRatio()I

    move-result v5

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v5

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2132
    return-void

    .line 2085
    :catch_129
    move-exception v2

    .line 2086
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported file or file not found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2110
    .end local v2           #e:Ljava/lang/Exception;
    :cond_132
    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v4, v9

    .line 2111
    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    aput v9, v4, v10

    .line 2112
    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v4, v9

    .line 2113
    iget-object v4, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    aput v9, v4, v10

    .line 2114
    iput v10, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->mNumCuts:I

    .line 2115
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget-object v5, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayEndCutTime:[I

    aget v5, v5, v9

    iget-object v6, v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->arrayBeginCutTime:[I

    aget v6, v6, v9

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    .line 2116
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    if-eqz v4, :cond_179

    .line 2117
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v9

    iget v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->videoDuration:I

    .line 2120
    :cond_179
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    if-eqz v4, :cond_104

    .line 2121
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v4, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mClipProperties:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;

    iget-object v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$PreviewClipProperties;->clipProperties:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;

    aget-object v5, v5, v9

    iget v5, v5, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->duration:I

    iput v5, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;->audioDuration:I

    goto/16 :goto_104
.end method

.method private native getVersion()Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Version;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeGenerateClip(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native nativeGetPixels(Ljava/lang/String;IIJLjava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method private onProgressUpdate(II)V
    .registers 7
    .parameter "taskId"
    .parameter "progress"

    .prologue
    .line 1977
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_21

    .line 1978
    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    if-eqz v0, :cond_21

    .line 1979
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_21

    .line 1980
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    if-gt v0, p2, :cond_22

    .line 1981
    iput p2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 1989
    :goto_16
    iget-object v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    iget-object v1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mVideoEditor:Lcom/lifevibes/videoeditor/VideoEditor;

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    iget v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    invoke-interface {v0, v1, v2, v3}, Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;->onProgress(Lcom/lifevibes/videoeditor/VideoEditor;Ljava/lang/String;I)V

    .line 1994
    :cond_21
    return-void

    .line 1983
    :cond_22
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_21

    .line 1984
    iget v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    goto :goto_16
.end method

.method private native release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native stopEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method


# virtual methods
.method GetClosestVideoFrameRate(I)I
    .registers 7
    .parameter "averageFrameRate"

    .prologue
    const/4 v0, 0x5

    .line 2799
    const/16 v1, 0x19

    if-le p1, v1, :cond_7

    .line 2800
    const/4 v0, 0x7

    .line 2814
    :cond_6
    :goto_6
    return v0

    .line 2801
    :cond_7
    const/16 v1, 0x14

    if-le p1, v1, :cond_d

    .line 2802
    const/4 v0, 0x6

    goto :goto_6

    .line 2803
    :cond_d
    const/16 v1, 0xf

    if-gt p1, v1, :cond_6

    .line 2805
    int-to-double v1, p1

    const-wide/high16 v3, 0x4029

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1a

    .line 2806
    const/4 v0, 0x4

    goto :goto_6

    .line 2807
    :cond_1a
    const/16 v1, 0xa

    if-le p1, v1, :cond_20

    .line 2808
    const/4 v0, 0x3

    goto :goto_6

    .line 2809
    :cond_20
    int-to-double v1, p1

    const-wide/high16 v3, 0x401e

    cmpl-double v1, v1, v3

    if-lez v1, :cond_29

    .line 2810
    const/4 v0, 0x2

    goto :goto_6

    .line 2811
    :cond_29
    if-le p1, v0, :cond_2d

    .line 2812
    const/4 v0, 0x1

    goto :goto_6

    .line 2814
    :cond_2d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method export(Ljava/lang/String;Ljava/lang/String;Lcom/lifevibes/videoeditor/MediaItem;Ljava/util/List;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    .registers 12
    .parameter "filePath"
    .parameter "projectDir"
    .parameter "maxDurationMediaItem"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lifevibes/videoeditor/MediaItem;",
            "Ljava/util/List",
            "<",
            "Lcom/lifevibes/videoeditor/MediaItem;",
            ">;",
            "Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2643
    .local p4, mediaItemsList:Ljava/util/List;,"Ljava/util/List<Lcom/lifevibes/videoeditor/MediaItem;>;"
    if-eqz p5, :cond_4

    .line 2644
    iput-object p5, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    .line 2646
    :cond_4
    invoke-direct {p0, p4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getMediaItemProperties(Ljava/util/List;)V

    .line 2647
    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    .line 2648
    const/4 v3, 0x0

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProgressToApp:I

    .line 2649
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v3, p3

    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getFps()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->GetClosestVideoFrameRate(I)I

    move-result v3

    iput v3, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2650
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x0

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoRenderingType:I

    .line 2651
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iput-object p1, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mOutputFilename:Ljava/lang/String;

    iput-object p1, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->outputFile:Ljava/lang/String;

    .line 2652
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-virtual {p3}, Lcom/lifevibes/videoeditor/MediaItem;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Lcom/lifevibes/videoeditor/MediaItem;->getHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v4

    invoke-virtual {p3}, Lcom/lifevibes/videoeditor/MediaItem;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->findVideoResolution(II)I

    move-result v4

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameSize:I

    .line 2653
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v3, p3

    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoBitrate()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getClosestVideoBitrate(I)I

    move-result v3

    iput v3, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    move-object v3, p3

    .line 2656
    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getVideoType()I

    move-result v3

    packed-switch v3, :pswitch_data_1e2

    .line 2673
    :pswitch_57
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument Video codec NOT Supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2658
    :pswitch_5f
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x1

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    .line 2677
    :goto_64
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v3, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_80

    .line 2678
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x4

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFrameRate:I

    .line 2679
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v3, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    const v4, 0x5dc00

    if-le v3, v4, :cond_80

    .line 2680
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const v4, 0x5dc00

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoBitrate:I

    :cond_80
    move-object v3, p3

    .line 2684
    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioType()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_94

    move-object v3, p3

    .line 2685
    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioType()I

    move-result v3

    packed-switch v3, :pswitch_data_1f2

    .line 2712
    .end local p3
    :cond_94
    :goto_94
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x0

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->maxFileSize:I

    .line 2713
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iput-object v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 2714
    const/4 v2, 0x0

    .local v2, index:I
    :goto_a4
    iget v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mTotalClips:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_190

    .line 2715
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v3, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    new-instance v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    invoke-direct {v4}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;-><init>()V

    aput-object v4, v3, v2

    .line 2716
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v3, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 2718
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    iget-object v3, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 2714
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    .line 2661
    .end local v2           #index:I
    .restart local p3
    :pswitch_ca
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x4

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto :goto_64

    .line 2664
    :pswitch_d0
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x5

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto :goto_64

    .line 2667
    :pswitch_d6
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x6

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto :goto_64

    .line 2670
    :pswitch_dc
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x2

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->videoFormat:I

    goto :goto_64

    .line 2687
    :pswitch_e2
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x2

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2688
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v3, p3

    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioBitrate()I

    move-result v3

    iput v3, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2689
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    move-object v3, p3

    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioSamplingFrequency()I

    move-result v3

    iput v3, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2690
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    check-cast p3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    .end local p3
    invoke-virtual {p3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioChannels()I

    move-result v4

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    goto :goto_94

    .line 2693
    .restart local p3
    :pswitch_108
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x1

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2694
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v4, 0x2fa8

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2695
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/16 v4, 0x1f40

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2696
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x1

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    goto/16 :goto_94

    .line 2699
    :pswitch_120
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x3

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2700
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v3, 0x0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioBitrate()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getClosestAudioBitrate(I)I

    move-result v3

    iput v3, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2701
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v3, 0x0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioSamplingFrequency()I

    move-result v3

    iput v3, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2702
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v3, 0x0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioChannels()I

    move-result v3

    iput v3, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    goto/16 :goto_94

    .line 2705
    :pswitch_158
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v4, 0x4

    iput v4, v3, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioFormat:I

    .line 2706
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v3, 0x0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioBitrate()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getClosestAudioBitrate(I)I

    move-result v3

    iput v3, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioBitrate:I

    .line 2707
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v3, 0x0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioSamplingFrequency()I

    move-result v3

    iput v3, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioSamplingFreq:I

    .line 2708
    iget-object v4, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    const/4 v3, 0x0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lifevibes/videoeditor/MediaVideoItem;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaVideoItem;->getAudioChannels()I

    move-result v3

    iput v3, v4, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;->audioChannels:I

    goto/16 :goto_94

    .line 2721
    .end local p3
    .restart local v2       #index:I
    :cond_190
    const/4 v0, 0x0

    .line 2723
    .local v0, err:I
    const/16 v3, 0x14

    :try_start_193
    iput v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingState:I

    .line 2724
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingObject:Ljava/lang/Object;

    .line 2725
    iget-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mPreviewEditSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-virtual {p0, v3}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->generateClip(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;)I

    move-result v0

    .line 2726
    const/4 v3, 0x0

    iput v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mProcessingState:I
    :try_end_1a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_193 .. :try_end_1a1} :catch_1c3
    .catch Ljava/lang/IllegalStateException; {:try_start_193 .. :try_end_1a1} :catch_1cc
    .catch Ljava/lang/RuntimeException; {:try_start_193 .. :try_end_1a1} :catch_1d5

    .line 2738
    if-eqz v0, :cond_1de

    .line 2739
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "RuntimeException for generateClip"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateClip failed with error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2727
    :catch_1c3
    move-exception v1

    .line 2728
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "IllegalArgument for generateClip"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    throw v1

    .line 2730
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1cc
    move-exception v1

    .line 2731
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "IllegalStateExceptiont for generateClip"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    throw v1

    .line 2733
    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :catch_1d5
    move-exception v1

    .line 2734
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "RuntimeException for generateClip"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    throw v1

    .line 2743
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :cond_1de
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportProgressListener:Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;

    .line 2744
    return-void

    .line 2656
    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_dc
        :pswitch_57
        :pswitch_ca
        :pswitch_d0
        :pswitch_d6
    .end packed-switch

    .line 2685
    :pswitch_data_1f2
    .packed-switch 0x1
        :pswitch_108
        :pswitch_e2
        :pswitch_120
        :pswitch_158
    .end packed-switch
.end method

.method public generateClip(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    .registers 7
    .parameter "editSettings"

    .prologue
    const/4 v2, -0x1

    .line 2827
    const/4 v0, 0x0

    .line 2830
    .local v0, err:I
    :try_start_2
    invoke-direct {p0, p1}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGenerateClip(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_5} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_20

    move-result v0

    move v2, v0

    .line 2853
    :cond_7
    :goto_7
    return v2

    .line 2831
    :catch_8
    move-exception v1

    .line 2832
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Illegal Argument exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    if-eqz v0, :cond_7

    move v2, v0

    .line 2836
    goto :goto_7

    .line 2838
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v1

    .line 2839
    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Illegal state exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    if-eqz v0, :cond_7

    move v2, v0

    .line 2843
    goto :goto_7

    .line 2845
    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :catch_20
    move-exception v1

    .line 2846
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v3, "MediaArtistNativeHelper"

    const-string v4, "Runtime exception in load settings"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    if-eqz v0, :cond_7

    move v2, v0

    .line 2850
    goto :goto_7
.end method

.method getAspectRatio(II)I
    .registers 11
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2903
    int-to-double v4, p1

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 2904
    .local v0, apRatio:D
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 2905
    .local v2, bd:Ljava/math/BigDecimal;
    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 2906
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 2907
    const/4 v3, 0x2

    .line 2908
    .local v3, var:I
    const-wide v4, 0x3ffb333333333333L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1f

    .line 2909
    const/4 v3, 0x2

    .line 2919
    :cond_1e
    :goto_1e
    return v3

    .line 2910
    :cond_1f
    const-wide v4, 0x3ff999999999999aL

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_2a

    .line 2911
    const/4 v3, 0x4

    goto :goto_1e

    .line 2912
    :cond_2a
    const-wide/high16 v4, 0x3ff8

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_32

    .line 2913
    const/4 v3, 0x1

    goto :goto_1e

    .line 2914
    :cond_32
    const-wide v4, 0x3ff4cccccccccccdL

    cmpl-double v4, v0, v4

    if-lez v4, :cond_3d

    .line 2915
    const/4 v3, 0x3

    goto :goto_1e

    .line 2916
    :cond_3d
    const-wide v4, 0x3ff3333333333333L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1e

    .line 2917
    const/4 v3, 0x5

    goto :goto_1e
.end method

.method getAudioCodecType(I)I
    .registers 3
    .parameter "codecType"

    .prologue
    .line 3004
    const/4 v0, -0x1

    .line 3005
    .local v0, retValue:I
    packed-switch p1, :pswitch_data_10

    .line 3023
    const/4 v0, -0x1

    .line 3025
    :goto_5
    return v0

    .line 3007
    :pswitch_6
    const/4 v0, 0x1

    .line 3008
    goto :goto_5

    .line 3010
    :pswitch_8
    const/4 v0, 0x2

    .line 3011
    goto :goto_5

    .line 3013
    :pswitch_a
    const/4 v0, 0x3

    .line 3014
    goto :goto_5

    .line 3016
    :pswitch_c
    const/4 v0, 0x4

    .line 3017
    goto :goto_5

    .line 3019
    :pswitch_e
    const/4 v0, 0x5

    .line 3020
    goto :goto_5

    .line 3005
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method getClosestAudioBitrate(I)I
    .registers 7
    .parameter "bitrateValue"

    .prologue
    const v4, 0xfa00

    const v3, 0xbb80

    const/16 v2, 0x7d00

    const/16 v1, 0x5dc0

    const/16 v0, 0x3e80

    .line 2032
    if-lez p1, :cond_11

    if-gt p1, v0, :cond_11

    .line 2051
    :goto_10
    return v0

    .line 2034
    :cond_11
    if-le p1, v0, :cond_17

    if-gt p1, v1, :cond_17

    move v0, v1

    .line 2035
    goto :goto_10

    .line 2036
    :cond_17
    if-le p1, v1, :cond_1d

    if-gt p1, v2, :cond_1d

    move v0, v2

    .line 2037
    goto :goto_10

    .line 2038
    :cond_1d
    if-le p1, v2, :cond_23

    if-gt p1, v3, :cond_23

    move v0, v3

    .line 2039
    goto :goto_10

    .line 2040
    :cond_23
    if-le p1, v3, :cond_29

    if-gt p1, v4, :cond_29

    move v0, v4

    .line 2041
    goto :goto_10

    .line 2042
    :cond_29
    if-le p1, v4, :cond_34

    const v0, 0x17700

    if-gt p1, v0, :cond_34

    .line 2043
    const v0, 0x17700

    goto :goto_10

    .line 2044
    :cond_34
    const v0, 0x17700

    if-le p1, v0, :cond_42

    const v0, 0x1f400

    if-gt p1, v0, :cond_42

    .line 2045
    const v0, 0x1f400

    goto :goto_10

    .line 2046
    :cond_42
    const v0, 0x1f400

    if-le p1, v0, :cond_50

    const v0, 0x2ee00

    if-gt p1, v0, :cond_50

    .line 2047
    const v0, 0x2ee00

    goto :goto_10

    .line 2048
    :cond_50
    const v0, 0x2ee00

    if-le p1, v0, :cond_5e

    const v0, 0x3e800

    if-gt p1, v0, :cond_5e

    .line 2049
    const v0, 0x3e800

    goto :goto_10

    .line 2051
    :cond_5e
    const/4 v0, -0x1

    goto :goto_10
.end method

.method getClosestVideoBitrate(I)I
    .registers 7
    .parameter "bitrateValue"

    .prologue
    const v3, 0x2ee00

    const v2, 0x1f400

    const v1, 0x17700

    const v0, 0xfa00

    const v4, 0x7a1200

    .line 1998
    if-lez p1, :cond_14

    if-gt p1, v0, :cond_14

    .line 2025
    :goto_13
    return v0

    .line 2000
    :cond_14
    if-le p1, v0, :cond_1a

    if-gt p1, v1, :cond_1a

    move v0, v1

    .line 2001
    goto :goto_13

    .line 2002
    :cond_1a
    if-le p1, v1, :cond_20

    if-gt p1, v2, :cond_20

    move v0, v2

    .line 2003
    goto :goto_13

    .line 2004
    :cond_20
    if-le p1, v2, :cond_26

    if-gt p1, v3, :cond_26

    move v0, v3

    .line 2005
    goto :goto_13

    .line 2006
    :cond_26
    if-le p1, v3, :cond_31

    const v0, 0x3e800

    if-gt p1, v0, :cond_31

    .line 2007
    const v0, 0x3e800

    goto :goto_13

    .line 2008
    :cond_31
    const v0, 0x3e800

    if-le p1, v0, :cond_3f

    const v0, 0x46500

    if-gt p1, v0, :cond_3f

    .line 2009
    const v0, 0x46500

    goto :goto_13

    .line 2010
    :cond_3f
    const v0, 0x46500

    if-le p1, v0, :cond_4d

    const v0, 0x5dc00

    if-gt p1, v0, :cond_4d

    .line 2011
    const v0, 0x5dc00

    goto :goto_13

    .line 2012
    :cond_4d
    const v0, 0x5dc00

    if-le p1, v0, :cond_5b

    const v0, 0x7d000

    if-gt p1, v0, :cond_5b

    .line 2013
    const v0, 0x7d000

    goto :goto_13

    .line 2014
    :cond_5b
    const v0, 0x7d000

    if-le p1, v0, :cond_69

    const v0, 0xc3500

    if-gt p1, v0, :cond_69

    .line 2015
    const v0, 0xc3500

    goto :goto_13

    .line 2016
    :cond_69
    const v0, 0xc3500

    if-le p1, v0, :cond_77

    const v0, 0x1e8480

    if-gt p1, v0, :cond_77

    .line 2017
    const v0, 0x1e8480

    goto :goto_13

    .line 2018
    :cond_77
    const v0, 0x1e8480

    if-le p1, v0, :cond_85

    const v0, 0x4c4b40

    if-gt p1, v0, :cond_85

    .line 2019
    const v0, 0x4c4b40

    goto :goto_13

    .line 2020
    :cond_85
    const v0, 0x4c4b40

    if-le p1, v0, :cond_8e

    if-gt p1, v4, :cond_8e

    move v0, v4

    .line 2021
    goto :goto_13

    .line 2022
    :cond_8e
    if-le p1, v4, :cond_92

    move v0, v4

    .line 2023
    goto :goto_13

    .line 2025
    :cond_92
    const/4 v0, -0x1

    goto :goto_13
.end method

.method getFileType(I)I
    .registers 3
    .parameter "fileType"

    .prologue
    .line 2931
    const/4 v0, -0x1

    .line 2932
    .local v0, retValue:I
    sparse-switch p1, :sswitch_data_18

    .line 2956
    const/4 v0, -0x1

    .line 2958
    :goto_5
    return v0

    .line 2934
    :sswitch_6
    const/16 v0, 0xff

    .line 2935
    goto :goto_5

    .line 2937
    :sswitch_9
    const/4 v0, 0x0

    .line 2938
    goto :goto_5

    .line 2940
    :sswitch_b
    const/4 v0, 0x1

    .line 2941
    goto :goto_5

    .line 2943
    :sswitch_d
    const/4 v0, 0x5

    .line 2944
    goto :goto_5

    .line 2946
    :sswitch_f
    const/16 v0, 0x8

    .line 2947
    goto :goto_5

    .line 2949
    :sswitch_12
    const/4 v0, 0x3

    .line 2950
    goto :goto_5

    .line 2952
    :sswitch_14
    const/16 v0, 0xa

    .line 2953
    goto :goto_5

    .line 2932
    nop

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_b
        0x3 -> :sswitch_12
        0x5 -> :sswitch_d
        0x8 -> :sswitch_f
        0xa -> :sswitch_14
        0xff -> :sswitch_6
    .end sparse-switch
.end method

.method getMediaItemFileType(I)I
    .registers 3
    .parameter "fileType"

    .prologue
    .line 3078
    const/4 v0, -0x1

    .line 3080
    .local v0, retValue:I
    sparse-switch p1, :sswitch_data_16

    .line 3101
    const/4 v0, -0x1

    .line 3103
    :goto_5
    return v0

    .line 3082
    :sswitch_6
    const/16 v0, 0xff

    .line 3083
    goto :goto_5

    .line 3085
    :sswitch_9
    const/4 v0, 0x0

    .line 3086
    goto :goto_5

    .line 3088
    :sswitch_b
    const/4 v0, 0x1

    .line 3089
    goto :goto_5

    .line 3091
    :sswitch_d
    const/4 v0, 0x5

    .line 3092
    goto :goto_5

    .line 3094
    :sswitch_f
    const/16 v0, 0x8

    .line 3095
    goto :goto_5

    .line 3097
    :sswitch_12
    const/16 v0, 0xa

    .line 3098
    goto :goto_5

    .line 3080
    nop

    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_b
        0x5 -> :sswitch_d
        0x8 -> :sswitch_f
        0xa -> :sswitch_12
        0xff -> :sswitch_6
    .end sparse-switch
.end method

.method getMediaItemRenderingMode(I)I
    .registers 3
    .parameter "renderingMode"

    .prologue
    .line 3116
    const/4 v0, -0x1

    .line 3117
    .local v0, retValue:I
    packed-switch p1, :pswitch_data_c

    .line 3129
    const/4 v0, -0x1

    .line 3131
    :goto_5
    return v0

    .line 3119
    :pswitch_6
    const/4 v0, 0x2

    .line 3120
    goto :goto_5

    .line 3122
    :pswitch_8
    const/4 v0, 0x0

    .line 3123
    goto :goto_5

    .line 3125
    :pswitch_a
    const/4 v0, 0x1

    .line 3126
    goto :goto_5

    .line 3117
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method native getMediaProperties(Ljava/lang/String;)Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/RuntimeException;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method getPixels(Ljava/lang/String;IIJ)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "inputFile"
    .parameter "width"
    .parameter "height"
    .parameter "timeMS"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 3250
    if-nez p1, :cond_a

    .line 3251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3253
    :cond_a
    invoke-static {}, Lcom/lifevibes/videoeditor/VideoEditorImpl$CodecConfig;->getCodecCofig()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v6, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->nativeGetPixels(Ljava/lang/String;IIJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCodecType(I)I
    .registers 3
    .parameter "codecType"

    .prologue
    .line 2970
    const/4 v0, -0x1

    .line 2971
    .local v0, retValue:I
    packed-switch p1, :pswitch_data_10

    .line 2990
    :pswitch_4
    const/4 v0, -0x1

    .line 2992
    :goto_5
    return v0

    .line 2973
    :pswitch_6
    const/4 v0, 0x1

    .line 2974
    goto :goto_5

    .line 2976
    :pswitch_8
    const/4 v0, 0x4

    .line 2977
    goto :goto_5

    .line 2979
    :pswitch_a
    const/4 v0, 0x5

    .line 2980
    goto :goto_5

    .line 2982
    :pswitch_c
    const/4 v0, 0x6

    .line 2983
    goto :goto_5

    .line 2985
    :pswitch_e
    const/4 v0, 0x2

    .line 2986
    goto :goto_5

    .line 2971
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_e
        :pswitch_4
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method initClipSettings(Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .registers 4
    .parameter "lclipSettings"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2863
    iput-object v1, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 2864
    iput-object v1, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    .line 2865
    iput-object v1, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    .line 2866
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 2867
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 2868
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 2869
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    .line 2870
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    .line 2871
    iput-boolean v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    .line 2872
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    .line 2873
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    .line 2874
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    .line 2875
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    .line 2876
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    .line 2877
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    .line 2878
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 2879
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 2880
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    .line 2881
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipVolumePercentage:I

    .line 2882
    iput v0, p1, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;->mNumCuts:I

    .line 2883
    return-void
.end method

.method public releaseNativeHelper()V
    .registers 4

    .prologue
    .line 2751
    :try_start_0
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->release()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_d

    .line 2760
    return-void

    .line 2752
    :catch_4
    move-exception v0

    .line 2753
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal State exeption caught in releaseNativeHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    throw v0

    .line 2756
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v0

    .line 2757
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exeption caught in releaseNativeHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    throw v0
.end method

.method stop(Ljava/lang/String;)V
    .registers 5
    .parameter "filename"

    .prologue
    .line 3378
    :try_start_0
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->stopEncoding()V

    .line 3379
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->mExportFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_17

    .line 3387
    return-void

    .line 3380
    :catch_e
    move-exception v0

    .line 3381
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Illegal state exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    throw v0

    .line 3383
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catch_17
    move-exception v0

    .line 3384
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "MediaArtistNativeHelper"

    const-string v2, "Runtime exception in unload settings"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    throw v0
.end method

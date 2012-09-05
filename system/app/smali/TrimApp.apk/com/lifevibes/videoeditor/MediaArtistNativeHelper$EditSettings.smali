.class public Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EditSettings;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditSettings"
.end annotation


# instance fields
.field public audioBitrate:I

.field public audioChannels:I

.field public audioFormat:I

.field public audioSamplingFreq:I

.field public backgroundMusicSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

.field public clipSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$ClipSettings;

.field public effectSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$EffectSettings;

.field public maxFileSize:I

.field public outputFile:Ljava/lang/String;

.field public primaryTrackVolume:I

.field public transitionSettingsArray:[Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;

.field public videoBitrate:I

.field public videoFormat:I

.field public videoFrameRate:I

.field public videoFrameSize:I

.field public videoRenderingType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1725
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

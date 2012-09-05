.class public Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;
.super Ljava/lang/Object;
.source "MediaShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/util/MediaShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaShareProperties"
.end annotation


# instance fields
.field public mAspectRatio:I

.field public mAudioBitrate:I

.field public mAudioChannels:I

.field public mAudioSamplingFrequency:I

.field public mAudioType:I

.field public mDurationMillis:I

.field public mFileType:I

.field public mFps:I

.field public mHeight:I

.field public mVideoBitrate:I

.field public mVideoProfile:I

.field public mVideoType:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

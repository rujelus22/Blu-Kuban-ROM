.class public Lcom/sec/android/app/camera/MediaRecorderProfile;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"


# static fields
.field private static final PROFILE_1280_720:I = 0x1

.field private static final PROFILE_176_144:I = 0x5

.field private static final PROFILE_1920_1080:I = 0x0

.field private static final PROFILE_320_240:I = 0x4

.field private static final PROFILE_640_480:I = 0x3

.field private static final PROFILE_720_480:I = 0x2

.field private static final PROFILE_MMS:I = 0x6

.field private static final PROPERTY_AUDIO_BITRATE:I = 0x7

.field private static final PROPERTY_AUDIO_ENCORDER:I = 0x6

.field private static final PROPERTY_AUDIO_NUM_CHANNELS:I = 0x8

.field private static final PROPERTY_AUDIO_SAMPLINGRATE:I = 0x9

.field private static final PROPERTY_VIDEO_BITRATE_FINE:I = 0x2

.field private static final PROPERTY_VIDEO_BITRATE_NORMAL:I = 0x3

.field private static final PROPERTY_VIDEO_BITRATE_SUPERFINE:I = 0x1

.field private static final PROPERTY_VIDEO_ENCORDER:I = 0x0

.field private static final PROPERTY_VIDEO_FRAME_RATE:I = 0x4

.field private static final PROPERTY_VIDEO_OUTPUT_FORMAT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaRecorderProfile"


# instance fields
.field public final mAudioBitrate:I

.field public final mAudioChannels:I

.field public final mAudioEncoder:I

.field public final mAudioSamplingRate:I

.field public final mOutputFormat:I

.field private mProfileTable:[[I

.field public final mVideoBitrate:I

.field public final mVideoEncoder:I

.field public final mVideoFps:I

.field public final mVideoHeight:I

.field public final mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .registers 14
    .parameter "activityContext"
    .parameter "quality"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v3, 0x7

    new-array v3, v3, [[I

    new-array v4, v6, [I

    fill-array-data v4, :array_c4

    aput-object v4, v3, v7

    new-array v4, v6, [I

    fill-array-data v4, :array_dc

    aput-object v4, v3, v8

    const/4 v4, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_f4

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-array v5, v6, [I

    fill-array-data v5, :array_10c

    aput-object v5, v3, v4

    new-array v4, v6, [I

    fill-array-data v4, :array_124

    aput-object v4, v3, v9

    new-array v4, v6, [I

    fill-array-data v4, :array_13c

    aput-object v4, v3, v10

    const/4 v4, 0x6

    new-array v5, v6, [I

    fill-array-data v5, :array_154

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    .line 103
    const/4 v0, 0x2

    .line 104
    .local v0, propertyIndex:I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    .line 105
    .local v2, resolutionId:I
    const/4 v1, 0x3

    .line 108
    .local v1, qualityIndex:I
    packed-switch v2, :pswitch_data_16c

    .line 130
    :goto_4f
    :pswitch_4f
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v3

    if-ne v3, v8, :cond_5c

    .line 131
    const/4 v0, 0x6

    .line 132
    const/16 v2, 0x12

    .line 135
    :cond_5c
    packed-switch p2, :pswitch_data_180

    .line 148
    :goto_5f
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v7

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    .line 149
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 150
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v9

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    .line 151
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    .line 152
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    .line 153
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    .line 156
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x6

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    .line 157
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x7

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    .line 158
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/16 v4, 0x8

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    .line 159
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/16 v4, 0x9

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    .line 160
    return-void

    .line 110
    :pswitch_b2
    const/4 v0, 0x0

    .line 111
    goto :goto_4f

    .line 113
    :pswitch_b4
    const/4 v0, 0x1

    .line 114
    goto :goto_4f

    .line 116
    :pswitch_b6
    const/4 v0, 0x2

    .line 117
    goto :goto_4f

    .line 119
    :pswitch_b8
    const/4 v0, 0x3

    .line 120
    goto :goto_4f

    .line 122
    :pswitch_ba
    const/4 v0, 0x4

    .line 123
    goto :goto_4f

    .line 125
    :pswitch_bc
    const/4 v0, 0x5

    goto :goto_4f

    .line 137
    :pswitch_be
    const/4 v1, 0x1

    .line 138
    goto :goto_5f

    .line 140
    :pswitch_c0
    const/4 v1, 0x2

    .line 141
    goto :goto_5f

    .line 143
    :pswitch_c2
    const/4 v1, 0x3

    goto :goto_5f

    .line 66
    :array_c4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x66t 0x3t 0x1t
        0xc0t 0xe1t 0xe4t 0x0t
        0x40t 0x5dt 0xc6t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_dc
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x1bt 0xb7t 0x0t
        0x80t 0x96t 0x98t 0x0t
        0x0t 0x12t 0x7at 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_f4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xa8t 0xa0t 0x34t 0x0t
        0x50t 0x3et 0x2bt 0x0t
        0x90t 0x10t 0x23t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_10c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x70t 0xf7t 0x2et 0x0t
        0xa8t 0xf4t 0x26t 0x0t
        0xb8t 0xcet 0x1et 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_124
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x18t 0xb4t 0xbt 0x0t
        0xe8t 0xc7t 0x9t 0x0t
        0x70t 0xe7t 0x7t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_13c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0xdct 0x5t 0x0t
        0x0t 0xe2t 0x4t 0x0t
        0x0t 0xe8t 0x3t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0xf4t 0x1t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
    .end array-data

    :array_154
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0x64t 0x77t 0x1t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xa8t 0x2ft 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data

    .line 108
    :pswitch_data_16c
    .packed-switch 0xb
        :pswitch_b8
        :pswitch_4f
        :pswitch_b2
        :pswitch_b4
        :pswitch_b6
        :pswitch_4f
        :pswitch_ba
        :pswitch_bc
    .end packed-switch

    .line 135
    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_be
        :pswitch_c0
        :pswitch_c2
    .end packed-switch
.end method

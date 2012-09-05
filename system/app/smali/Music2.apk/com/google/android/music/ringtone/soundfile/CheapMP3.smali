.class public Lcom/google/android/music/ringtone/soundfile/CheapMP3;
.super Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
.source "CheapMP3.java"


# static fields
.field private static BITRATES_MPEG1_L3:[I

.field private static BITRATES_MPEG2_L3:[I

.field private static SAMPLERATES_MPEG1_L3:[I

.field private static SAMPLERATES_MPEG2_L3:[I


# instance fields
.field private mAvgBitRate:I

.field private mBitrateSum:I

.field private mFileSize:I

.field private mFrameGains:[I

.field private mFrameLens:[I

.field private mFrameOffsets:[I

.field private mGlobalChannels:I

.field private mGlobalSampleRate:I

.field private mMaxFrames:I

.field private mMaxGain:I

.field private mMinGain:I

.field private mNumFrames:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x4

    .line 314
    new-array v0, v2, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->BITRATES_MPEG1_L3:[I

    .line 317
    new-array v0, v2, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->BITRATES_MPEG2_L3:[I

    .line 320
    new-array v0, v1, [I

    fill-array-data v0, :array_68

    sput-object v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->SAMPLERATES_MPEG1_L3:[I

    .line 322
    new-array v0, v1, [I

    fill-array-data v0, :array_74

    sput-object v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->SAMPLERATES_MPEG2_L3:[I

    return-void

    .line 314
    :array_20
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 317
    :array_44
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 320
    :array_68
    .array-data 0x4
        0x44t 0xact 0x0t 0x0t
        0x80t 0xbbt 0x0t 0x0t
        0x0t 0x7dt 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 322
    :array_74
    .array-data 0x4
        0x22t 0x56t 0x0t 0x0t
        0xc0t 0x5dt 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;-><init>()V

    .line 65
    return-void
.end method

.method public static getFactory()Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3$1;

    invoke-direct {v0}, Lcom/google/android/music/ringtone/soundfile/CheapMP3$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ReadFile(Ljava/io/File;)V
    .registers 28
    .parameter "inputFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-super/range {p0 .. p1}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->ReadFile(Ljava/io/File;)V

    .line 126
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    .line 127
    const/16 v21, 0x40

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMaxFrames:I

    .line 128
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMaxFrames:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameOffsets:[I

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMaxFrames:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameLens:[I

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMaxFrames:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameGains:[I

    .line 131
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mBitrateSum:I

    .line 132
    const/16 v21, 0xff

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMinGain:I

    .line 133
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMaxGain:I

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mInputFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFileSize:I

    .line 138
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mInputFile:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 140
    .local v19, stream:Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 141
    .local v17, pos:I
    const/4 v15, 0x0

    .line 142
    .local v15, offset:I
    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v4, v0, [B

    .line 143
    .local v4, buffer:[B
    :goto_8e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFileSize:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0xc

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_ed

    .line 145
    :goto_9c
    const/16 v21, 0xc

    move/from16 v0, v21

    if-ge v15, v0, :cond_af

    .line 146
    rsub-int/lit8 v21, v15, 0xc

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v4, v15, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v21

    add-int v15, v15, v21

    goto :goto_9c

    .line 148
    :cond_af
    const/4 v5, 0x0

    .line 150
    .local v5, bufferOffset:I
    :goto_b0
    const/16 v21, 0xc

    move/from16 v0, v21

    if-ge v5, v0, :cond_c3

    aget-byte v21, v4, v5

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c3

    .line 151
    add-int/lit8 v5, v5, 0x1

    goto :goto_b0

    .line 153
    :cond_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mProgressListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10a

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mProgressListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

    move-object/from16 v21, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0

    mul-double v22, v22, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFileSize:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    invoke-interface/range {v21 .. v23}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;->reportProgress(D)Z

    move-result v9

    .line 156
    .local v9, keepGoing:Z
    if-nez v9, :cond_10a

    .line 281
    .end local v5           #bufferOffset:I
    .end local v9           #keepGoing:Z
    :cond_ed
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v21, v0

    if-lez v21, :cond_364

    .line 282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mBitrateSum:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v22, v0

    div-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mAvgBitRate:I

    .line 285
    :goto_109
    return-void

    .line 161
    .restart local v5       #bufferOffset:I
    :cond_10a
    if-lez v5, :cond_122

    .line 164
    const/4 v8, 0x0

    .local v8, i:I
    :goto_10d
    rsub-int/lit8 v21, v5, 0xc

    move/from16 v0, v21

    if-ge v8, v0, :cond_11c

    .line 165
    add-int v21, v5, v8

    aget-byte v21, v4, v21

    aput-byte v21, v4, v8

    .line 164
    add-int/lit8 v8, v8, 0x1

    goto :goto_10d

    .line 166
    :cond_11c
    add-int v17, v17, v5

    .line 167
    rsub-int/lit8 v15, v5, 0xc

    .line 168
    goto/16 :goto_8e

    .line 172
    .end local v8           #i:I
    :cond_122
    const/4 v10, 0x0

    .line 173
    .local v10, mpgVersion:I
    const/16 v21, 0x1

    aget-byte v21, v4, v21

    const/16 v22, -0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13b

    const/16 v21, 0x1

    aget-byte v21, v4, v21

    const/16 v22, -0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_173

    .line 174
    :cond_13b
    const/4 v10, 0x1

    .line 189
    :goto_13c
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_1a4

    .line 191
    sget-object v21, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->BITRATES_MPEG1_L3:[I

    const/16 v22, 0x2

    aget-byte v22, v4, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xf0

    move/from16 v22, v0

    shr-int/lit8 v22, v22, 0x4

    aget v3, v21, v22

    .line 192
    .local v3, bitRate:I
    sget-object v21, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->SAMPLERATES_MPEG1_L3:[I

    const/16 v22, 0x2

    aget-byte v22, v4, v22

    and-int/lit8 v22, v22, 0xc

    shr-int/lit8 v22, v22, 0x2

    aget v18, v21, v22

    .line 199
    .local v18, sampleRate:I
    :goto_15e
    if-eqz v3, :cond_162

    if-nez v18, :cond_1c7

    .line 200
    :cond_162
    const/4 v5, 0x2

    .line 201
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_164
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v8, v0, :cond_1c1

    .line 202
    add-int v21, v5, v8

    aget-byte v21, v4, v21

    aput-byte v21, v4, v8

    .line 201
    add-int/lit8 v8, v8, 0x1

    goto :goto_164

    .line 175
    .end local v3           #bitRate:I
    .end local v8           #i:I
    .end local v18           #sampleRate:I
    :cond_173
    const/16 v21, 0x1

    aget-byte v21, v4, v21

    const/16 v22, -0xe

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_18b

    const/16 v21, 0x1

    aget-byte v21, v4, v21

    const/16 v22, -0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18d

    .line 176
    :cond_18b
    const/4 v10, 0x2

    goto :goto_13c

    .line 178
    :cond_18d
    const/4 v5, 0x1

    .line 179
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_18f
    const/16 v21, 0xb

    move/from16 v0, v21

    if-ge v8, v0, :cond_19e

    .line 180
    add-int v21, v5, v8

    aget-byte v21, v4, v21

    aput-byte v21, v4, v8

    .line 179
    add-int/lit8 v8, v8, 0x1

    goto :goto_18f

    .line 181
    :cond_19e
    add-int v17, v17, v5

    .line 182
    rsub-int/lit8 v15, v5, 0xc

    .line 183
    goto/16 :goto_8e

    .line 195
    .end local v8           #i:I
    :cond_1a4
    sget-object v21, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->BITRATES_MPEG2_L3:[I

    const/16 v22, 0x2

    aget-byte v22, v4, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xf0

    move/from16 v22, v0

    shr-int/lit8 v22, v22, 0x4

    aget v3, v21, v22

    .line 196
    .restart local v3       #bitRate:I
    sget-object v21, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->SAMPLERATES_MPEG2_L3:[I

    const/16 v22, 0x2

    aget-byte v22, v4, v22

    and-int/lit8 v22, v22, 0xc

    shr-int/lit8 v22, v22, 0x2

    aget v18, v21, v22

    .restart local v18       #sampleRate:I
    goto :goto_15e

    .line 203
    .restart local v8       #i:I
    :cond_1c1
    add-int v17, v17, v5

    .line 204
    rsub-int/lit8 v15, v5, 0xc

    .line 205
    goto/16 :goto_8e

    .line 209
    .end local v8           #i:I
    :cond_1c7
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mGlobalSampleRate:I

    .line 210
    const/16 v21, 0x2

    aget-byte v21, v4, v21

    and-int/lit8 v21, v21, 0x2

    shr-int/lit8 v16, v21, 0x1

    .line 211
    .local v16, padding:I
    mul-int/lit16 v0, v3, 0x90

    move/from16 v21, v0

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    div-int v21, v21, v18

    add-int v6, v21, v16

    .line 214
    .local v6, frameLen:I
    const/16 v21, 0x3

    aget-byte v21, v4, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xc0

    move/from16 v21, v0

    const/16 v22, 0xc0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_318

    .line 216
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mGlobalChannels:I

    .line 217
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_300

    .line 218
    const/16 v21, 0xa

    aget-byte v21, v4, v21

    and-int/lit8 v21, v21, 0x1

    shl-int/lit8 v21, v21, 0x7

    const/16 v22, 0xb

    aget-byte v22, v4, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xfe

    move/from16 v22, v0

    shr-int/lit8 v22, v22, 0x1

    add-int v7, v21, v22

    .line 235
    .local v7, gain:I
    :goto_219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mBitrateSum:I

    move/from16 v21, v0

    add-int v21, v21, v3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mBitrateSum:I

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameOffsets:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v22, v0

    aput v17, v21, v22

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameLens:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v22, v0

    aput v6, v21, v22

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameGains:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v22, v0

    aput v7, v21, v22

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMinGain:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_25f

    .line 241
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMinGain:I

    .line 242
    :cond_25f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMaxGain:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v7, v0, :cond_26d

    .line 243
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMaxGain:I

    .line 245
    :cond_26d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMaxFrames:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_351

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mBitrateSum:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v22, v0

    div-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mAvgBitRate:I

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFileSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mAvgBitRate:I

    move/from16 v22, v0

    div-int v21, v21, v22

    mul-int v21, v21, v18

    const v22, 0x23280

    div-int v20, v21, v22

    .line 257
    .local v20, totalFramesGuess:I
    mul-int/lit8 v21, v20, 0xb

    div-int/lit8 v13, v21, 0xa

    .line 258
    .local v13, newMaxFrames:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMaxFrames:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    if-ge v13, v0, :cond_2ce

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMaxFrames:I

    move/from16 v21, v0

    mul-int/lit8 v13, v21, 0x2

    .line 261
    :cond_2ce
    new-array v14, v13, [I

    .line 262
    .local v14, newOffsets:[I
    new-array v12, v13, [I

    .line 263
    .local v12, newLens:[I
    new-array v11, v13, [I

    .line 264
    .local v11, newGains:[I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2d5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_341

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameOffsets:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    aput v21, v14, v8

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameLens:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    aput v21, v12, v8

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameGains:[I

    move-object/from16 v21, v0

    aget v21, v21, v8

    aput v21, v11, v8

    .line 264
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d5

    .line 221
    .end local v7           #gain:I
    .end local v8           #i:I
    .end local v11           #newGains:[I
    .end local v12           #newLens:[I
    .end local v13           #newMaxFrames:I
    .end local v14           #newOffsets:[I
    .end local v20           #totalFramesGuess:I
    :cond_300
    const/16 v21, 0x9

    aget-byte v21, v4, v21

    and-int/lit8 v21, v21, 0x3

    shl-int/lit8 v21, v21, 0x6

    const/16 v22, 0xa

    aget-byte v22, v4, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xfc

    move/from16 v22, v0

    shr-int/lit8 v22, v22, 0x2

    add-int v7, v21, v22

    .restart local v7       #gain:I
    goto/16 :goto_219

    .line 226
    .end local v7           #gain:I
    :cond_318
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mGlobalChannels:I

    .line 227
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_33e

    .line 228
    const/16 v21, 0x9

    aget-byte v21, v4, v21

    and-int/lit8 v21, v21, 0x7f

    shl-int/lit8 v21, v21, 0x1

    const/16 v22, 0xa

    aget-byte v22, v4, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    shr-int/lit8 v22, v22, 0x7

    add-int v7, v21, v22

    .restart local v7       #gain:I
    goto/16 :goto_219

    .line 231
    .end local v7           #gain:I
    :cond_33e
    const/4 v7, 0x0

    .restart local v7       #gain:I
    goto/16 :goto_219

    .line 269
    .restart local v8       #i:I
    .restart local v11       #newGains:[I
    .restart local v12       #newLens:[I
    .restart local v13       #newMaxFrames:I
    .restart local v14       #newOffsets:[I
    .restart local v20       #totalFramesGuess:I
    :cond_341
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameOffsets:[I

    .line 270
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameLens:[I

    .line 271
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameGains:[I

    .line 272
    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mMaxFrames:I

    .line 275
    .end local v8           #i:I
    .end local v11           #newGains:[I
    .end local v12           #newLens:[I
    .end local v13           #newMaxFrames:I
    .end local v14           #newOffsets:[I
    .end local v20           #totalFramesGuess:I
    :cond_351
    add-int/lit8 v21, v6, -0xc

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J

    .line 276
    add-int v17, v17, v6

    .line 277
    const/4 v15, 0x0

    .line 278
    goto/16 :goto_8e

    .line 284
    .end local v3           #bitRate:I
    .end local v5           #bufferOffset:I
    .end local v6           #frameLen:I
    .end local v7           #gain:I
    .end local v10           #mpgVersion:I
    .end local v16           #padding:I
    .end local v18           #sampleRate:I
    :cond_364
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mAvgBitRate:I

    goto/16 :goto_109
.end method

.method public WriteFile(Ljava/io/File;II)V
    .registers 15
    .parameter "outputFile"
    .parameter "startFrame"
    .parameter "numFrames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 289
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 290
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mInputFile:Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 291
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 292
    .local v5, out:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 293
    .local v4, maxFrameLen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, p3, :cond_25

    .line 294
    iget-object v8, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameLens:[I

    add-int v9, p2, v1

    aget v8, v8, v9

    if-le v8, v4, :cond_22

    .line 295
    iget-object v8, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameLens:[I

    add-int v9, p2, v1

    aget v4, v8, v9

    .line 293
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 297
    :cond_25
    new-array v0, v4, [B

    .line 298
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 299
    .local v6, pos:I
    const/4 v1, 0x0

    :goto_29
    if-ge v1, p3, :cond_4a

    .line 300
    iget-object v8, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameOffsets:[I

    add-int v9, p2, v1

    aget v8, v8, v9

    sub-int v7, v8, v6

    .line 301
    .local v7, skip:I
    iget-object v8, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameLens:[I

    add-int v9, p2, v1

    aget v3, v8, v9

    .line 302
    .local v3, len:I
    if-lez v7, :cond_40

    .line 303
    int-to-long v8, v7

    invoke-virtual {v2, v8, v9}, Ljava/io/FileInputStream;->skip(J)J

    .line 304
    add-int/2addr v6, v7

    .line 306
    :cond_40
    invoke-virtual {v2, v0, v10, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 307
    invoke-virtual {v5, v0, v10, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 308
    add-int/2addr v6, v3

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 310
    .end local v3           #len:I
    .end local v7           #skip:I
    :cond_4a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 311
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 312
    return-void
.end method

.method public getAvgBitrateKbps()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mAvgBitRate:I

    return v0
.end method

.method public getFiletype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    const-string v0, "MP3"

    return-object v0
.end method

.method public getFrameGains()[I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameGains:[I

    return-object v0
.end method

.method public getNumFrames()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mGlobalSampleRate:I

    return v0
.end method

.method public getSamplesPerFrame()I
    .registers 2

    .prologue
    .line 76
    const/16 v0, 0x480

    return v0
.end method

.method public getSeekableFrameOffset(I)I
    .registers 3
    .parameter "frame"

    .prologue
    .line 113
    if-gtz p1, :cond_4

    .line 114
    const/4 v0, 0x0

    .line 118
    :goto_3
    return v0

    .line 115
    :cond_4
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mNumFrames:I

    if-lt p1, v0, :cond_b

    .line 116
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFileSize:I

    goto :goto_3

    .line 118
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->mFrameOffsets:[I

    aget v0, v0, p1

    goto :goto_3
.end method

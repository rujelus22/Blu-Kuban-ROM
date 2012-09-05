.class public Lcom/google/android/music/ringtone/soundfile/CheapWAV;
.super Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
.source "CheapWAV.java"


# instance fields
.field private mChannels:I

.field private mFileSize:I

.field private mFrameBytes:I

.field private mFrameGains:[I

.field private mFrameLens:[I

.field private mFrameOffsets:[I

.field private mNumFrames:I

.field private mOffset:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;-><init>()V

    .line 54
    return-void
.end method

.method public static getFactory()Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV$1;

    invoke-direct {v0}, Lcom/google/android/music/ringtone/soundfile/CheapWAV$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ReadFile(Ljava/io/File;)V
    .registers 24
    .parameter "inputFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super/range {p0 .. p1}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->ReadFile(Ljava/io/File;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mInputFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFileSize:I

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFileSize:I

    move/from16 v17, v0

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2e

    .line 103
    new-instance v17, Ljava/io/IOException;

    const-string v18, "File too small to parse"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 106
    :cond_2e
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mInputFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 107
    .local v15, stream:Ljava/io/FileInputStream;
    const/16 v17, 0xc

    move/from16 v0, v17

    new-array v8, v0, [B

    .line 108
    .local v8, header:[B
    const/16 v17, 0x0

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v8, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0xc

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    .line 110
    const/16 v17, 0x0

    aget-byte v17, v8, v17

    const/16 v18, 0x52

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ba

    const/16 v17, 0x1

    aget-byte v17, v8, v17

    const/16 v18, 0x49

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ba

    const/16 v17, 0x2

    aget-byte v17, v8, v17

    const/16 v18, 0x46

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ba

    const/16 v17, 0x3

    aget-byte v17, v8, v17

    const/16 v18, 0x46

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ba

    const/16 v17, 0x8

    aget-byte v17, v8, v17

    const/16 v18, 0x57

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ba

    const/16 v17, 0x9

    aget-byte v17, v8, v17

    const/16 v18, 0x41

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ba

    const/16 v17, 0xa

    aget-byte v17, v8, v17

    const/16 v18, 0x56

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ba

    const/16 v17, 0xb

    aget-byte v17, v8, v17

    const/16 v18, 0x45

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c2

    .line 118
    :cond_ba
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Not a WAV file"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 121
    :cond_c2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mChannels:I

    .line 122
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mSampleRate:I

    .line 123
    :cond_d2
    :goto_d2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFileSize:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_365

    .line 124
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 125
    .local v2, chunkHeader:[B
    const/16 v17, 0x0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v2, v0, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    .line 128
    const/16 v17, 0x7

    aget-byte v17, v2, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x18

    const/16 v18, 0x6

    aget-byte v18, v2, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    const/16 v18, 0x5

    aget-byte v18, v2, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    const/16 v18, 0x4

    aget-byte v18, v2, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v3, v17, v18

    .line 134
    .local v3, chunkLen:I
    const/16 v17, 0x0

    aget-byte v17, v2, v17

    const/16 v18, 0x66

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_212

    const/16 v17, 0x1

    aget-byte v17, v2, v17

    const/16 v18, 0x6d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_212

    const/16 v17, 0x2

    aget-byte v17, v2, v17

    const/16 v18, 0x74

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_212

    const/16 v17, 0x3

    aget-byte v17, v2, v17

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_212

    .line 138
    const/16 v17, 0x10

    move/from16 v0, v17

    if-lt v3, v0, :cond_175

    const/16 v17, 0x400

    move/from16 v0, v17

    if-le v3, v0, :cond_17d

    .line 139
    :cond_175
    new-instance v17, Ljava/io/IOException;

    const-string v18, "WAV file has bad fmt chunk"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 143
    :cond_17d
    new-array v4, v3, [B

    .line 144
    .local v4, fmt:[B
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v4, v0, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    move/from16 v17, v0

    add-int v17, v17, v3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    .line 147
    const/16 v17, 0x1

    aget-byte v17, v4, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    const/16 v18, 0x0

    aget-byte v18, v4, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v5, v17, v18

    .line 150
    .local v5, format:I
    const/16 v17, 0x3

    aget-byte v17, v4, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    const/16 v18, 0x2

    aget-byte v18, v4, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mChannels:I

    .line 153
    const/16 v17, 0x7

    aget-byte v17, v4, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x18

    const/16 v18, 0x6

    aget-byte v18, v4, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    const/16 v18, 0x5

    aget-byte v18, v4, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    const/16 v18, 0x4

    aget-byte v18, v4, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mSampleRate:I

    .line 159
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_d2

    .line 160
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Unsupported WAV file encoding"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 164
    .end local v4           #fmt:[B
    .end local v5           #format:I
    :cond_212
    const/16 v17, 0x0

    aget-byte v17, v2, v17

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_34d

    const/16 v17, 0x1

    aget-byte v17, v2, v17

    const/16 v18, 0x61

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_34d

    const/16 v17, 0x2

    aget-byte v17, v2, v17

    const/16 v18, 0x74

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_34d

    const/16 v17, 0x3

    aget-byte v17, v2, v17

    const/16 v18, 0x61

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_34d

    .line 168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mChannels:I

    move/from16 v17, v0

    if-eqz v17, :cond_252

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mSampleRate:I

    move/from16 v17, v0

    if-nez v17, :cond_25a

    .line 169
    :cond_252
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Bad WAV file: data chunk before fmt chunk"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 173
    :cond_25a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mSampleRate:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mChannels:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    div-int/lit8 v7, v17, 0x32

    .line 174
    .local v7, frameSamples:I
    mul-int/lit8 v17, v7, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameBytes:I

    .line 176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameBytes:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    add-int v17, v17, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameBytes:I

    move/from16 v18, v0

    div-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mNumFrames:I

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mNumFrames:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameOffsets:[I

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mNumFrames:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameLens:[I

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mNumFrames:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameGains:[I

    .line 181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameBytes:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v13, v0, [B

    .line 183
    .local v13, oneFrame:[B
    const/4 v9, 0x0

    .line 184
    .local v9, i:I
    const/4 v6, 0x0

    .line 185
    .local v6, frameIndex:I
    :cond_2cc
    if-ge v9, v3, :cond_d2

    .line 186
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameBytes:I

    .line 187
    .local v14, oneFrameBytes:I
    add-int v17, v9, v14

    move/from16 v0, v17

    if-le v0, v3, :cond_2da

    .line 188
    sub-int v9, v3, v14

    .line 191
    :cond_2da
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v13, v0, v14}, Ljava/io/FileInputStream;->read([BII)I

    .line 193
    const/4 v12, 0x0

    .line 194
    .local v12, maxGain:I
    const/4 v10, 0x1

    .local v10, j:I
    :goto_2e3
    if-ge v10, v14, :cond_2fc

    .line 195
    aget-byte v17, v13, v10

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 196
    .local v16, val:I
    move/from16 v0, v16

    if-le v0, v12, :cond_2f1

    .line 197
    move/from16 v12, v16

    .line 194
    :cond_2f1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mChannels:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x4

    add-int v10, v10, v17

    goto :goto_2e3

    .line 201
    .end local v16           #val:I
    :cond_2fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameOffsets:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    move/from16 v18, v0

    aput v18, v17, v6

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameLens:[I

    move-object/from16 v17, v0

    aput v14, v17, v6

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameGains:[I

    move-object/from16 v17, v0

    aput v12, v17, v6

    .line 205
    add-int/lit8 v6, v6, 0x1

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    move/from16 v17, v0

    add-int v17, v17, v14

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    .line 207
    add-int/2addr v9, v14

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mProgressListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2cc

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mProgressListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

    move-object/from16 v17, v0

    int-to-double v0, v9

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0

    mul-double v18, v18, v20

    int-to-double v0, v3

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    invoke-interface/range {v17 .. v19}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;->reportProgress(D)Z

    move-result v11

    .line 212
    .local v11, keepGoing:Z
    if-nez v11, :cond_2cc

    goto/16 :goto_d2

    .line 219
    .end local v6           #frameIndex:I
    .end local v7           #frameSamples:I
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v11           #keepGoing:Z
    .end local v12           #maxGain:I
    .end local v13           #oneFrame:[B
    .end local v14           #oneFrameBytes:I
    :cond_34d
    int-to-long v0, v3

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    move/from16 v17, v0

    add-int v17, v17, v3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mOffset:I

    goto/16 :goto_d2

    .line 223
    .end local v2           #chunkHeader:[B
    .end local v3           #chunkLen:I
    :cond_365
    return-void
.end method

.method public WriteFile(Ljava/io/File;II)V
    .registers 27
    .parameter "outputFile"
    .parameter "startFrame"
    .parameter "numFrames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 228
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mInputFile:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 229
    .local v7, in:Ljava/io/FileInputStream;
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 231
    .local v11, out:Ljava/io/FileOutputStream;
    const-wide/16 v14, 0x0

    .line 232
    .local v14, totalAudioLen:J
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1a
    move/from16 v0, p3

    if-ge v6, v0, :cond_32

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameLens:[I

    move-object/from16 v18, v0

    add-int v19, p2, v6

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v14, v14, v18

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 236
    :cond_32
    const-wide/16 v18, 0x24

    add-long v16, v14, v18

    .line 237
    .local v16, totalDataLen:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mSampleRate:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v9, v0

    .line 238
    .local v9, longSampleRate:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mSampleRate:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mChannels:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v3, v0

    .line 240
    .local v3, byteRate:J
    const/16 v18, 0x2c

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 241
    .local v5, header:[B
    const/16 v18, 0x0

    const/16 v19, 0x52

    aput-byte v19, v5, v18

    .line 242
    const/16 v18, 0x1

    const/16 v19, 0x49

    aput-byte v19, v5, v18

    .line 243
    const/16 v18, 0x2

    const/16 v19, 0x46

    aput-byte v19, v5, v18

    .line 244
    const/16 v18, 0x3

    const/16 v19, 0x46

    aput-byte v19, v5, v18

    .line 245
    const/16 v18, 0x4

    const-wide/16 v19, 0xff

    and-long v19, v19, v16

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 246
    const/16 v18, 0x5

    const/16 v19, 0x8

    shr-long v19, v16, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 247
    const/16 v18, 0x6

    const/16 v19, 0x10

    shr-long v19, v16, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 248
    const/16 v18, 0x7

    const/16 v19, 0x18

    shr-long v19, v16, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 249
    const/16 v18, 0x8

    const/16 v19, 0x57

    aput-byte v19, v5, v18

    .line 250
    const/16 v18, 0x9

    const/16 v19, 0x41

    aput-byte v19, v5, v18

    .line 251
    const/16 v18, 0xa

    const/16 v19, 0x56

    aput-byte v19, v5, v18

    .line 252
    const/16 v18, 0xb

    const/16 v19, 0x45

    aput-byte v19, v5, v18

    .line 253
    const/16 v18, 0xc

    const/16 v19, 0x66

    aput-byte v19, v5, v18

    .line 254
    const/16 v18, 0xd

    const/16 v19, 0x6d

    aput-byte v19, v5, v18

    .line 255
    const/16 v18, 0xe

    const/16 v19, 0x74

    aput-byte v19, v5, v18

    .line 256
    const/16 v18, 0xf

    const/16 v19, 0x20

    aput-byte v19, v5, v18

    .line 257
    const/16 v18, 0x10

    const/16 v19, 0x10

    aput-byte v19, v5, v18

    .line 258
    const/16 v18, 0x11

    const/16 v19, 0x0

    aput-byte v19, v5, v18

    .line 259
    const/16 v18, 0x12

    const/16 v19, 0x0

    aput-byte v19, v5, v18

    .line 260
    const/16 v18, 0x13

    const/16 v19, 0x0

    aput-byte v19, v5, v18

    .line 261
    const/16 v18, 0x14

    const/16 v19, 0x1

    aput-byte v19, v5, v18

    .line 262
    const/16 v18, 0x15

    const/16 v19, 0x0

    aput-byte v19, v5, v18

    .line 263
    const/16 v18, 0x16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mChannels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 264
    const/16 v18, 0x17

    const/16 v19, 0x0

    aput-byte v19, v5, v18

    .line 265
    const/16 v18, 0x18

    const-wide/16 v19, 0xff

    and-long v19, v19, v9

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 266
    const/16 v18, 0x19

    const/16 v19, 0x8

    shr-long v19, v9, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 267
    const/16 v18, 0x1a

    const/16 v19, 0x10

    shr-long v19, v9, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 268
    const/16 v18, 0x1b

    const/16 v19, 0x18

    shr-long v19, v9, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 269
    const/16 v18, 0x1c

    const-wide/16 v19, 0xff

    and-long v19, v19, v3

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 270
    const/16 v18, 0x1d

    const/16 v19, 0x8

    shr-long v19, v3, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 271
    const/16 v18, 0x1e

    const/16 v19, 0x10

    shr-long v19, v3, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 272
    const/16 v18, 0x1f

    const/16 v19, 0x18

    shr-long v19, v3, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 273
    const/16 v18, 0x20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mChannels:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 274
    const/16 v18, 0x21

    const/16 v19, 0x0

    aput-byte v19, v5, v18

    .line 275
    const/16 v18, 0x22

    const/16 v19, 0x10

    aput-byte v19, v5, v18

    .line 276
    const/16 v18, 0x23

    const/16 v19, 0x0

    aput-byte v19, v5, v18

    .line 277
    const/16 v18, 0x24

    const/16 v19, 0x64

    aput-byte v19, v5, v18

    .line 278
    const/16 v18, 0x25

    const/16 v19, 0x61

    aput-byte v19, v5, v18

    .line 279
    const/16 v18, 0x26

    const/16 v19, 0x74

    aput-byte v19, v5, v18

    .line 280
    const/16 v18, 0x27

    const/16 v19, 0x61

    aput-byte v19, v5, v18

    .line 281
    const/16 v18, 0x28

    const-wide/16 v19, 0xff

    and-long v19, v19, v14

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 282
    const/16 v18, 0x29

    const/16 v19, 0x8

    shr-long v19, v14, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 283
    const/16 v18, 0x2a

    const/16 v19, 0x10

    shr-long v19, v14, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 284
    const/16 v18, 0x2b

    const/16 v19, 0x18

    shr-long v19, v14, v19

    const-wide/16 v21, 0xff

    and-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v5, v18

    .line 285
    const/16 v18, 0x0

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameBytes:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v2, v0, [B

    .line 288
    .local v2, buffer:[B
    const/4 v12, 0x0

    .line 289
    .local v12, pos:I
    const/4 v6, 0x0

    :goto_27b
    move/from16 v0, p3

    if-ge v6, v0, :cond_2b5

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameOffsets:[I

    move-object/from16 v18, v0

    add-int v19, p2, v6

    aget v18, v18, v19

    sub-int v13, v18, v12

    .line 291
    .local v13, skip:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameLens:[I

    move-object/from16 v18, v0

    add-int v19, p2, v6

    aget v8, v18, v19

    .line 292
    .local v8, len:I
    if-gez v13, :cond_29a

    .line 289
    :goto_297
    add-int/lit8 v6, v6, 0x1

    goto :goto_27b

    .line 295
    :cond_29a
    if-lez v13, :cond_2a5

    .line 296
    int-to-long v0, v13

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    .line 297
    add-int/2addr v12, v13

    .line 299
    :cond_2a5
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v2, v0, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 300
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v2, v0, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 301
    add-int/2addr v12, v8

    goto :goto_297

    .line 304
    .end local v8           #len:I
    .end local v13           #skip:I
    :cond_2b5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 305
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 306
    return-void
.end method

.method public getAvgBitrateKbps()I
    .registers 3

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mSampleRate:I

    iget v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mChannels:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public getFiletype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const-string v0, "WAV"

    return-object v0
.end method

.method public getFrameGains()[I
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mFrameGains:[I

    return-object v0
.end method

.method public getNumFrames()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mNumFrames:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mSampleRate:I

    return v0
.end method

.method public getSamplesPerFrame()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->mSampleRate:I

    div-int/lit8 v0, v0, 0x32

    return v0
.end method

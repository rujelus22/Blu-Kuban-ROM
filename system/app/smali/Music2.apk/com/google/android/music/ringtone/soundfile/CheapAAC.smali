.class public Lcom/google/android/music/ringtone/soundfile/CheapAAC;
.super Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
.source "CheapAAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;
    }
.end annotation


# static fields
.field public static final kRequiredAtoms:[I

.field public static final kSaveDataAtoms:[I


# instance fields
.field private mAtomMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrate:I

.field private mChannels:I

.field private mFileSize:I

.field private mFrameGains:[I

.field private mFrameLens:[I

.field private mFrameOffsets:[I

.field private mMaxGain:I

.field private mMdatLength:I

.field private mMdatOffset:I

.field private mMinGain:I

.field private mNumFrames:I

.field private mOffset:I

.field private mSampleRate:I

.field private mSamplesPerFrame:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->kRequiredAtoms:[I

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->kSaveDataAtoms:[I

    return-void

    .line 70
    :array_12
    .array-data 0x4
        0x66t 0x6et 0x69t 0x64t
        0x72t 0x6ct 0x64t 0x68t
        0x64t 0x68t 0x64t 0x6dt
        0x61t 0x69t 0x64t 0x6dt
        0x66t 0x6et 0x69t 0x6dt
        0x76t 0x6ft 0x6ft 0x6dt
        0x64t 0x68t 0x76t 0x6dt
        0x64t 0x68t 0x6dt 0x73t
        0x6ct 0x62t 0x74t 0x73t
        0x64t 0x73t 0x74t 0x73t
        0x7at 0x73t 0x74t 0x73t
        0x73t 0x74t 0x74t 0x73t
        0x64t 0x68t 0x6bt 0x74t
        0x6bt 0x61t 0x72t 0x74t
    .end array-data

    .line 87
    :array_32
    .array-data 0x4
        0x66t 0x6et 0x69t 0x64t
        0x72t 0x6ct 0x64t 0x68t
        0x64t 0x68t 0x64t 0x6dt
        0x64t 0x68t 0x76t 0x6dt
        0x64t 0x68t 0x6dt 0x73t
        0x64t 0x68t 0x6bt 0x74t
        0x64t 0x73t 0x74t 0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;-><init>()V

    .line 119
    return-void
.end method

.method public static getFactory()Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC$1;

    invoke-direct {v0}, Lcom/google/android/music/ringtone/soundfile/CheapAAC$1;-><init>()V

    return-object v0
.end method

.method private parseMp4(Ljava/io/InputStream;I)V
    .registers 18
    .parameter "stream"
    .parameter "maxLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    :goto_0
    const/16 v12, 0x8

    move/from16 v0, p2

    if-le v0, v12, :cond_122

    .line 252
    iget v8, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 254
    .local v8, initialOffset:I
    const/16 v12, 0x8

    new-array v3, v12, [B

    .line 255
    .local v3, atomHeader:[B
    const/4 v12, 0x0

    const/16 v13, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12, v13}, Ljava/io/InputStream;->read([BII)I

    .line 256
    const/4 v12, 0x0

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    const/4 v13, 0x1

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    const/4 v13, 0x2

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    const/4 v13, 0x3

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    or-int v4, v12, v13

    .line 270
    .local v4, atomLen:I
    move/from16 v0, p2

    if-le v4, v0, :cond_38

    .line 271
    move/from16 v4, p2

    .line 272
    :cond_38
    const/4 v12, 0x4

    aget-byte v12, v3, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    const/4 v13, 0x5

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    const/4 v13, 0x6

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    const/4 v13, 0x7

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    or-int v5, v12, v13

    .line 278
    .local v5, atomType:I
    new-instance v2, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    invoke-direct {v2, p0}, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;-><init>(Lcom/google/android/music/ringtone/soundfile/CheapAAC;)V

    .line 279
    .local v2, atom:Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;
    iget v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    iput v12, v2, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->start:I

    .line 280
    iput v4, v2, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    .line 281
    iget-object v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    add-int/lit8 v12, v12, 0x8

    iput v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 285
    const v12, 0x6d6f6f76

    if-eq v5, v12, :cond_89

    const v12, 0x7472616b

    if-eq v5, v12, :cond_89

    const v12, 0x6d646961

    if-eq v5, v12, :cond_89

    const v12, 0x6d696e66

    if-eq v5, v12, :cond_89

    const v12, 0x7374626c

    if-ne v5, v12, :cond_bf

    .line 290
    :cond_89
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v4}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->parseMp4(Ljava/io/InputStream;I)V

    .line 309
    :cond_8e
    :goto_8e
    const v12, 0x73747364

    if-ne v5, v12, :cond_96

    .line 310
    invoke-virtual {p0}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->parseMp4aFromStsd()V

    .line 313
    :cond_96
    sub-int p2, p2, v4

    .line 314
    iget v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    sub-int/2addr v12, v8

    sub-int v11, v4, v12

    .line 321
    .local v11, skipLen:I
    if-gez v11, :cond_115

    .line 322
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Went over by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    neg-int v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 291
    .end local v11           #skipLen:I
    :cond_bf
    const v12, 0x7374737a

    if-ne v5, v12, :cond_cc

    .line 292
    add-int/lit8 v12, v4, -0x8

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->parseStsz(Ljava/io/InputStream;I)V

    goto :goto_8e

    .line 293
    :cond_cc
    const v12, 0x73747473

    if-ne v5, v12, :cond_d9

    .line 294
    add-int/lit8 v12, v4, -0x8

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->parseStts(Ljava/io/InputStream;I)V

    goto :goto_8e

    .line 295
    :cond_d9
    const v12, 0x6d646174

    if-ne v5, v12, :cond_e7

    .line 296
    iget v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    iput v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMdatOffset:I

    .line 297
    add-int/lit8 v12, v4, -0x8

    iput v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMdatLength:I

    goto :goto_8e

    .line 299
    :cond_e7
    sget-object v1, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->kSaveDataAtoms:[I

    .local v1, arr$:[I
    array-length v9, v1

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_eb
    if-ge v7, v9, :cond_8e

    aget v10, v1, v7

    .line 300
    .local v10, savedAtomType:I
    if-ne v10, v5, :cond_112

    .line 301
    add-int/lit8 v12, v4, -0x8

    new-array v6, v12, [B

    .line 302
    .local v6, data:[B
    const/4 v12, 0x0

    add-int/lit8 v13, v4, -0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v12, v13}, Ljava/io/InputStream;->read([BII)I

    .line 303
    iget v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    add-int/lit8 v13, v4, -0x8

    add-int/2addr v12, v13

    iput v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 304
    iget-object v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iput-object v6, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->data:[B

    .line 299
    .end local v6           #data:[B
    :cond_112
    add-int/lit8 v7, v7, 0x1

    goto :goto_eb

    .line 326
    .end local v1           #arr$:[I
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v10           #savedAtomType:I
    .restart local v11       #skipLen:I
    :cond_115
    int-to-long v12, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/InputStream;->skip(J)J

    .line 327
    iget v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    add-int/2addr v12, v11

    iput v12, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    goto/16 :goto_0

    .line 329
    .end local v2           #atom:Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;
    .end local v3           #atomHeader:[B
    .end local v4           #atomLen:I
    .end local v5           #atomType:I
    .end local v8           #initialOffset:I
    .end local v11           #skipLen:I
    :cond_122
    return-void
.end method


# virtual methods
.method public ReadFile(Ljava/io/File;)V
    .registers 13
    .parameter "inputFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 173
    invoke-super {p0, p1}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->ReadFile(Ljava/io/File;)V

    .line 174
    iput v9, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mChannels:I

    .line 175
    iput v9, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mSampleRate:I

    .line 176
    iput v9, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mBitrate:I

    .line 177
    iput v9, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mSamplesPerFrame:I

    .line 178
    iput v9, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    .line 179
    const/16 v7, 0xff

    iput v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMinGain:I

    .line 180
    iput v9, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMaxGain:I

    .line 181
    iput v9, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 182
    iput v8, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMdatOffset:I

    .line 183
    iput v8, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMdatLength:I

    .line 185
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    .line 188
    iget-object v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mInputFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFileSize:I

    .line 192
    iget v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFileSize:I

    const/16 v8, 0x80

    if-ge v7, v8, :cond_3b

    .line 193
    new-instance v7, Ljava/io/IOException;

    const-string v8, "File too small to parse"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 197
    :cond_3b
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mInputFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 198
    .local v6, stream:Ljava/io/FileInputStream;
    new-array v2, v10, [B

    .line 199
    .local v2, header:[B
    invoke-virtual {v6, v2, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    .line 201
    aget-byte v7, v2, v9

    if-nez v7, :cond_c6

    const/4 v7, 0x4

    aget-byte v7, v2, v7

    const/16 v8, 0x66

    if-ne v7, v8, :cond_c6

    const/4 v7, 0x5

    aget-byte v7, v2, v7

    const/16 v8, 0x74

    if-ne v7, v8, :cond_c6

    const/4 v7, 0x6

    aget-byte v7, v2, v7

    const/16 v8, 0x79

    if-ne v7, v8, :cond_c6

    const/4 v7, 0x7

    aget-byte v7, v2, v7

    const/16 v8, 0x70

    if-ne v7, v8, :cond_c6

    .line 207
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #stream:Ljava/io/FileInputStream;
    iget-object v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mInputFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 208
    .restart local v6       #stream:Ljava/io/FileInputStream;
    iget v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFileSize:I

    invoke-direct {p0, v6, v7}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->parseMp4(Ljava/io/InputStream;I)V

    .line 213
    iget v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMdatOffset:I

    if-lez v7, :cond_ce

    iget v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMdatLength:I

    if-lez v7, :cond_ce

    .line 214
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #stream:Ljava/io/FileInputStream;
    iget-object v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mInputFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 215
    .restart local v6       #stream:Ljava/io/FileInputStream;
    iget v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMdatOffset:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/io/FileInputStream;->skip(J)J

    .line 216
    iget v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMdatOffset:I

    iput v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 217
    iget v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMdatLength:I

    invoke-virtual {p0, v6, v7}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->parseMdat(Ljava/io/InputStream;I)V

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, bad:Z
    sget-object v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->kRequiredAtoms:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_96
    if-ge v3, v4, :cond_d6

    aget v5, v0, v3

    .line 235
    .local v5, requiredAtomType:I
    iget-object v7, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c3

    .line 236
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing atom: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v5}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->atomToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    const/4 v1, 0x1

    .line 234
    :cond_c3
    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    .line 210
    .end local v0           #arr$:[I
    .end local v1           #bad:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #requiredAtomType:I
    :cond_c6
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Unknown file format"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 219
    :cond_ce
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Didn\'t find mdat"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 242
    .restart local v0       #arr$:[I
    .restart local v1       #bad:Z
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_d6
    if-eqz v1, :cond_e0

    .line 243
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Could not parse MP4 file"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 245
    :cond_e0
    return-void
.end method

.method public SetAtomData(I[B)V
    .registers 6
    .parameter "atomType"
    .parameter "data"

    .prologue
    .line 579
    iget-object v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    .line 580
    .local v0, atom:Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;
    if-nez v0, :cond_1c

    .line 581
    new-instance v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    .end local v0           #atom:Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;
    invoke-direct {v0, p0}, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;-><init>(Lcom/google/android/music/ringtone/soundfile/CheapAAC;)V

    .line 582
    .restart local v0       #atom:Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;
    iget-object v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_1c
    array-length v1, p2

    add-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    .line 585
    iput-object p2, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->data:[B

    .line 586
    return-void
.end method

.method public StartAtom(Ljava/io/FileOutputStream;I)V
    .registers 9
    .parameter "out"
    .parameter "atomType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 558
    new-array v0, v5, [B

    .line 559
    .local v0, atomHeader:[B
    iget-object v2, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v1, v2, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    .line 560
    .local v1, atomLen:I
    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 561
    const/4 v2, 0x1

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 562
    const/4 v2, 0x2

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 563
    const/4 v2, 0x3

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 564
    const/4 v2, 0x4

    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 565
    const/4 v2, 0x5

    shr-int/lit8 v3, p2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 566
    const/4 v2, 0x6

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 567
    const/4 v2, 0x7

    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 568
    invoke-virtual {p1, v0, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 569
    return-void
.end method

.method public WriteAtom(Ljava/io/FileOutputStream;I)V
    .registers 7
    .parameter "out"
    .parameter "atomType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    .line 574
    .local v0, atom:Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->StartAtom(Ljava/io/FileOutputStream;I)V

    .line 575
    iget-object v1, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->data:[B

    const/4 v2, 0x0

    iget v3, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 576
    return-void
.end method

.method public WriteFile(Ljava/io/File;II)V
    .registers 20
    .parameter "outputFile"
    .parameter "startFrame"
    .parameter "numFrames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->createNewFile()Z

    .line 591
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mInputFile:Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 592
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 594
    .local v8, out:Ljava/io/FileOutputStream;
    const v12, 0x66747970

    const/16 v13, 0x18

    new-array v13, v13, [B

    fill-array-data v13, :array_52c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->SetAtomData(I[B)V

    .line 603
    const v12, 0x73747473

    const/16 v13, 0x10

    new-array v13, v13, [B

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x6

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x7

    const/4 v15, 0x1

    aput-byte v15, v13, v14

    const/16 v14, 0x8

    shr-int/lit8 v15, p3, 0x18

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0x9

    shr-int/lit8 v15, p3, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0xa

    shr-int/lit8 v15, p3, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0xb

    move/from16 v0, p3

    and-int/lit16 v15, v0, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0xc

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mSamplesPerFrame:I

    shr-int/lit8 v15, v15, 0x18

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0xd

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mSamplesPerFrame:I

    shr-int/lit8 v15, v15, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0xe

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mSamplesPerFrame:I

    shr-int/lit8 v15, v15, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0xf

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mSamplesPerFrame:I

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->SetAtomData(I[B)V

    .line 616
    const v12, 0x73747363

    const/16 v13, 0x14

    new-array v13, v13, [B

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x6

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x7

    const/4 v15, 0x1

    aput-byte v15, v13, v14

    const/16 v14, 0x8

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/16 v14, 0x9

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/16 v14, 0xa

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/16 v14, 0xb

    const/4 v15, 0x1

    aput-byte v15, v13, v14

    const/16 v14, 0xc

    shr-int/lit8 v15, p3, 0x18

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0xd

    shr-int/lit8 v15, p3, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0xe

    shr-int/lit8 v15, p3, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0xf

    move/from16 v0, p3

    and-int/lit16 v15, v0, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0x10

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/16 v14, 0x11

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/16 v14, 0x12

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/16 v14, 0x13

    const/4 v15, 0x1

    aput-byte v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->SetAtomData(I[B)V

    .line 627
    mul-int/lit8 v12, p3, 0x4

    add-int/lit8 v12, v12, 0xc

    new-array v11, v12, [B

    .line 628
    .local v11, stszData:[B
    const/16 v12, 0x8

    shr-int/lit8 v13, p3, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 629
    const/16 v12, 0x9

    shr-int/lit8 v13, p3, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 630
    const/16 v12, 0xa

    shr-int/lit8 v13, p3, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 631
    const/16 v12, 0xb

    move/from16 v0, p3

    and-int/lit16 v13, v0, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 632
    const/4 v2, 0x0

    .local v2, i:I
    :goto_147
    move/from16 v0, p3

    if-ge v2, v0, :cond_198

    .line 633
    mul-int/lit8 v12, v2, 0x4

    add-int/lit8 v12, v12, 0xc

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    add-int v14, p2, v2

    aget v13, v13, v14

    shr-int/lit8 v13, v13, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 635
    mul-int/lit8 v12, v2, 0x4

    add-int/lit8 v12, v12, 0xd

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    add-int v14, p2, v2

    aget v13, v13, v14

    shr-int/lit8 v13, v13, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 637
    mul-int/lit8 v12, v2, 0x4

    add-int/lit8 v12, v12, 0xe

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    add-int v14, p2, v2

    aget v13, v13, v14

    shr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 639
    mul-int/lit8 v12, v2, 0x4

    add-int/lit8 v12, v12, 0xf

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    add-int v14, p2, v2

    aget v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 632
    add-int/lit8 v2, v2, 0x1

    goto :goto_147

    .line 642
    :cond_198
    const v12, 0x7374737a

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->SetAtomData(I[B)V

    .line 644
    mul-int/lit8 v12, p3, 0x4

    add-int/lit16 v13, v12, 0x90

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x73747364

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v12, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x73747363

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v12, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x6d766864

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v12, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x746b6864

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v12, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x6d646864

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v12, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x68646c72

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v12, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x736d6864

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v12, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x64696e66

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v12, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int v7, v13, v12

    .line 658
    .local v7, mdatOffset:I
    const v12, 0x7374636f

    const/16 v13, 0xc

    new-array v13, v13, [B

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x6

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    const/4 v14, 0x7

    const/4 v15, 0x1

    aput-byte v15, v13, v14

    const/16 v14, 0x8

    shr-int/lit8 v15, v7, 0x18

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0x9

    shr-int/lit8 v15, v7, 0x10

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0xa

    shr-int/lit8 v15, v7, 0x8

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    const/16 v14, 0xb

    and-int/lit16 v15, v7, 0xff

    int-to-byte v15, v15

    aput-byte v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->SetAtomData(I[B)V

    .line 667
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v13, 0x7374626c

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x73747364

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/lit8 v14, v13, 0x8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v15, 0x73747473

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v15, 0x73747363

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v15, 0x7374737a

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v15, 0x7374636f

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v14

    iput v13, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    .line 675
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v13, 0x6d696e66

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x64696e66

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/lit8 v14, v13, 0x8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v15, 0x736d6864

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v15, 0x7374626c

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v14

    iput v13, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    .line 681
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v13, 0x6d646961

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x6d646864

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/lit8 v14, v13, 0x8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v15, 0x68646c72

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v15, 0x6d696e66

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v14

    iput v13, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    .line 687
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v13, 0x7472616b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x746b6864

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/lit8 v14, v13, 0x8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v15, 0x6d646961

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v14

    iput v13, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    .line 692
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v13, 0x6d6f6f76

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v14, 0x6d766864

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/lit8 v14, v13, 0x8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v15, 0x7472616b

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget v13, v13, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    add-int/2addr v13, v14

    iput v13, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    .line 697
    const/16 v6, 0x8

    .line 698
    .local v6, mdatLen:I
    const/4 v2, 0x0

    :goto_426
    move/from16 v0, p3

    if-ge v2, v0, :cond_436

    .line 699
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    add-int v13, p2, v2

    aget v12, v12, v13

    add-int/2addr v6, v12

    .line 698
    add-int/lit8 v2, v2, 0x1

    goto :goto_426

    .line 701
    :cond_436
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v13, 0x6d646174

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iput v6, v12, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->len:I

    .line 703
    const v12, 0x66747970

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 704
    const v12, 0x6d6f6f76

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->StartAtom(Ljava/io/FileOutputStream;I)V

    .line 706
    const v12, 0x6d766864

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 707
    const v12, 0x7472616b

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->StartAtom(Ljava/io/FileOutputStream;I)V

    .line 709
    const v12, 0x746b6864

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 710
    const v12, 0x6d646961

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->StartAtom(Ljava/io/FileOutputStream;I)V

    .line 712
    const v12, 0x6d646864

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 713
    const v12, 0x68646c72

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 714
    const v12, 0x6d696e66

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->StartAtom(Ljava/io/FileOutputStream;I)V

    .line 716
    const v12, 0x64696e66

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 717
    const v12, 0x736d6864

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 718
    const v12, 0x7374626c

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->StartAtom(Ljava/io/FileOutputStream;I)V

    .line 720
    const v12, 0x73747364

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 721
    const v12, 0x73747473

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 722
    const v12, 0x73747363

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 723
    const v12, 0x7374737a

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 724
    const v12, 0x7374636f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->WriteAtom(Ljava/io/FileOutputStream;I)V

    .line 730
    const v12, 0x6d646174

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->StartAtom(Ljava/io/FileOutputStream;I)V

    .line 732
    const/4 v5, 0x0

    .line 733
    .local v5, maxFrameLen:I
    const/4 v2, 0x0

    :goto_4db
    move/from16 v0, p3

    if-ge v2, v0, :cond_4f4

    .line 734
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    add-int v13, p2, v2

    aget v12, v12, v13

    if-le v12, v5, :cond_4f1

    .line 735
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    add-int v13, p2, v2

    aget v5, v12, v13

    .line 733
    :cond_4f1
    add-int/lit8 v2, v2, 0x1

    goto :goto_4db

    .line 737
    :cond_4f4
    new-array v1, v5, [B

    .line 738
    .local v1, buffer:[B
    const/4 v9, 0x0

    .line 739
    .local v9, pos:I
    const/4 v2, 0x0

    :goto_4f8
    move/from16 v0, p3

    if-ge v2, v0, :cond_524

    .line 740
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameOffsets:[I

    add-int v13, p2, v2

    aget v12, v12, v13

    sub-int v10, v12, v9

    .line 741
    .local v10, skip:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    add-int v13, p2, v2

    aget v4, v12, v13

    .line 742
    .local v4, len:I
    if-gez v10, :cond_513

    .line 739
    :goto_510
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f8

    .line 745
    :cond_513
    if-lez v10, :cond_51a

    .line 746
    int-to-long v12, v10

    invoke-virtual {v3, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    .line 747
    add-int/2addr v9, v10

    .line 749
    :cond_51a
    const/4 v12, 0x0

    invoke-virtual {v3, v1, v12, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 750
    const/4 v12, 0x0

    invoke-virtual {v8, v1, v12, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 751
    add-int/2addr v9, v4

    goto :goto_510

    .line 754
    .end local v4           #len:I
    .end local v10           #skip:I
    :cond_524
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 755
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 756
    return-void

    .line 594
    nop

    :array_52c
    .array-data 0x1
        0x4dt
        0x34t
        0x41t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4dt
        0x34t
        0x41t
        0x20t
        0x6dt
        0x70t
        0x34t
        0x32t
        0x69t
        0x73t
        0x6ft
        0x6dt
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public atomToString(I)Ljava/lang/String;
    .registers 5
    .parameter "atomType"

    .prologue
    .line 162
    const-string v0, ""

    .line 163
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public getAvgBitrateKbps()I
    .registers 4

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFileSize:I

    iget v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    iget v2, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mSamplesPerFrame:I

    mul-int/2addr v1, v2

    div-int/2addr v0, v1

    return v0
.end method

.method public getFiletype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    const-string v0, "AAC"

    return-object v0
.end method

.method public getFrameGains()[I
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    return-object v0
.end method

.method public getNumFrames()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mSampleRate:I

    return v0
.end method

.method public getSamplesPerFrame()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mSamplesPerFrame:I

    return v0
.end method

.method parseMdat(Ljava/io/InputStream;I)V
    .registers 11
    .parameter "stream"
    .parameter "maxLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    iget v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 390
    .local v1, initialOffset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    if-ge v0, v3, :cond_50

    .line 391
    iget-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameOffsets:[I

    iget v4, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    aput v4, v3, v0

    .line 397
    iget v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, -0x8

    if-le v3, v4, :cond_51

    .line 398
    iget-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    const/4 v4, 0x0

    aput v4, v3, v0

    .line 402
    :goto_1e
    iget-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMinGain:I

    if-ge v3, v4, :cond_2c

    .line 403
    iget-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMinGain:I

    .line 404
    :cond_2c
    iget-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    aget v3, v3, v0

    iget v4, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMaxGain:I

    if-le v3, v4, :cond_3a

    .line 405
    iget-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mMaxGain:I

    .line 407
    :cond_3a
    iget-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mProgressListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

    if-eqz v3, :cond_55

    .line 408
    iget-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mProgressListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

    iget v4, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFileSize:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-interface {v3, v4, v5}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;->reportProgress(D)Z

    move-result v2

    .line 410
    .local v2, keepGoing:Z
    if-nez v2, :cond_55

    .line 415
    .end local v2           #keepGoing:Z
    :cond_50
    return-void

    .line 400
    :cond_51
    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->readFrameAndComputeGain(Ljava/io/InputStream;I)V

    goto :goto_1e

    .line 390
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method parseMp4aFromStsd()V
    .registers 4

    .prologue
    .line 374
    iget-object v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mAtomMap:Ljava/util/HashMap;

    const v2, 0x73747364

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;

    iget-object v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapAAC$Atom;->data:[B

    .line 375
    .local v0, stsdData:[B
    const/16 v1, 0x20

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0x21

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mChannels:I

    .line 378
    const/16 v1, 0x28

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0x29

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mSampleRate:I

    .line 384
    return-void
.end method

.method parseStsz(Ljava/io/InputStream;I)V
    .registers 9
    .parameter "stream"
    .parameter "maxLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    const/4 v5, 0x0

    .line 347
    new-array v2, v3, [B

    .line 348
    .local v2, stszHeader:[B
    invoke-virtual {p1, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    .line 349
    iget v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    add-int/lit8 v3, v3, 0xc

    iput v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 350
    const/16 v3, 0x8

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/16 v4, 0x9

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/16 v4, 0xa

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/16 v4, 0xb

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    .line 357
    iget v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameOffsets:[I

    .line 358
    iget v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    .line 359
    iget v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    .line 360
    iget v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    mul-int/lit8 v3, v3, 0x4

    new-array v0, v3, [B

    .line 361
    .local v0, frameLenBytes:[B
    iget v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {p1, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    .line 362
    iget v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    iget v4, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 363
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5a
    iget v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mNumFrames:I

    if-ge v1, v3, :cond_8e

    .line 364
    iget-object v3, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v3, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 371
    :cond_8e
    return-void
.end method

.method parseStts(Ljava/io/InputStream;I)V
    .registers 6
    .parameter "stream"
    .parameter "maxLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    .line 333
    new-array v0, v2, [B

    .line 334
    .local v0, sttsData:[B
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 335
    iget v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    add-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 336
    const/16 v1, 0xc

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/16 v2, 0xe

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/16 v2, 0xf

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mSamplesPerFrame:I

    .line 343
    return-void
.end method

.method readFrameAndComputeGain(Ljava/io/InputStream;I)V
    .registers 29
    .parameter "stream"
    .parameter "frameIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    move-object/from16 v23, v0

    aget v23, v23, p2

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2f

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v24, v23, p2

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    move-object/from16 v23, v0

    aget v23, v23, p2

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 554
    :goto_2e
    return-void

    .line 426
    :cond_2f
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 428
    .local v11, initialOffset:I
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v8, v0, [B

    .line 429
    .local v8, data:[B
    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 439
    const/16 v23, 0x0

    aget-byte v23, v8, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xe0

    move/from16 v23, v0

    shr-int/lit8 v10, v23, 0x5

    .line 442
    .local v10, idSynEle:I
    packed-switch v10, :pswitch_data_1cc

    .line 539
    if-lez p2, :cond_1bf

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v24, v0

    add-int/lit8 v25, p2, -0x1

    aget v24, v24, v25

    aput v24, v23, p2

    .line 548
    :goto_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameLens:[I

    move-object/from16 v23, v0

    aget v23, v23, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    move/from16 v24, v0

    sub-int v24, v24, v11

    sub-int v19, v23, v24

    .line 552
    .local v19, skip:I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    move/from16 v23, v0

    add-int v23, v23, v19

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    goto :goto_2e

    .line 444
    .end local v19           #skip:I
    :pswitch_a4
    const/16 v23, 0x0

    aget-byte v23, v8, v23

    and-int/lit8 v23, v23, 0x1

    shl-int/lit8 v23, v23, 0x7

    const/16 v24, 0x1

    aget-byte v24, v8, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xfe

    move/from16 v24, v0

    shr-int/lit8 v24, v24, 0x1

    or-int v14, v23, v24

    .line 446
    .local v14, monoGain:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v23, v0

    aput v14, v23, p2

    goto :goto_77

    .line 449
    .end local v14           #monoGain:I
    :pswitch_c3
    const/16 v23, 0x1

    aget-byte v23, v8, v23

    and-int/lit8 v23, v23, 0x60

    shr-int/lit8 v21, v23, 0x5

    .line 451
    .local v21, windowSequence:I
    const/16 v23, 0x1

    aget-byte v23, v8, v23

    and-int/lit8 v23, v23, 0x10

    shr-int/lit8 v22, v23, 0x4

    .line 459
    .local v22, windowShape:I
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_121

    .line 460
    const/16 v23, 0x1

    aget-byte v23, v8, v23

    and-int/lit8 v13, v23, 0xf

    .line 462
    .local v13, maxSfb:I
    const/16 v23, 0x2

    aget-byte v23, v8, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xfe

    move/from16 v23, v0

    shr-int/lit8 v17, v23, 0x1

    .line 464
    .local v17, scaleFactorGrouping:I
    const/16 v23, 0x2

    aget-byte v23, v8, v23

    and-int/lit8 v23, v23, 0x1

    shl-int/lit8 v23, v23, 0x1

    const/16 v24, 0x3

    aget-byte v24, v8, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    shr-int/lit8 v24, v24, 0x7

    or-int v12, v23, v24

    .line 468
    .local v12, maskPresent:I
    const/16 v20, 0x19

    .line 487
    .local v20, startBit:I
    :goto_105
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_14a

    .line 488
    const/16 v18, 0x0

    .line 489
    .local v18, sfgZeroBitCount:I
    const/4 v4, 0x0

    .local v4, b:I
    :goto_10e
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ge v4, v0, :cond_144

    .line 490
    const/16 v23, 0x1

    shl-int v23, v23, v4

    and-int v23, v23, v17

    if-nez v23, :cond_11e

    .line 494
    add-int/lit8 v18, v18, 0x1

    .line 489
    :cond_11e
    add-int/lit8 v4, v4, 0x1

    goto :goto_10e

    .line 470
    .end local v4           #b:I
    .end local v12           #maskPresent:I
    .end local v13           #maxSfb:I
    .end local v17           #scaleFactorGrouping:I
    .end local v18           #sfgZeroBitCount:I
    .end local v20           #startBit:I
    :cond_121
    const/16 v23, 0x1

    aget-byte v23, v8, v23

    and-int/lit8 v23, v23, 0xf

    shl-int/lit8 v23, v23, 0x2

    const/16 v24, 0x2

    aget-byte v24, v8, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xc0

    move/from16 v24, v0

    shr-int/lit8 v24, v24, 0x6

    or-int v13, v23, v24

    .line 474
    .restart local v13       #maxSfb:I
    const/16 v17, -0x1

    .line 476
    .restart local v17       #scaleFactorGrouping:I
    const/16 v23, 0x2

    aget-byte v23, v8, v23

    and-int/lit8 v23, v23, 0x18

    shr-int/lit8 v12, v23, 0x3

    .line 478
    .restart local v12       #maskPresent:I
    const/16 v20, 0x15

    .restart local v20       #startBit:I
    goto :goto_105

    .line 499
    .restart local v4       #b:I
    .restart local v18       #sfgZeroBitCount:I
    :cond_144
    add-int/lit8 v15, v18, 0x1

    .line 502
    .local v15, numWindowGroups:I
    mul-int v19, v13, v15

    .line 505
    .restart local v19       #skip:I
    add-int v20, v20, v19

    .line 511
    .end local v4           #b:I
    .end local v15           #numWindowGroups:I
    .end local v18           #sfgZeroBitCount:I
    .end local v19           #skip:I
    :cond_14a
    add-int/lit8 v23, v20, 0x7

    div-int/lit8 v23, v23, 0x8

    add-int/lit8 v7, v23, 0x1

    .line 512
    .local v7, bytesNeeded:I
    move-object/from16 v16, v8

    .line 513
    .local v16, oldData:[B
    new-array v8, v7, [B

    .line 514
    const/16 v23, 0x0

    const/16 v24, 0x0

    aget-byte v24, v16, v24

    aput-byte v24, v8, v23

    .line 515
    const/16 v23, 0x1

    const/16 v24, 0x1

    aget-byte v24, v16, v24

    aput-byte v24, v8, v23

    .line 516
    const/16 v23, 0x2

    const/16 v24, 0x2

    aget-byte v24, v16, v24

    aput-byte v24, v8, v23

    .line 517
    const/16 v23, 0x3

    const/16 v24, 0x3

    aget-byte v24, v16, v24

    aput-byte v24, v8, v23

    .line 518
    const/16 v23, 0x4

    add-int/lit8 v24, v7, -0x4

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v8, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    move/from16 v23, v0

    add-int/lit8 v24, v7, -0x4

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mOffset:I

    .line 522
    const/4 v9, 0x0

    .line 523
    .local v9, firstChannelGain:I
    const/4 v4, 0x0

    .restart local v4       #b:I
    :goto_193
    const/16 v23, 0x8

    move/from16 v0, v23

    if-ge v4, v0, :cond_1b5

    .line 524
    add-int v23, v4, v20

    div-int/lit8 v5, v23, 0x8

    .line 525
    .local v5, b0:I
    add-int v23, v4, v20

    rem-int/lit8 v23, v23, 0x8

    rsub-int/lit8 v6, v23, 0x7

    .line 526
    .local v6, b1:I
    const/16 v23, 0x1

    shl-int v23, v23, v6

    aget-byte v24, v8, v5

    and-int v23, v23, v24

    shr-int v23, v23, v6

    rsub-int/lit8 v24, v4, 0x7

    shl-int v3, v23, v24

    .line 531
    .local v3, add:I
    add-int/2addr v9, v3

    .line 523
    add-int/lit8 v4, v4, 0x1

    goto :goto_193

    .line 535
    .end local v3           #add:I
    .end local v5           #b0:I
    .end local v6           #b1:I
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v23, v0

    aput v9, v23, p2

    goto/16 :goto_77

    .line 542
    .end local v4           #b:I
    .end local v7           #bytesNeeded:I
    .end local v9           #firstChannelGain:I
    .end local v12           #maskPresent:I
    .end local v13           #maxSfb:I
    .end local v16           #oldData:[B
    .end local v17           #scaleFactorGrouping:I
    .end local v20           #startBit:I
    .end local v21           #windowSequence:I
    .end local v22           #windowShape:I
    :cond_1bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->mFrameGains:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v24, v23, p2

    goto/16 :goto_77

    .line 442
    nop

    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_c3
    .end packed-switch
.end method

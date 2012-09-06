.class public Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
.super Ljava/lang/Object;
.source "CheapSoundFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;,
        Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;
    }
.end annotation


# static fields
.field private static final HEX_CHARS:[C

.field static sExtensionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;",
            ">;"
        }
    .end annotation
.end field

.field static sSubclassFactories:[Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;

.field static sSupportedExtensions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mInputFile:Ljava/io/File;

.field protected mProgressListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    .line 55
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;

    const/4 v9, 0x0

    invoke-static {}, Lcom/google/android/music/ringtone/soundfile/CheapAAC;->getFactory()Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/google/android/music/ringtone/soundfile/CheapAMR;->getFactory()Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/google/android/music/ringtone/soundfile/CheapMP3;->getFactory()Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {}, Lcom/google/android/music/ringtone/soundfile/CheapWAV;->getFactory()Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;

    move-result-object v10

    aput-object v10, v8, v9

    sput-object v8, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->sSubclassFactories:[Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;

    .line 62
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->sSupportedExtensions:Ljava/util/ArrayList;

    .line 63
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->sExtensionMap:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->sSubclassFactories:[Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;

    .local v0, arr$:[Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_34
    if-ge v5, v6, :cond_53

    aget-object v3, v0, v5

    .line 68
    .local v3, f:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;
    invoke-interface {v3}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;->getSupportedExtensions()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_3e
    if-ge v4, v7, :cond_4f

    aget-object v2, v1, v4

    .line 69
    .local v2, extension:Ljava/lang/String;
    sget-object v8, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->sSupportedExtensions:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v8, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->sExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 67
    .end local v2           #extension:Ljava/lang/String;
    :cond_4f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_34

    .line 187
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #f:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;
    .end local v7           #len$:I
    :cond_53
    const/16 v8, 0x10

    new-array v8, v8, [C

    fill-array-data v8, :array_5e

    sput-object v8, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->HEX_CHARS:[C

    return-void

    nop

    :array_5e
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->mProgressListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

    .line 122
    iput-object v0, p0, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->mInputFile:Ljava/io/File;

    .line 125
    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;)Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
    .registers 9
    .parameter "fileName"
    .parameter "progressListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_12

    .line 87
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_12
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, name:Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, components:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_25

    .line 101
    :cond_24
    :goto_24
    return-object v4

    .line 94
    :cond_25
    sget-object v5, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->sExtensionMap:Ljava/util/HashMap;

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;

    .line 95
    .local v2, factory:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;
    if-eqz v2, :cond_24

    .line 98
    invoke-interface {v2}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$Factory;->create()Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;

    move-result-object v4

    .line 99
    .local v4, soundFile:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;
    invoke-virtual {v4, p1}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->setProgressListener(Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;)V

    .line 100
    invoke-virtual {v4, v1}, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->ReadFile(Ljava/io/File;)V

    goto :goto_24
.end method


# virtual methods
.method public ReadFile(Ljava/io/File;)V
    .registers 2
    .parameter "inputFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->mInputFile:Ljava/io/File;

    .line 131
    return-void
.end method

.method public WriteFile(Ljava/io/File;II)V
    .registers 4
    .parameter "outputFile"
    .parameter "startFrame"
    .parameter "numFrames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    return-void
.end method

.method public getAvgBitrateKbps()I
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getFiletype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    const-string v0, "Unknown"

    return-object v0
.end method

.method public getFrameGains()[I
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumFrames()I
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getSamplesPerFrame()I
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getSeekableFrameOffset(I)I
    .registers 3
    .parameter "frame"

    .prologue
    .line 184
    const/4 v0, -0x1

    return v0
.end method

.method public setProgressListener(Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;)V
    .registers 2
    .parameter "progressListener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/music/ringtone/soundfile/CheapSoundFile;->mProgressListener:Lcom/google/android/music/ringtone/soundfile/CheapSoundFile$ProgressListener;

    .line 135
    return-void
.end method

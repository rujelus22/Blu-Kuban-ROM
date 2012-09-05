.class public Lcom/sec/android/providers/downloads/SecContentType;
.super Ljava/lang/Object;
.source "SecContentType.java"


# static fields
.field private static sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

.field private static final sSupportedAudioTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedContentTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedImageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedVideoTypes:Ljava/util/ArrayList;
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
.field private mMimeTypeToExtensionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    .line 74
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "text/x-vCalendar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "text/x-vCard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/aac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/amr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/imelody"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/midi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mpeg3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-mid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-midi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-mp3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-mpeg3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-mpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-mpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/3gpp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "audio/ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "video/3gpp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "video/3gpp2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "video/h263"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    if-nez v0, :cond_f2

    .line 107
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_f2
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedContentTypes:Ljava/util/ArrayList;

    const-string v1, "application/vnd.oma.drm.message"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedImageTypes:Ljava/util/ArrayList;

    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/aac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/amr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/imelody"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/midi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mpeg3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/mp4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-mid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-midi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-mp3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-mpeg3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-mpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/x-mpg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/3gpp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedAudioTypes:Ljava/util/ArrayList;

    const-string v1, "audio/ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/3gpp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/3gpp2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/h263"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 226
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecContentType;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    .line 228
    return-void
.end method

.method public static getSingleton()Lcom/sec/android/providers/downloads/SecContentType;
    .registers 3

    .prologue
    .line 263
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    if-nez v0, :cond_2ff

    .line 264
    new-instance v0, Lcom/sec/android/providers/downloads/SecContentType;

    invoke-direct {v0}, Lcom/sec/android/providers/downloads/SecContentType;-><init>()V

    sput-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    .line 267
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/mp3"

    const-string v2, "mp3"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/mpeg"

    const-string v2, "mp3"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/mpeg3"

    const-string v2, "mp3"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/mpg"

    const-string v2, "mp3"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/aac"

    const-string v2, "aac"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/g72"

    const-string v2, "aac"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/amr"

    const-string v2, "amr"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/amr-wb"

    const-string v2, "amr"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/mmf"

    const-string v2, "mmf"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/smaf"

    const-string v2, "mmf"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/iMelody"

    const-string v2, "imy"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/imelody"

    const-string v2, "imy"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/melody"

    const-string v2, "imy"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/mid"

    const-string v2, "mid"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/midi"

    const-string v2, "mid"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/sp-midi"

    const-string v2, "mid"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/wave"

    const-string v2, "wav"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/wav"

    const-string v2, "wav"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/3gpp"

    const-string v2, "3gp"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/mp4"

    const-string v2, "mp4"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/MP4A-LATM"

    const-string v2, "mp4"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/m4a"

    const-string v2, "m4a"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/mpeg4"

    const-string v2, "mp4"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/wma"

    const-string v2, "wma"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/xmf"

    const-string v2, "xmf"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/imy"

    const-string v2, "imy"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/mobile-xmf"

    const-string v2, "mxmf"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/vnd.rn-realaudio"

    const-string v2, "rm"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/vnd.rn-realmedia"

    const-string v2, "rm"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-mpeg"

    const-string v2, "mp3"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-mp3"

    const-string v2, "mp3"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-mpeg3"

    const-string v2, "mp3"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-mpg"

    const-string v2, "mp3"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-amr"

    const-string v2, "amr"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-mmf"

    const-string v2, "mmf"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-smaf"

    const-string v2, "mmf"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-iMelody"

    const-string v2, "imy"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-midi"

    const-string v2, "mid"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-mpegaudio"

    const-string v2, "mp3"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-pn-multirate-realaudio"

    const-string v2, "rm"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-pn-multirate-realaudio-live"

    const-string v2, "rm"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-wave"

    const-string v2, "wav"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-ms-wma"

    const-string v2, "wma"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-mid"

    const-string v2, "mid"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-ms-asf"

    const-string v2, "asf"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "audio/x-xmf"

    const-string v2, "xmf"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "text/x-iMelody"

    const-string v2, "imy"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "text/x-imelody"

    const-string v2, "imy"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/mpeg4"

    const-string v2, "mp4"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/H263"

    const-string v2, "3gp"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/3gp"

    const-string v2, "3gp"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/avi"

    const-string v2, "avi"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/sdp"

    const-string v2, "sdp"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/mp4v-es"

    const-string v2, "3gp"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/H264"

    const-string v2, "3gp"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/vnd.rn-realvideo"

    const-string v2, "rm"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/vnd.rn-realmedia"

    const-string v2, "rm"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/x-mp4"

    const-string v2, "mp4"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/x-pv-mp4"

    const-string v2, "mp4"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/x-pn-realvideo"

    const-string v2, "rv"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/x-pn-multirate-realvideo"

    const-string v2, "rm"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "video/x-pv-pvx"

    const-string v2, "pvx"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/sdp"

    const-string v2, "sdp"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/smil"

    const-string v2, "smil"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/vnd.framemaker"

    const-string v2, "fm"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/pdf"

    const-string v2, "pdf"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "ppt"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v2, "pptx"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/vnd.visio"

    const-string v2, "vsd"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/msword"

    const-string v2, "doc"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v2, "docx"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/x-tar"

    const-string v2, "tar"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/x-gzip"

    const-string v2, "gz"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/x-compressed"

    const-string v2, "tgz"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/java-archive"

    const-string v2, "jar"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/java"

    const-string v2, "jar"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "application/vnd.sun.j2me.java-archive"

    const-string v2, "jar"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "text/vnd.sun.j2me.app-descriptor"

    const-string v2, "jad"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "image/jpg"

    const-string v2, "jpg"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "image/tif"

    const-string v2, "tif"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "image/wbmp"

    const-string v2, "wbmp"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "image/pjpeg"

    const-string v2, "jpg"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "image/vnd.tmo.my5-gif"

    const-string v2, "gif"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    const-string v1, "image/vnd.tmo.my5-jpg"

    const-string v2, "jpg"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecContentType;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_2ff
    sget-object v0, Lcom/sec/android/providers/downloads/SecContentType;->sMimeTypeMap:Lcom/sec/android/providers/downloads/SecContentType;

    return-object v0
.end method

.method public static isAudioType(Ljava/lang/String;)Z
    .registers 2
    .parameter "contentType"

    .prologue
    .line 176
    if-eqz p0, :cond_c

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isImageType(Ljava/lang/String;)Z
    .registers 2
    .parameter "contentType"

    .prologue
    .line 172
    if-eqz p0, :cond_c

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isVideoType(Ljava/lang/String;)Z
    .registers 2
    .parameter "contentType"

    .prologue
    .line 180
    if-eqz p0, :cond_c

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private loadEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "mimeType"
    .parameter "extension"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecContentType;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 236
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecContentType;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_d
    return-void
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 250
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 251
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecContentType;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

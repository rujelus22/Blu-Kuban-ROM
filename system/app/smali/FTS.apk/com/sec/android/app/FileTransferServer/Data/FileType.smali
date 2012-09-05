.class public Lcom/sec/android/app/FileTransferServer/Data/FileType;
.super Ljava/lang/Object;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;
    }
.end annotation


# static fields
.field public static sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeType:Ljava/util/HashMap;
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

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/16 v10, 0x55

    const/16 v9, 0x54

    const/16 v8, 0x52

    const/16 v7, 0xf

    const/16 v6, 0x17

    .line 202
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/android/app/FileTransferServer/Data/FileType;->sFileTypeMap:Ljava/util/HashMap;

    .line 203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/android/app/FileTransferServer/Data/FileType;->sMimeTypeMap:Ljava/util/HashMap;

    .line 204
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/android/app/FileTransferServer/Data/FileType;->sMimeType:Ljava/util/HashMap;

    .line 215
    const-string v2, "MP3"

    const/4 v3, 0x1

    const-string v4, "audio/mpeg"

    const-string v5, "Mpeg"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v2, "M4A"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    const-string v5, "M4A"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "WAV"

    const/4 v3, 0x3

    const-string v4, "audio/x-wav"

    const-string v5, "WAVE"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "AMR"

    const/4 v3, 0x4

    const-string v4, "audio/amr"

    const-string v5, "AMR"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "AWB"

    const/4 v3, 0x5

    const-string v4, "audio/amr-wb"

    const-string v5, "AWB"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "WMA"

    const/4 v3, 0x6

    const-string v4, "audio/x-ms-wma"

    const-string v5, "WMA"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "OGG"

    const/4 v3, 0x7

    const-string v4, "audio/ogg"

    const-string v5, "OGG"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v2, "OGA"

    const/4 v3, 0x7

    const-string v4, "audio/ogg"

    const-string v5, "OGA"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac"

    const-string v5, "AAC"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, "RA"

    const-string v3, "audio/x-pn-realaudio"

    const-string v4, "RA"

    invoke-static {v2, v7, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v2, "RM"

    const-string v3, "audio/x-pn-realaudio"

    const-string v4, "RM"

    invoke-static {v2, v7, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "RAM"

    const-string v3, "audio/x-pn-realaudio"

    const-string v4, "RAM"

    invoke-static {v2, v7, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v2, "RA"

    const-string v3, "audio/s-realaudio"

    const-string v4, "RA"

    invoke-static {v2, v7, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v2, "3GA"

    const/16 v3, 0x9

    const-string v4, "audio/3gpp"

    const-string v5, "3GA"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "FLAC"

    const/16 v3, 0xa

    const-string v4, "audio/flac"

    const-string v5, "FLAC"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v2, "AIF"

    const/16 v3, 0xb

    const-string v4, "audio/aif"

    const-string v5, "AIF"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v2, "AIFC"

    const/16 v3, 0xb

    const-string v4, "audio/aifc"

    const-string v5, "AIFC"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v2, "AIFF"

    const/16 v3, 0xb

    const-string v4, "audio/aiff"

    const-string v5, "AIFF"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "MP4_A"

    const/16 v3, 0x10

    const-string v4, "audio/mp4"

    const-string v5, "MP4 Audio"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v2, "3GP_A"

    const/16 v3, 0x11

    const-string v4, "audio/3gpp"

    const-string v5, "3GP Audio"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v2, "3G2_A"

    const/16 v3, 0x12

    const-string v4, "audio/3gpp2"

    const-string v5, "3G2 Audio"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v2, "ASF_A"

    const/16 v3, 0x13

    const-string v4, "audio/x-ms-asf"

    const-string v5, "ASF Audio"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v2, "3GPP_A"

    const/16 v3, 0x14

    const-string v4, "audio/3gpp"

    const-string v5, "3GPP"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v2, "QCP"

    const/16 v3, 0x15

    const-string v4, "audio/qcelp"

    const-string v5, "QCP"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v2, "EVC"

    const/16 v3, 0x16

    const-string v4, "audio/evrc"

    const-string v5, "EVC"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "MID"

    const-string v3, "audio/mid"

    const-string v4, "MIDI"

    invoke-static {v2, v6, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v2, "XMF"

    const-string v3, "audio/midi"

    const-string v4, "XMF"

    invoke-static {v2, v6, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v2, "MXMF"

    const-string v3, "audio/midi"

    const-string v4, "MXMF"

    invoke-static {v2, v6, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "RTTTL"

    const-string v3, "audio/midi"

    const-string v4, "RTTTL"

    invoke-static {v2, v6, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "SMF"

    const/16 v3, 0x18

    const-string v4, "audio/sp-midi"

    const-string v5, "SMF"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v2, "IMY"

    const/16 v3, 0x19

    const-string v4, "audio/imelody"

    const-string v5, "IMY"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "MIDI"

    const-string v3, "audio/midi"

    const-string v4, "MIDI"

    invoke-static {v2, v6, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "RTX"

    const-string v3, "audio/midi"

    const-string v4, "MIDI"

    invoke-static {v2, v6, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v2, "OTA"

    const-string v3, "audio/midi"

    const-string v4, "MIDI"

    invoke-static {v2, v6, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v2, "PYA"

    const/16 v3, 0xe

    const-string v4, "audio/vnd.ms-playready.media.pya"

    const-string v5, "PYA"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, "MPEG"

    const/16 v3, 0x24

    const-string v4, "video/mpeg"

    const-string v5, "MPEG"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v2, "MPG"

    const/16 v3, 0x24

    const-string v4, "video/mpeg"

    const-string v5, "MPEG"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v2, "MP4"

    const/16 v3, 0x1f

    const-string v4, "video/mp4"

    const-string v5, "MP4"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "M4V"

    const/16 v3, 0x20

    const-string v4, "video/mp4"

    const-string v5, "M4V"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v2, "3GP"

    const/16 v3, 0x21

    const-string v4, "video/3gpp"

    const-string v5, "3GP"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v2, "3GPP"

    const/16 v3, 0x21

    const-string v4, "video/3gpp"

    const-string v5, "3GPP"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v2, "3G2"

    const/16 v3, 0x22

    const-string v4, "video/3gpp2"

    const-string v5, "3G2"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v2, "3GPP2"

    const/16 v3, 0x22

    const-string v4, "video/3gpp2"

    const-string v5, "3GPP2"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "WMV"

    const/16 v3, 0x23

    const-string v4, "video/x-ms-wmv"

    const-string v5, "WMV"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v2, "ASF"

    const/16 v3, 0x25

    const-string v4, "video/x-ms-asf"

    const-string v5, "ASF"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v2, "AVI"

    const/16 v3, 0x26

    const-string v4, "video/avi"

    const-string v5, "AVI"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v2, "DIVX"

    const/16 v3, 0x27

    const-string v4, "video/divx"

    const-string v5, "DIVX"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v2, "FLV"

    const/16 v3, 0x28

    const-string v4, "video/flv"

    const-string v5, "FLV"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v2, "MKV"

    const/16 v3, 0x29

    const-string v4, "video/mkv"

    const-string v5, "MKV"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v2, "SDP"

    const/16 v3, 0x2b

    const-string v4, "application/sdp"

    const-string v5, "SDP"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v2, "WEBM"

    const/16 v3, 0x2c

    const-string v4, "video/webm"

    const-string v5, "WEBM"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v2, "RM"

    const/16 v3, 0x2d

    const-string v4, "video/x-ms-real"

    const-string v5, "RM"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "RMVB"

    const/16 v3, 0x2d

    const-string v4, "video/x-ms-real"

    const-string v5, "RMVB"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v2, "PYV"

    const/16 v3, 0x2a

    const-string v4, "video/vnd.ms-playready.media.pyv"

    const-string v5, "PYV"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, "SKM"

    const/16 v3, 0x2e

    const-string v4, "video/skm"

    const-string v5, "SKM"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v2, "K3G"

    const/16 v3, 0x2f

    const-string v4, "video/k3g"

    const-string v5, "K3G"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v2, "AK3G"

    const/16 v3, 0x30

    const-string v4, "video/ak3g"

    const-string v5, "AK3G"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "JPG"

    const/16 v3, 0x33

    const-string v4, "image/jpeg"

    const-string v5, "JPEG"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v2, "JPEG"

    const/16 v3, 0x33

    const-string v4, "image/jpeg"

    const-string v5, "JPEG"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v2, "MY5"

    const/16 v3, 0x33

    const-string v4, "image/vnd.tmo.my5"

    const-string v5, "JPEG"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "GIF"

    const/16 v3, 0x34

    const-string v4, "image/gif"

    const-string v5, "GIF"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "PNG"

    const/16 v3, 0x35

    const-string v4, "image/png"

    const-string v5, "PNG"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v2, "BMP"

    const/16 v3, 0x36

    const-string v4, "image/x-ms-bmp"

    const-string v5, "Microsoft BMP"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "WBMP"

    const/16 v3, 0x37

    const-string v4, "image/vnd.wap.wbmp"

    const-string v5, "Wireless BMP"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, "M3U"

    const/16 v3, 0x47

    const-string v4, "audio/x-mpegurl"

    const-string v5, "M3U"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "PLS"

    const/16 v3, 0x48

    const-string v4, "audio/x-scpls"

    const-string v5, "PLS"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v2, "WPL"

    const/16 v3, 0x49

    const-string v4, "application/vnd.ms-wpl"

    const-string v5, "WPL"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "PDF"

    const/16 v3, 0x51

    const-string v4, "application/pdf"

    const-string v5, "Acrobat PDF"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v2, "DOC"

    const-string v3, "application/msword"

    const-string v4, "Microsoft Office WORD"

    invoke-static {v2, v8, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v2, "DOCX"

    const-string v3, "application/msword"

    const-string v4, "Microsoft Office WORD"

    invoke-static {v2, v8, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v2, "DOT"

    const-string v3, "application/msword"

    const-string v4, "Microsoft Office WORD"

    invoke-static {v2, v8, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "DOTX"

    const-string v3, "application/msword"

    const-string v4, "Microsoft Office WORD"

    invoke-static {v2, v8, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "RTF"

    const/16 v3, 0x53

    const-string v4, "application/rtf"

    const-string v5, "ThinkFree Office"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "XLS"

    const-string v3, "application/vnd.ms-excel"

    const-string v4, "Microsoft Office Excel"

    invoke-static {v2, v9, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v2, "XLSX"

    const-string v3, "application/vnd.ms-excel"

    const-string v4, "Microsoft Office Excel"

    invoke-static {v2, v9, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v2, "XLT"

    const-string v3, "application/vnd.ms-excel"

    const-string v4, "Microsoft Office Excel"

    invoke-static {v2, v9, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v2, "XLTX"

    const-string v3, "application/vnd.ms-excel"

    const-string v4, "Microsoft Office Excel"

    invoke-static {v2, v9, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v2, "PPT"

    const-string v3, "application/vnd.ms-powerpoint"

    const-string v4, "Microsoft Office PowerPoint"

    invoke-static {v2, v10, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v2, "POT"

    const-string v3, "application/vnd.ms-powerpoint"

    const-string v4, "Microsoft Office PowerPoint"

    invoke-static {v2, v10, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v2, "POTX"

    const-string v3, "application/vnd.ms-powerpoint"

    const-string v4, "Microsoft Office PowerPoint"

    invoke-static {v2, v10, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v2, "PPTX"

    const-string v3, "application/vnd.ms-powerpoint"

    const-string v4, "Microsoft Office PowerPoint"

    invoke-static {v2, v10, v3, v4}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v2, "TXT"

    const/16 v3, 0x56

    const-string v4, "text/plain"

    const-string v5, "Text Document"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v2, "GUL"

    const/16 v3, 0x57

    const-string v4, "application/jungumword"

    const-string v5, "Jungum Word"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v2, "EPUB"

    const/16 v3, 0x58

    const-string v4, "application/epub+zip"

    const-string v5, "eBookReader"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v2, "ACSM"

    const/16 v3, 0x58

    const-string v4, "application/vnd.adobe.adept+xml"

    const-string v5, "eBookReader"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, "CSV"

    const/16 v3, 0x59

    const-string v4, "text/comma-separated-values"

    const-string v5, "CSV"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v2, "PPS"

    const/16 v3, 0x5a

    const-string v4, "application/vnd.ms-powerpoint"

    const-string v5, "PPS"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v2, "PPSX"

    const/16 v3, 0x5b

    const-string v4, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v5, "PPSX"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v2, "SWF"

    const/16 v3, 0x60

    const-string v4, "application/x-shockwave-flash"

    const-string v5, "SWF"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v2, "SVG"

    const/16 v3, 0x61

    const-string v4, "image/svg+xml"

    const-string v5, "SVG"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v2, "DCF"

    const/16 v3, 0x5e

    const-string v4, "application/vnd.oma.drm.content"

    const-string v5, "DRM Content"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v2, "ODF"

    const/16 v3, 0x5f

    const-string v4, "application/vnd.oma.drm.content"

    const-string v5, "DRM Content"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v2, "APK"

    const/16 v3, 0x64

    const-string v4, "application/apk"

    const-string v5, "Android package install file"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v2, "JAD"

    const/16 v3, 0x6e

    const-string v4, "text/vnd.sun.j2me.app-descriptor"

    const-string v5, "JAD"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v2, "JAR"

    const/16 v3, 0x6f

    const-string v4, "application/java-archive "

    const-string v5, "JAR"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "VCS"

    const/16 v3, 0x78

    const-string v4, "text/x-vCalendar"

    const-string v5, "VCS"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "VCF"

    const/16 v3, 0x79

    const-string v4, "text/x-vcard"

    const-string v5, "VCF"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v2, "VNT"

    const/16 v3, 0x7a

    const-string v4, "text/x-vnote"

    const-string v5, "VNT"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v2, "HTML"

    const/16 v3, 0x7e

    const-string v4, "text/html"

    const-string v5, "HTML"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v2, "HTM"

    const/16 v3, 0x7e

    const-string v4, "text/html"

    const-string v5, "HTML"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v2, "XML"

    const/16 v3, 0x7f

    const-string v4, "application/xhtml+xml"

    const-string v5, "XML"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v2, "SMI"

    const/16 v3, 0x81

    const-string v4, "application/smil"

    const-string v5, "SMI"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "SRT"

    const/16 v3, 0x81

    const-string v4, "application/smil"

    const-string v5, "SRT"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "SUB"

    const/16 v3, 0x81

    const-string v4, "application/smil"

    const-string v5, "SUB"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v2, "WEBARCHIVEXML"

    const/16 v3, 0x80

    const-string v4, "application/x-webarchive-xml"

    const-string v5, "WEBARCHIVEXML"

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v2, Lcom/sec/android/app/FileTransferServer/Data/FileType;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 331
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_47b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_496

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_48c

    .line 335
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    :cond_48c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47b

    .line 339
    :cond_496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/FileTransferServer/Data/FileType;->sFileExtensions:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "desc"

    .prologue
    .line 208
    sget-object v0, Lcom/sec/android/app/FileTransferServer/Data/FileType;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/sec/android/app/FileTransferServer/Data/FileType;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/sec/android/app/FileTransferServer/Data/FileType;->sMimeType:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "path"

    .prologue
    .line 549
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 550
    .local v0, lastDot:I
    if-gez v0, :cond_a

    .line 551
    const/4 v1, 0x0

    .line 553
    :goto_9
    return-object v1

    :cond_a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;
    .registers 5
    .parameter "path"

    .prologue
    .line 429
    invoke-static {p0}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, ext:Ljava/lang/String;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileType :getFileType : extention"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-nez v0, :cond_20

    .line 432
    const/4 v1, 0x0

    .line 434
    :goto_1f
    return-object v1

    :cond_20
    sget-object v1, Lcom/sec/android/app/FileTransferServer/Data/FileType;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;

    goto :goto_1f
.end method

.method public static getFileTypeInt(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 439
    invoke-static {p0}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->getFileType(Ljava/lang/String;)Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;

    move-result-object v0

    .line 440
    .local v0, mediaType:Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    iget v1, v0, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;->fileType:I

    goto :goto_7
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "path"

    .prologue
    .line 445
    invoke-static {p0}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->getFileType(Ljava/lang/String;)Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;

    move-result-object v0

    .line 446
    .local v0, mediaType:Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;
    if-nez v0, :cond_9

    const-string v1, ""

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;->mimeType:Ljava/lang/String;

    goto :goto_8
.end method

.method public static getMimeTypeFromMediaStore(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "path"
    .parameter "context"

    .prologue
    .line 501
    invoke-static {p0}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, ext:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 504
    const/4 v1, 0x0

    .line 509
    :goto_7
    return-object v1

    .line 506
    :cond_8
    invoke-static {p0, p1}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->isAudioInMediaStore(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 507
    sget-object v1, Lcom/sec/android/app/FileTransferServer/Data/FileType;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;

    iget-object v1, v1, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;->mimeType:Ljava/lang/String;

    goto :goto_7

    .line 509
    :cond_2c
    sget-object v1, Lcom/sec/android/app/FileTransferServer/Data/FileType;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;

    iget-object v1, v1, Lcom/sec/android/app/FileTransferServer/Data/FileType$MediaType;->mimeType:Ljava/lang/String;

    goto :goto_7
.end method

.method private static isAudioInMediaStore(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 11
    .parameter "path"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 515
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 517
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 519
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_31

    move v1, v7

    .line 544
    :goto_30
    return v1

    .line 524
    :cond_31
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_45

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 529
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_4a

    .line 531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v8

    .line 533
    goto :goto_30

    .line 538
    :cond_45
    if-eqz v6, :cond_4a

    .line 540
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4a
    move v1, v7

    .line 544
    goto :goto_30
.end method

.method public static isInstallFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    const/16 v0, 0x64

    .line 381
    if-lt p0, v0, :cond_8

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static needToCheckMimeType(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 474
    invoke-static {p0}, Lcom/sec/android/app/FileTransferServer/Data/FileType;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, ext:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 483
    :cond_7
    :goto_7
    return v1

    .line 479
    :cond_8
    const-string v2, "MP4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "3GP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "3G2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "ASF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "3GPP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "RM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 481
    :cond_38
    const/4 v1, 0x1

    goto :goto_7
.end method

.class public Lcom/sec/android/app/myfiles/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;
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
            "Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;",
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
    const v10, 0x7f02004d

    const v9, 0x7f02004a

    const v8, 0x7f020049

    const v7, 0x7f020031

    const v6, 0x7f020030

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/MediaFile;->sMimeType:Ljava/util/HashMap;

    .line 321
    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const-string v3, "Mpeg"

    const v4, 0x7f02003e

    const v5, 0x7f02003f

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 323
    const-string v0, "M4A"

    const/4 v1, 0x2

    const-string v2, "audio/mp4"

    const-string v3, "M4A"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 325
    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v2, "audio/x-wav"

    const-string v3, "WAVE"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 327
    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v2, "audio/amr"

    const-string v3, "AMR"

    const v4, 0x7f02002c

    const v5, 0x7f02002d

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 329
    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v2, "audio/amr-wb"

    const-string v3, "AWB"

    const v4, 0x7f02002c

    const v5, 0x7f02002d

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 331
    const-string v0, "WMA"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    const-string v3, "WMA"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 333
    const-string v0, "OGG"

    const/4 v1, 0x7

    const-string v2, "audio/ogg"

    const-string v3, "OGG"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 335
    const-string v0, "OGA"

    const/4 v1, 0x7

    const-string v2, "audio/ogg"

    const-string v3, "OGA"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 337
    const-string v0, "AAC"

    const/16 v1, 0x8

    const-string v2, "audio/aac"

    const-string v3, "AAC"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 340
    const-string v0, "3GA"

    const/16 v1, 0x9

    const-string v2, "audio/3gpp"

    const-string v3, "3GA"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 342
    const-string v0, "FLAC"

    const/16 v1, 0xa

    const-string v2, "audio/flac"

    const-string v3, "FLAC"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 345
    const-string v0, "MPGA"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const-string v3, "MPGA"

    const v4, 0x7f02003e

    const v5, 0x7f02003f

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 348
    const-string v0, "MP4_A"

    const/16 v1, 0x10

    const-string v2, "audio/mp4"

    const-string v3, "MP4 Audio"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 350
    const-string v0, "3GP_A"

    const/16 v1, 0x11

    const-string v2, "audio/3gpp"

    const-string v3, "3GP Audio"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 352
    const-string v0, "3G2_A"

    const/16 v1, 0x12

    const-string v2, "audio/3gpp2"

    const-string v3, "3G2 Audio"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 354
    const-string v0, "ASF_A"

    const/16 v1, 0x13

    const-string v2, "audio/x-ms-asf"

    const-string v3, "ASF Audio"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 356
    const-string v0, "3GPP_A"

    const/16 v1, 0x14

    const-string v2, "audio/3gpp"

    const-string v3, "3GPP"

    const v4, 0x7f02002a

    const v5, 0x7f02002b

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 359
    const-string v0, "MID"

    const/16 v1, 0x17

    const-string v2, "audio/midi"

    const-string v3, "MIDI"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 361
    const-string v0, "XMF"

    const/16 v1, 0x17

    const-string v2, "audio/midi"

    const-string v3, "XMF"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 363
    const-string v0, "MXMF"

    const/16 v1, 0x17

    const-string v2, "audio/midi"

    const-string v3, "MXMF"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 365
    const-string v0, "RTTTL"

    const/16 v1, 0x17

    const-string v2, "audio/midi"

    const-string v3, "RTTTL"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 367
    const-string v0, "SMF"

    const/16 v1, 0x18

    const-string v2, "audio/sp-midi"

    const-string v3, "SMF"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 369
    const-string v0, "IMY"

    const/16 v1, 0x19

    const-string v2, "audio/imelody"

    const-string v3, "IMY"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 379
    const-string v0, "QCP"

    const/16 v1, 0x15

    const-string v2, "audio/qcelp"

    const-string v3, "QCP"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 383
    const-string v0, "EVC"

    const/16 v1, 0x16

    const-string v2, "audio/evrc"

    const-string v3, "EVC"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 387
    const-string v0, "MIDI"

    const/16 v1, 0x17

    const-string v2, "audio/midi"

    const-string v3, "MIDI"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 390
    const-string v0, "RTX"

    const/16 v1, 0x17

    const-string v2, "audio/midi"

    const-string v3, "MIDI"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 392
    const-string v0, "OTA"

    const/16 v1, 0x17

    const-string v2, "audio/midi"

    const-string v3, "MIDI"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 395
    const-string v0, "PYA"

    const/16 v1, 0xc

    const-string v2, "audio/vnd.ms-playready.media.pya"

    const-string v3, "PYA"

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 408
    const-string v0, "MPEG"

    const/16 v1, 0x24

    const-string v2, "video/mpeg"

    const-string v3, "MPEG"

    const v4, 0x7f020040

    const v5, 0x7f020041

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 410
    const-string v0, "MPG"

    const/16 v1, 0x24

    const-string v2, "video/mpeg"

    const-string v3, "MPEG"

    const v4, 0x7f020040

    const v5, 0x7f020041

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 412
    const-string v0, "MP4"

    const/16 v1, 0x1f

    const-string v2, "video/mp4"

    const-string v3, "MP4"

    const v4, 0x7f020040

    const v5, 0x7f020041

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 414
    const-string v0, "M4V"

    const/16 v1, 0x20

    const-string v2, "video/mp4"

    const-string v3, "M4V"

    const v4, 0x7f020040

    const v5, 0x7f020041

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 416
    const-string v0, "3GP"

    const/16 v1, 0x21

    const-string v2, "video/3gpp"

    const-string v3, "3GP"

    const v4, 0x7f02002a

    const v5, 0x7f02002b

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 418
    const-string v0, "3GPP"

    const/16 v1, 0x21

    const-string v2, "video/3gpp"

    const-string v3, "3GPP"

    const v4, 0x7f02002a

    const v5, 0x7f02002b

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 420
    const-string v0, "3G2"

    const/16 v1, 0x22

    const-string v2, "video/3gpp2"

    const-string v3, "3G2"

    const v4, 0x7f02002a

    const v5, 0x7f02002b

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 422
    const-string v0, "3GPP2"

    const/16 v1, 0x22

    const-string v2, "video/3gpp2"

    const-string v3, "3GPP2"

    const v4, 0x7f02002a

    const v5, 0x7f02002b

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 424
    const-string v0, "WMV"

    const/16 v1, 0x23

    const-string v2, "video/x-ms-wmv"

    const-string v3, "WMV"

    const v5, 0x7f02004e

    move v4, v10

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 426
    const-string v0, "ASF"

    const/16 v1, 0x25

    const-string v2, "video/x-ms-asf"

    const-string v3, "ASF"

    const v5, 0x7f02004e

    move v4, v10

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 428
    const-string v0, "AVI"

    const/16 v1, 0x26

    const-string v2, "video/avi"

    const-string v3, "AVI"

    const v5, 0x7f02004e

    move v4, v10

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 430
    const-string v0, "DIVX"

    const/16 v1, 0x27

    const-string v2, "video/divx"

    const-string v3, "DIVX"

    const v5, 0x7f02004e

    move v4, v10

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 432
    const-string v0, "FLV"

    const/16 v1, 0x28

    const-string v2, "video/flv"

    const-string v3, "FLV"

    const v5, 0x7f02004e

    move v4, v10

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 434
    const-string v0, "MKV"

    const/16 v1, 0x29

    const-string v2, "video/mkv"

    const-string v3, "MKV"

    const v5, 0x7f02004e

    move v4, v10

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 436
    const-string v0, "SDP"

    const/16 v1, 0x33

    const-string v2, "application/sdp"

    const-string v3, "SDP"

    const v5, 0x7f02004e

    move v4, v10

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 440
    const-string v0, "PYV"

    const/16 v1, 0x2b

    const-string v2, "video/vnd.ms-playready.media.pyv"

    const-string v3, "PYV"

    const v5, 0x7f02004e

    move v4, v10

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 444
    const-string v0, "MOV"

    const/16 v1, 0x2a

    const-string v2, "video/quicktime"

    const-string v3, "MOV"

    const v5, 0x7f02004e

    move v4, v10

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 475
    const-string v0, "WEBM"

    const/16 v1, 0x31

    const-string v2, "video/webm"

    const-string v3, "WEBM"

    const v4, 0x7f020080

    const v5, 0x7f0200a3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 477
    const-string v0, "JPG"

    const/16 v1, 0x3c

    const-string v2, "image/jpeg"

    const-string v3, "JPEG"

    move v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 479
    const-string v0, "JPEG"

    const/16 v1, 0x3c

    const-string v2, "image/jpeg"

    const-string v3, "JPEG"

    move v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 481
    const-string v0, "MY5"

    const/16 v1, 0x3c

    const-string v2, "image/vnd.tmo.my5"

    const-string v3, "JPEG"

    move v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 483
    const-string v0, "GIF"

    const/16 v1, 0x3d

    const-string v2, "image/gif"

    const-string v3, "GIF"

    move v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 485
    const-string v0, "PNG"

    const/16 v1, 0x3e

    const-string v2, "image/png"

    const-string v3, "PNG"

    move v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 487
    const-string v0, "BMP"

    const/16 v1, 0x3f

    const-string v2, "image/x-ms-bmp"

    const-string v3, "Microsoft BMP"

    move v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 489
    const-string v0, "WBMP"

    const/16 v1, 0x40

    const-string v2, "image/vnd.wap.wbmp"

    const-string v3, "Wireless BMP"

    move v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 496
    const-string v0, "M3U"

    const/16 v1, 0x47

    const-string v2, "audio/x-mpegurl"

    const-string v3, "M3U"

    const v4, 0x7f020038

    const v5, 0x7f020039

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 498
    const-string v0, "PLS"

    const/16 v1, 0x48

    const-string v2, "audio/x-scpls"

    const-string v3, "PLS"

    const v4, 0x7f020038

    const v5, 0x7f020039

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 500
    const-string v0, "WPL"

    const/16 v1, 0x49

    const-string v2, "application/vnd.ms-wpl"

    const-string v3, "WPL"

    const v4, 0x7f020038

    const v5, 0x7f020039

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 503
    const-string v0, "PDF"

    const/16 v1, 0x51

    const-string v2, "application/pdf"

    const-string v3, "Acrobat PDF"

    const v4, 0x7f020042

    const v5, 0x7f020043

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 505
    const-string v0, "RTF"

    const/16 v1, 0x52

    const-string v2, "application/msword"

    const-string v3, "Microsoft Office WORD"

    const v4, 0x7f020034

    const v5, 0x7f020035

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 507
    const-string v0, "DOC"

    const/16 v1, 0x52

    const-string v2, "application/msword"

    const-string v3, "Microsoft Office WORD"

    const v4, 0x7f020034

    const v5, 0x7f020035

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 509
    const-string v0, "DOCX"

    const/16 v1, 0x52

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v3, "Microsoft Office WORD"

    const v4, 0x7f020034

    const v5, 0x7f020035

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 512
    const-string v0, "DOT"

    const/16 v1, 0x52

    const-string v2, "application/msword"

    const-string v3, "Microsoft Office WORD"

    const v4, 0x7f020034

    const v5, 0x7f020035

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 514
    const-string v0, "DOTX"

    const/16 v1, 0x52

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v3, "Microsoft Office WORD"

    const v4, 0x7f020034

    const v5, 0x7f020035

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 517
    const-string v0, "XLS"

    const/16 v1, 0x53

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "Microsoft Office Excel"

    const v4, 0x7f02004f

    const v5, 0x7f020050

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 519
    const-string v0, "XLSX"

    const/16 v1, 0x53

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v3, "Microsoft Office Excel"

    const v4, 0x7f02004f

    const v5, 0x7f020050

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 522
    const-string v0, "XLT"

    const/16 v1, 0x53

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "Microsoft Office Excel"

    const v4, 0x7f02004f

    const v5, 0x7f020050

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 524
    const-string v0, "XLTX"

    const/16 v1, 0x53

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v3, "Microsoft Office Excel"

    const v4, 0x7f02004f

    const v5, 0x7f020050

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 527
    const-string v0, "PPT"

    const/16 v1, 0x54

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "Microsoft Office PowerPoint"

    const v4, 0x7f020047

    const v5, 0x7f020048

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 529
    const-string v0, "PPTX"

    const/16 v1, 0x54

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v3, "Microsoft Office PowerPoint"

    const v4, 0x7f020047

    const v5, 0x7f020048

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 532
    const-string v0, "POT"

    const/16 v1, 0x54

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "Microsoft Office PowerPoint"

    const v4, 0x7f020047

    const v5, 0x7f020048

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 534
    const-string v0, "POTX"

    const/16 v1, 0x54

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v3, "Microsoft Office PowerPoint"

    const v4, 0x7f020047

    const v5, 0x7f020048

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 537
    const-string v0, "TXT"

    const/16 v1, 0x55

    const-string v2, "text/plain"

    const-string v3, "Text Document"

    const v4, 0x7f02004b

    const v5, 0x7f02004c

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 539
    const-string v0, "GUL"

    const/16 v1, 0x56

    const-string v2, "application/jungumword"

    const-string v3, "Jungum Word"

    const v4, 0x7f02004b

    const v5, 0x7f02004c

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 541
    const-string v0, "SWF"

    const/16 v1, 0x5a

    const-string v2, "application/x-shockwave-flash"

    const-string v3, "SWF"

    move v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 543
    const-string v0, "SVG"

    const/16 v1, 0x5b

    const-string v2, "image/svg+xml"

    const-string v3, "SVG"

    move v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 553
    const-string v0, "DCF"

    const/16 v1, 0x57

    const-string v2, "application/vnd.oma.drm.content"

    const-string v3, "DRM Content"

    const v4, 0x7f020038

    const v5, 0x7f020039

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 555
    const-string v0, "ODF"

    const/16 v1, 0x58

    const-string v2, "application/vnd.oma.drm.content"

    const-string v3, "DRM Content"

    const v4, 0x7f020038

    const v5, 0x7f020039

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 559
    const-string v0, "APK"

    const/16 v1, 0x64

    const-string v2, "application/apk"

    const-string v3, "Android package install file"

    const v4, 0x7f02002e

    const v5, 0x7f02002f

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 562
    const-string v0, "JAD"

    const/16 v1, 0x6e

    const-string v2, "text/vnd.sun.j2me.app-descriptor"

    const-string v3, "JAD"

    const v4, 0x7f020038

    const v5, 0x7f020039

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 564
    const-string v0, "JAR"

    const/16 v1, 0x6f

    const-string v2, "application/java-archive "

    const-string v3, "JAR"

    const v4, 0x7f020038

    const v5, 0x7f020039

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 567
    const-string v0, "VCS"

    const/16 v1, 0x78

    const-string v2, "text/x-vCalendar"

    const-string v3, "VCS"

    const v4, 0x7f02009a

    const v5, 0x7f02009b

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 569
    const-string v0, "ICS"

    const/16 v1, 0x78

    const-string v2, "text/x-vCalendar"

    const-string v3, "ICS"

    const v4, 0x7f02009a

    const v5, 0x7f02009b

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 571
    const-string v0, "VTS"

    const/16 v1, 0x7b

    const-string v2, "text/x-vtodo"

    const-string v3, "VTS"

    const v4, 0x7f020096

    const v5, 0x7f020097

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 573
    const-string v0, "VCF"

    const/16 v1, 0x79

    const-string v2, "text/x-vcard"

    const-string v3, "VCF"

    const v4, 0x7f02009c

    const v5, 0x7f02009d

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 575
    const-string v0, "VNT"

    const/16 v1, 0x7a

    const-string v2, "text/x-vnote"

    const-string v3, "VNT"

    const v4, 0x7f0200a1

    const v5, 0x7f0200a2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 585
    const-string v0, "HTML"

    const/16 v1, 0x7e

    const-string v2, "text/html"

    const-string v3, "HTML"

    const v4, 0x7f02006e

    const v5, 0x7f02006f

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 587
    const-string v0, "HTM"

    const/16 v1, 0x7e

    const-string v2, "text/html"

    const-string v3, "HTML"

    const v4, 0x7f02006e

    const v5, 0x7f02006f

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 589
    const-string v0, "XML"

    const/16 v1, 0x7f

    const-string v2, "application/xhtml+xml"

    const-string v3, "XML"

    const v4, 0x7f02006e

    const v5, 0x7f02006f

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 592
    const-string v0, "WGT"

    const/16 v1, 0x65

    const-string v2, "application/vnd.samsung.widget"

    const-string v3, "WGT"

    const v4, 0x7f02006e

    const v5, 0x7f02006f

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 595
    const-string v0, "HWP"

    const/16 v1, 0x8d

    const-string v2, "application/x-hwp"

    const-string v3, "HWP"

    const v4, 0x7f020070

    const v5, 0x7f020092

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    sget-object v0, Lcom/sec/android/app/myfiles/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 603
    :goto_58e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a9

    .line 604
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_59f

    .line 605
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    :cond_59f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58e

    .line 609
    :cond_5a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/myfiles/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 285
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 13
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "desc"
    .parameter "iconSmall"
    .parameter "iconLarge"

    .prologue
    .line 314
    sget-object v6, Lcom/sec/android/app/myfiles/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/sec/android/app/myfiles/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/sec/android/app/myfiles/MediaFile;->sMimeType:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "path"

    .prologue
    .line 862
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 863
    .local v0, lastDot:I
    if-gez v0, :cond_a

    .line 864
    const/4 v1, 0x0

    .line 866
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

.method public static getFileType(Ljava/lang/String;)Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;
    .registers 3
    .parameter "path"

    .prologue
    .line 675
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, ext:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 678
    const/4 v1, 0x0

    .line 680
    :goto_7
    return-object v1

    :cond_8
    sget-object v1, Lcom/sec/android/app/myfiles/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;

    goto :goto_7
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 787
    sget-object v1, Lcom/sec/android/app/myfiles/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 788
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_b
.end method

.method public static getFileTypeInt(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 684
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->getFileType(Ljava/lang/String;)Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;

    move-result-object v0

    .line 685
    .local v0, mediaType:Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    iget v1, v0, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->fileType:I

    goto :goto_7
.end method

.method public static getLargeIcon(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 752
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->getFileType(Ljava/lang/String;)Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;

    move-result-object v0

    .line 753
    .local v0, mediaType:Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;
    if-nez v0, :cond_a

    const v1, 0x7f020039

    :goto_9
    return v1

    :cond_a
    iget v1, v0, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->iconLarge:I

    goto :goto_9
.end method

.method public static getLargeIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "f"
    .parameter "context"

    .prologue
    .line 773
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 774
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Utils;->isExternalRootFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Utils;->isUsbHostRootFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 776
    :cond_1a
    const v0, 0x7f02003d

    .line 783
    .local v0, icon:I
    :goto_1d
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 778
    .end local v0           #icon:I
    :cond_26
    const v0, 0x7f02003b

    .restart local v0       #icon:I
    goto :goto_1d

    .line 781
    .end local v0           #icon:I
    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->getLargeIcon(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #icon:I
    goto :goto_1d
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "path"

    .prologue
    .line 689
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->getFileType(Ljava/lang/String;)Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;

    move-result-object v0

    .line 708
    .local v0, mediaType:Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;
    if-nez v0, :cond_9

    const-string v1, ""

    :goto_8
    return-object v1

    :cond_9
    iget-object v1, v0, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_8
.end method

.method public static getMimeTypeFromMediaStore(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "path"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 809
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, ext:Ljava/lang/String;
    if-nez v1, :cond_9

    move-object v2, v3

    .line 836
    :goto_8
    return-object v2

    .line 814
    :cond_9
    const/4 v2, 0x0

    .line 817
    .local v2, mimetype:Ljava/lang/String;
    :try_start_a
    invoke-static {p0, p1}, Lcom/sec/android/app/myfiles/MediaFile;->isAudioInMediaStore(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 819
    sget-object v4, Lcom/sec/android/app/myfiles/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_A"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 820
    sget-object v3, Lcom/sec/android/app/myfiles/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_A"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;

    iget-object v2, v3, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_8

    :cond_49
    move-object v2, v3

    .line 822
    goto :goto_8

    .line 825
    :cond_4b
    sget-object v4, Lcom/sec/android/app/myfiles/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 826
    sget-object v3, Lcom/sec/android/app/myfiles/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;

    iget-object v2, v3, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5d} :catch_60

    goto :goto_8

    :cond_5e
    move-object v2, v3

    .line 828
    goto :goto_8

    .line 832
    :catch_60
    move-exception v0

    .line 833
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 834
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public static getShareMimeType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "path"
    .parameter "context"

    .prologue
    .line 713
    const/4 v1, 0x0

    .line 716
    .local v1, mimeType:Ljava/lang/String;
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isOMADrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 717
    invoke-static {p1, p0}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getRealMimeTypeOfDRM(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    :goto_b
    return-object v1

    .line 718
    :cond_c
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->getFileType(Ljava/lang/String;)Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;

    move-result-object v0

    .local v0, mediaType:Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;
    if-nez v0, :cond_15

    .line 719
    const-string v1, "application/octet-stream"

    goto :goto_b

    .line 721
    :cond_15
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->needToCheckMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 722
    invoke-static {p0, p1}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeTypeFromMediaStore(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 724
    :cond_20
    iget-object v1, v0, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_b
.end method

.method public static getSmallIcon(Ljava/lang/String;)I
    .registers 3
    .parameter "path"

    .prologue
    .line 747
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->getFileType(Ljava/lang/String;)Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;

    move-result-object v0

    .line 748
    .local v0, mediaType:Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;
    if-nez v0, :cond_a

    const v1, 0x7f020038

    :goto_9
    return v1

    :cond_a
    iget v1, v0, Lcom/sec/android/app/myfiles/MediaFile$MediaFileType;->iconSmall:I

    goto :goto_9
.end method

.method public static getSmallIconDrawable(Ljava/io/File;Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "f"
    .parameter "context"

    .prologue
    .line 758
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 759
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Utils;->isExternalRootFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Utils;->isUsbHostRootFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 761
    :cond_1a
    const v0, 0x7f02003c

    .line 768
    .local v0, icon:I
    :goto_1d
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 763
    .end local v0           #icon:I
    :cond_26
    const v0, 0x7f02003a

    .restart local v0       #icon:I
    goto :goto_1d

    .line 766
    .end local v0           #icon:I
    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->getSmallIcon(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #icon:I
    goto :goto_1d
.end method

.method public static isAudioFileType(I)Z
    .registers 3
    .parameter "fileType"

    .prologue
    const/4 v0, 0x1

    .line 615
    if-lt p0, v0, :cond_7

    const/16 v1, 0x16

    if-le p0, v1, :cond_f

    :cond_7
    const/16 v1, 0x17

    if-lt p0, v1, :cond_10

    const/16 v1, 0x1a

    if-gt p0, v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isAudioInMediaStore(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 10
    .parameter "path"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 841
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 842
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 845
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_32

    .line 847
    const-string v1, "[MyFiles]"

    const-string v2, "MediaFile : isAudioInMediaStore : c is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 856
    :goto_31
    return v1

    .line 851
    :cond_32
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3d

    .line 852
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 853
    const/4 v1, 0x1

    goto :goto_31

    .line 855
    :cond_3d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v7

    .line 856
    goto :goto_31
.end method

.method public static isImageFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 623
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x40

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isInstallFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 639
    const/16 v0, 0x64

    if-lt p0, v0, :cond_a

    const/16 v0, 0x65

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isMIDFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 651
    const/16 v0, 0x17

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isVideoFileType(I)Z
    .registers 2
    .parameter "fileType"

    .prologue
    .line 619
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_a

    const/16 v0, 0x33

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static needThumbnail(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 668
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v0

    .line 670
    .local v0, fileType:I
    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->isInstallFileType(I)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static needToCheckMimeType(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 796
    invoke-static {p0}, Lcom/sec/android/app/myfiles/MediaFile;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, ext:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 805
    :cond_7
    :goto_7
    return v1

    .line 801
    :cond_8
    const-string v2, "MP4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "3GP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "3G2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "ASF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "3GPP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 803
    :cond_30
    const/4 v1, 0x1

    goto :goto_7
.end method

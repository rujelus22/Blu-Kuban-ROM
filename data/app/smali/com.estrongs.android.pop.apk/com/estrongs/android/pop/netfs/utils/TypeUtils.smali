.class public Lcom/estrongs/android/pop/netfs/utils/TypeUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ANDROID_APPLICATION:I = 0x10000

.field public static final BIT_TORRENT:I = 0x6004b

.field public static final CHESS_FILE:I = 0x5003f

.field public static final ET_JOURNAL:I = 0x4003b

.field public static final ET_PUB:I = 0x4003c

.field public static final IMAGE_BMP:I = 0x10012

.field public static final IMAGE_GIF:I = 0x10013

.field public static final IMAGE_JPEG:I = 0x10014

.field public static final IMAGE_JPG:I = 0x10011

.field public static final IMAGE_PNG:I = 0x10010

.field public static final MEDIA_3GP:I = 0x3002a

.field public static final MEDIA_AIF:I = 0x20029

.field public static final MEDIA_AMR:I = 0x20023

.field public static final MEDIA_ASF:I = 0x30027

.field public static final MEDIA_AVI:I = 0x3002b

.field public static final MEDIA_FLAC:I = 0x2002b

.field public static final MEDIA_FLASH:I = 0x70001

.field public static final MEDIA_M3U:I = 0x2002a

.field public static final MEDIA_M4A:I = 0x20025

.field public static final MEDIA_MIDI:I = 0x20021

.field public static final MEDIA_MKV:I = 0x3002f

.field public static final MEDIA_MP3:I = 0x20020

.field public static final MEDIA_MP4:I = 0x3002c

.field public static final MEDIA_MPEG:I = 0x3002e

.field public static final MEDIA_MPG:I = 0x3002d

.field public static final MEDIA_OGG:I = 0x20024

.field public static final MEDIA_QCP:I = 0x20027

.field public static final MEDIA_RA:I = 0x20028

.field public static final MEDIA_REALMEDIA:I = 0x30029

.field public static final MEDIA_WAV:I = 0x20022

.field public static final MEDIA_WMA:I = 0x20026

.field public static final MEDIA_WMV:I = 0x30028

.field private static final MIME_TYPE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOBI_POCKET:I = 0x6004c

.field public static final NZB_FILE:I = 0x80001

.field public static final OPEN_DOC:I = 0x5003d

.field public static final PDF_FILE:I = 0x50039

.field public static final PLAIN_TEXT:I = 0x10001

.field public static final WIN_BAT:I = 0x40033

.field public static final WIN_CHM:I = 0x40040

.field public static final WIN_DLL:I = 0x40035

.field public static final WIN_DOC:I = 0x40030

.field public static final WIN_EXCEL:I = 0x40031

.field public static final WIN_EXE:I = 0x40034

.field public static final WIN_HTML:I = 0x40032

.field public static final WIN_LIB:I = 0x40036

.field public static final WIN_PPT:I = 0x40037

.field public static final XML_FILE:I = 0x5003a

.field public static final ZIP_FILE:I = 0x50038


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x6004b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-bittorrent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x5003f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-chess-pgn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x4003c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/epub+zip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x4003b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/esj"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x6004c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-mobipocket-ebook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x5003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.oasis.opendocument.text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x80001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-nzb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x20020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x20021

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/mid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x20022

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-wav"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x20023

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/amr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x20024

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/ogg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x20025

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x20026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-ms-wma"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x20027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/vnd.qcelp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x20028

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x20029

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x2002a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/x-mpegurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x2002b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "audio/flac"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x30027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/x-ms-asf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x30028

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x30029

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x3002a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x3002b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/x-msvideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x3002c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x3002d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x3002e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x3002f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "video/x-matroska"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x10010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x10011

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x10012

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x10013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x10014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x40030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x40031

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x40032

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x40033

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "magnus-internal/cgi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x40034

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\tmagnus-internal/cgi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x40037

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x40040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x50038

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/zip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x50039

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    const v1, 0x70001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "application/x-shockwave-flash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getApkSuffix()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    const-string v1, ".apk"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAudioMimeType(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "audio/*"

    :cond_10
    return-object v0
.end method

.method public static final getFileType(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_28

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/high16 v0, 0x1

    goto :goto_e

    :cond_37
    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    const v0, 0x10010

    goto :goto_e

    :cond_43
    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const v0, 0x10011

    goto :goto_e

    :cond_4f
    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const v0, 0x10012

    goto :goto_e

    :cond_5b
    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    const v0, 0x10013

    goto :goto_e

    :cond_67
    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    const v0, 0x10014

    goto :goto_e

    :cond_73
    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const v0, 0x20020

    goto :goto_e

    :cond_7f
    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string v2, ".m4v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    :cond_8f
    const v0, 0x3002c

    goto/16 :goto_e

    :cond_94
    const-string v2, ".avi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a1

    const v0, 0x3002b

    goto/16 :goto_e

    :cond_a1
    const-string v2, ".mid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b9

    const-string v2, ".midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b9

    const-string v2, "rmi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_be

    :cond_b9
    const v0, 0x20021

    goto/16 :goto_e

    :cond_be
    const-string v2, ".wmv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cb

    const v0, 0x30028

    goto/16 :goto_e

    :cond_cb
    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    const v0, 0x20022

    goto/16 :goto_e

    :cond_d8
    const-string v2, ".asf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e5

    const v0, 0x30027

    goto/16 :goto_e

    :cond_e5
    const-string v2, ".mpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f2

    const v0, 0x3002d

    goto/16 :goto_e

    :cond_f2
    const-string v2, ".mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const v0, 0x3002e

    goto/16 :goto_e

    :cond_ff
    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10f

    const-string v2, ".3gpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_114

    :cond_10f
    const v0, 0x3002a

    goto/16 :goto_e

    :cond_114
    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_121

    const v0, 0x20023

    goto/16 :goto_e

    :cond_121
    const-string v2, ".rm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_131

    const-string v2, ".rmvb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_136

    :cond_131
    const v0, 0x30029

    goto/16 :goto_e

    :cond_136
    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_146

    const-string v2, ".x-ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14b

    :cond_146
    const v0, 0x20024

    goto/16 :goto_e

    :cond_14b
    const-string v2, ".m4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15b

    const-string v2, ".aac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_160

    :cond_15b
    const v0, 0x20025

    goto/16 :goto_e

    :cond_160
    const-string v2, ".wma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16d

    const v0, 0x20026

    goto/16 :goto_e

    :cond_16d
    const-string v2, ".doc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17d

    const-string v2, ".docx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_182

    :cond_17d
    const v0, 0x40030

    goto/16 :goto_e

    :cond_182
    const-string v2, ".ppt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1aa

    const-string v2, ".pps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1aa

    const-string v2, ".ppx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1aa

    const-string v2, ".pptx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1aa

    const-string v2, ".odp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1af

    :cond_1aa
    const v0, 0x40037

    goto/16 :goto_e

    :cond_1af
    const-string v2, ".xls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ef

    const-string v2, ".xlsx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ef

    const-string v2, ".xla"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ef

    const-string v2, ".xlc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ef

    const-string v2, ".xlm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ef

    const-string v2, ".xlt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ef

    const-string v2, ".xlsm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ef

    const-string v2, ".xlsb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    :cond_1ef
    const v0, 0x40031

    goto/16 :goto_e

    :cond_1f4
    const-string v2, ".chm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_201

    const v0, 0x40040

    goto/16 :goto_e

    :cond_201
    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_219

    const-string v2, ".htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_219

    const-string v2, ".mht"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21e

    :cond_219
    const v0, 0x40032

    goto/16 :goto_e

    :cond_21e
    const-string v2, ".bat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22b

    const v0, 0x40033

    goto/16 :goto_e

    :cond_22b
    const-string v2, ".exe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_238

    const v0, 0x40034

    goto/16 :goto_e

    :cond_238
    const-string v2, ".dll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_245

    const v0, 0x40035

    goto/16 :goto_e

    :cond_245
    const-string v2, ".lib"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_252

    const v0, 0x40036

    goto/16 :goto_e

    :cond_252
    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".ini"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".properties"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".prop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".conf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".classpath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".project"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".php"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".rss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".jsp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".asp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".aspx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".vb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".vbs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f2

    const-string v2, ".h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f7

    :cond_2f2
    const v0, 0x10001

    goto/16 :goto_e

    :cond_2f7
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32f

    const-string v2, ".tar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32f

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32f

    const-string v2, ".rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32f

    const-string v2, ".cab"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32f

    const-string v2, ".esi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32f

    const-string v2, ".7z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_334

    :cond_32f
    const v0, 0x50038

    goto/16 :goto_e

    :cond_334
    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_341

    const v0, 0x5003a

    goto/16 :goto_e

    :cond_341
    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34e

    const v0, 0x50039

    goto/16 :goto_e

    :cond_34e
    const-string v2, ".esj"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35b

    const v0, 0x4003b

    goto/16 :goto_e

    :cond_35b
    const-string v2, ".qcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_368

    const v0, 0x20027

    goto/16 :goto_e

    :cond_368
    const-string v2, ".epub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_375

    const v0, 0x4003c

    goto/16 :goto_e

    :cond_375
    const-string v2, ".torrent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_382

    const v0, 0x6004b

    goto/16 :goto_e

    :cond_382
    const-string v2, ".pgn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_392

    const-string v2, ".xqf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_397

    :cond_392
    const v0, 0x5003f

    goto/16 :goto_e

    :cond_397
    const-string v2, ".odt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a4

    const v0, 0x5003d

    goto/16 :goto_e

    :cond_3a4
    const-string v2, ".mobi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b4

    const-string v2, ".prc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b9

    :cond_3b4
    const v0, 0x6004c

    goto/16 :goto_e

    :cond_3b9
    const-string v2, ".mkv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c6

    const v0, 0x3002f

    goto/16 :goto_e

    :cond_3c6
    const-string v2, ".flac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d3

    const v0, 0x2002b

    goto/16 :goto_e

    :cond_3d3
    const-string v2, ".aif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3eb

    const-string v2, "aifc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3eb

    const-string v2, "aiff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f0

    :cond_3eb
    const v0, 0x20029

    goto/16 :goto_e

    :cond_3f0
    const-string v2, ".ra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_400

    const-string v2, "ram"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_405

    :cond_400
    const v0, 0x20028

    goto/16 :goto_e

    :cond_405
    const-string v2, ".m3u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_412

    const v0, 0x2002a

    goto/16 :goto_e

    :cond_412
    const-string v2, ".flv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_422

    const-string v2, ".swf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_427

    :cond_422
    const v0, 0x70001

    goto/16 :goto_e

    :cond_427
    const-string v2, ".nzb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const v0, 0x80001

    goto/16 :goto_e
.end method

.method public static final getImageFileSuffix()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    const-string v1, ".jpg;.jpeg;.png;.bmp;.gif"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getMediaFileSuffix()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    const-string v1, ".mp3;.mp4;.3gp;.3gpp;.amr;.mid;.midi;.wmv;.wma;.ogg;.x-ogg;.wav;.m4a;.aac;.rm;.rmvb;.avi;.mpg;.mpeg;.asf;.m4v;.mkv"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMimetypeName(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getVideoMimeType(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->MIME_TYPE:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "video/*"

    :cond_10
    return-object v0
.end method

.method public static final getZipSuffix()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/String;

    const-string v1, ".zip;.rar;.tar;.gzip;.bz2;.gz;.7z;.esi"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final isAndroidApp(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static final isAudioFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x20020

    if-lt v0, v1, :cond_10

    const v1, 0x2002b

    if-gt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static final isBTFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x6004b

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isChessFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x5003f

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isChmFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x40040

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isETJournalFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x4003b

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isETPubFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x4003c

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isEcrypteFile(Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".esc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final isExcelFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x40031

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isFlashFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x70001

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isGzFile(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_30
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final isHtmlFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x40032

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isImageFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x10010

    if-lt v0, v1, :cond_10

    const v1, 0x10014

    if-gt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static final isJpegFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x10014

    if-eq v0, v1, :cond_14

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x10011

    if-eq v0, v1, :cond_14

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static final isMediaFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x20020

    if-lt v0, v1, :cond_10

    const v1, 0x3002f

    if-gt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static final isMobiPocketFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x6004c

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isNZBFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x80001

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isOggMediaFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x20024

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isOpenDocument(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x5003d

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isPdfFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x50039

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isPngFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x10010

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isPptFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x40037

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isQcpMediaFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x20027

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isRarFile(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static isTarFile(Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const-string v0, ".tar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final isTextFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x10001

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isUnsupportedMediaTypes(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "rm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "rmvb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, ".mpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, ".mpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, ".asf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, ".flv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public static final isVideoFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x30027

    if-lt v0, v1, :cond_10

    const v1, 0x3002f

    if-gt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static final isWordFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x40030

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isXmlFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x5003a

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isZipFile(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v0

    const v1, 0x50038

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static final isZipFile_Current(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

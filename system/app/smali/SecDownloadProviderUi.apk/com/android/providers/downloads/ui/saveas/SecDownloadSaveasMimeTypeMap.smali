.class public Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;
.super Ljava/lang/Object;
.source "SecDownloadSaveasMimeTypeMap.java"


# static fields
.field private static sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;


# instance fields
.field private categories:[Ljava/lang/String;

.field private mExtensionToCategoryMap:Ljava/util/HashMap;
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

.field private mMimeTypeToCategoryMap:Ljava/util/HashMap;
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
.method private constructor <init>()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->mMimeTypeToCategoryMap:Ljava/util/HashMap;

    .line 63
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->mExtensionToCategoryMap:Ljava/util/HashMap;

    .line 65
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->categories:[Ljava/lang/String;

    .line 67
    new-array v0, v8, [C

    fill-array-data v0, :array_62

    .line 68
    .local v0, audioseq:[C
    new-array v4, v8, [C

    fill-array-data v4, :array_6a

    .line 69
    .local v4, videoseq:[C
    new-array v3, v8, [C

    fill-array-data v3, :array_72

    .line 70
    .local v3, pictureseq:[C
    new-array v1, v8, [C

    fill-array-data v1, :array_7a

    .line 71
    .local v1, documentseq:[C
    new-array v2, v8, [C

    fill-array-data v2, :array_82

    .line 73
    .local v2, etcseq:[C
    iget-object v5, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->categories:[Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    aput-object v7, v5, v6

    .line 74
    iget-object v5, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->categories:[Ljava/lang/String;

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v7, v5, v6

    .line 75
    iget-object v5, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->categories:[Ljava/lang/String;

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    aput-object v7, v5, v6

    .line 76
    iget-object v5, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->categories:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    aput-object v6, v5, v8

    .line 77
    iget-object v5, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->categories:[Ljava/lang/String;

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    aput-object v7, v5, v6

    .line 79
    return-void

    .line 67
    :array_62
    .array-data 0x2
        0xf0t 0x58t
        0xf3t 0x97t
        0x0t 0x0t
    .end array-data

    .line 68
    nop

    :array_6a
    .array-data 0x2
        0xc6t 0x89t
        0x91t 0x98t
        0x0t 0x0t
    .end array-data

    .line 69
    nop

    :array_72
    .array-data 0x2
        0xfet 0x56t
        0x47t 0x72t
        0x0t 0x0t
    .end array-data

    .line 70
    nop

    :array_7a
    .array-data 0x2
        0x87t 0x65t
        0xf6t 0x4et
        0x0t 0x0t
    .end array-data

    .line 71
    nop

    :array_82
    .array-data 0x2
        0x76t 0x51t
        0xd6t 0x4et
        0x0t 0x0t
    .end array-data
.end method

.method public static getSingleton()Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;
    .registers 4

    .prologue
    .line 187
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    if-nez v0, :cond_528

    .line 188
    new-instance v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    invoke-direct {v0}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    .line 201
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/ogg"

    const-string v2, "ogg"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/x-skt-lbs"

    const-string v2, "mmf"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/aac"

    const-string v2, "aac"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/amr"

    const-string v2, "amr"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/amr-wb"

    const-string v2, "awb"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/imelody"

    const-string v2, "imy"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/3gpp"

    const-string v2, "3gpp"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/basic"

    const-string v2, "snd"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/midi"

    const-string v2, "mid"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/midi"

    const-string v2, "midi"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/midi"

    const-string v2, "kar"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string v2, "mpga"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string v2, "mpega"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string v2, "mp2"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string v2, "mp3"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/mpeg"

    const-string v2, "m4a"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/mpegurl"

    const-string v2, "m3u"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/prs.sid"

    const-string v2, "sid"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-aiff"

    const-string v2, "aif"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-aiff"

    const-string v2, "aiff"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-aiff"

    const-string v2, "aifc"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-gsm"

    const-string v2, "gsm"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-mpegurl"

    const-string v2, "m3u"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-ms-wma"

    const-string v2, "wma"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-ms-wax"

    const-string v2, "wax"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-pn-realaudio"

    const-string v2, "ra"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-pn-realaudio"

    const-string v2, "rm"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-pn-realaudio"

    const-string v2, "ram"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-realaudio"

    const-string v2, "ra"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-scpls"

    const-string v2, "pls"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-sd2"

    const-string v2, "sd2"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "audio/x-wav"

    const-string v2, "wav"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/3gpp"

    const-string v2, "3gpp"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/3gpp"

    const-string v2, "3gp"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/3gpp"

    const-string v2, "3g2"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/dl"

    const-string v2, "dl"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/dv"

    const-string v2, "dif"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/dv"

    const-string v2, "dv"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/fli"

    const-string v2, "fli"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/m4v"

    const-string v2, "m4v"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/mpeg"

    const-string v2, "mpeg"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/mpeg"

    const-string v2, "mpg"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/mpeg"

    const-string v2, "mpe"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/mp4"

    const-string v2, "mp4"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/mpeg"

    const-string v2, "VOB"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/quicktime"

    const-string v2, "qt"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/quicktime"

    const-string v2, "mov"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/vnd.mpegurl"

    const-string v2, "mxu"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/x-la-asf"

    const-string v2, "lsf"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/x-la-asf"

    const-string v2, "lsx"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/x-mng"

    const-string v2, "mng"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/x-ms-asf"

    const-string v2, "asf"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/x-ms-asf"

    const-string v2, "asx"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/x-ms-wm"

    const-string v2, "wm"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/x-ms-wmv"

    const-string v2, "wmv"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/x-ms-wmx"

    const-string v2, "wmx"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/x-ms-wvx"

    const-string v2, "wvx"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/x-msvideo"

    const-string v2, "avi"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "video/x-sgi-movie"

    const-string v2, "movie"

    const-string v3, "video"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/bmp"

    const-string v2, "bmp"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/gif"

    const-string v2, "gif"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/ico"

    const-string v2, "cur"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/ico"

    const-string v2, "ico"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/ief"

    const-string v2, "ief"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/jpeg"

    const-string v2, "jpeg"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/jpeg"

    const-string v2, "jpe"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/pcx"

    const-string v2, "pcx"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/png"

    const-string v2, "png"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/svg+xml"

    const-string v2, "svg"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/svg+xml"

    const-string v2, "svgz"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/tiff"

    const-string v2, "tiff"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/tiff"

    const-string v2, "tif"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/vnd.djvu"

    const-string v2, "djvu"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/vnd.djvu"

    const-string v2, "djv"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "wbmp"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-cmu-raster"

    const-string v2, "ras"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-coreldraw"

    const-string v2, "cdr"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-coreldrawpattern"

    const-string v2, "pat"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-coreldrawtemplate"

    const-string v2, "cdt"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-corelphotopaint"

    const-string v2, "cpt"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-icon"

    const-string v2, "ico"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-jg"

    const-string v2, "art"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-jng"

    const-string v2, "jng"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-ms-bmp"

    const-string v2, "bmp"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-photoshop"

    const-string v2, "psd"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-portable-anymap"

    const-string v2, "pnm"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-portable-bitmap"

    const-string v2, "pbm"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-portable-graymap"

    const-string v2, "pgm"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-portable-pixmap"

    const-string v2, "ppm"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-rgb"

    const-string v2, "rgb"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-xbitmap"

    const-string v2, "xbm"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-xpixmap"

    const-string v2, "xpm"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "image/x-xwindowdump"

    const-string v2, "xwd"

    const-string v3, "picture"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.database"

    const-string v2, "odb"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.formula"

    const-string v2, "odf"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.graphics"

    const-string v2, "odg"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.graphics-template"

    const-string v2, "otg"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.image"

    const-string v2, "odi"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.spreadsheet"

    const-string v2, "ods"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.spreadsheet-template"

    const-string v2, "ots"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text"

    const-string v2, "odt"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text-master"

    const-string v2, "odm"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text-template"

    const-string v2, "ott"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.oasis.opendocument.text-web"

    const-string v2, "oth"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/msword"

    const-string v2, "doc"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/msword"

    const-string v2, "dot"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v2, "docx"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v2, "dotx"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.ms-excel"

    const-string v2, "xls"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.ms-excel"

    const-string v2, "xlt"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v2, "xlsx"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v2, "xltx"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "ppt"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "pot"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "pps"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v2, "pptx"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v2, "potx"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v2, "ppsx"

    const-string v3, "docs"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_528
    sget-object v0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->sDownloadMimeTypeMap:Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;

    return-object v0
.end method

.method private loadEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "mimeType"
    .parameter "extension"
    .parameter "category"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->mMimeTypeToCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 107
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->mMimeTypeToCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_d
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->mExtensionToCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 110
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->mExtensionToCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1a
    return-void
.end method


# virtual methods
.method public getCategoryFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "extension"

    .prologue
    .line 155
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 156
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->mExtensionToCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getCategoryFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "mimeType"

    .prologue
    .line 148
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 149
    iget-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->mMimeTypeToCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getDefaultDownloadDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .parameter "context"
    .parameter "mimetype"
    .parameter "filename"
    .parameter "externalSd"

    .prologue
    .line 616
    const/4 v1, 0x0

    .line 617
    .local v1, root:Ljava/lang/String;
    const/4 v0, 0x0

    .line 620
    .local v0, base:Ljava/io/File;
    if-eqz p4, :cond_45

    .line 621
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 628
    :goto_c
    new-instance v0, Ljava/io/File;

    .end local v0           #base:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->getDefaultDownloadDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->getSubDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    .restart local v0       #base:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 624
    :cond_45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method public getFileExtensionFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "filename"

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    const-string v1, "[a-zA-Z_0-9\\.\\-\\(\\)\\%]+"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 91
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 92
    .local v0, dotPos:I
    if-ltz v0, :cond_1d

    .line 93
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .end local v0           #dotPos:I
    :goto_1c
    return-object v1

    :cond_1d
    const-string v1, ""

    goto :goto_1c
.end method

.method public getSubDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "category"

    .prologue
    .line 667
    if-eqz p2, :cond_30

    .line 669
    const-string v1, "audio"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 670
    const/4 v0, 0x0

    .line 691
    .local v0, categoryId:I
    :goto_b
    iget-object v1, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->categories:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 672
    .end local v0           #categoryId:I
    :cond_10
    const-string v1, "video"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 673
    const/4 v0, 0x1

    .restart local v0       #categoryId:I
    goto :goto_b

    .line 675
    .end local v0           #categoryId:I
    :cond_1a
    const-string v1, "picture"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 676
    const/4 v0, 0x2

    .restart local v0       #categoryId:I
    goto :goto_b

    .line 678
    .end local v0           #categoryId:I
    :cond_24
    const-string v1, "docs"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 679
    const/4 v0, 0x3

    .restart local v0       #categoryId:I
    goto :goto_b

    .line 682
    .end local v0           #categoryId:I
    :cond_2e
    const/4 v0, 0x4

    .restart local v0       #categoryId:I
    goto :goto_b

    .line 686
    .end local v0           #categoryId:I
    :cond_30
    const/4 v0, 0x4

    .restart local v0       #categoryId:I
    goto :goto_b
.end method

.method public getSubDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "mimetype"
    .parameter "filename"

    .prologue
    .line 646
    const/4 v0, 0x0

    .line 648
    .local v0, category:Ljava/lang/String;
    if-eqz p2, :cond_7

    .line 649
    invoke-virtual {p0, p2}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->getCategoryFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    :cond_7
    if-nez v0, :cond_11

    .line 654
    invoke-virtual {p0, p3}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->getFileExtensionFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, extension:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->getCategoryFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    .end local v1           #extension:Ljava/lang/String;
    :cond_11
    invoke-virtual {p0, p1, v0}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasMimeTypeMap;->getSubDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

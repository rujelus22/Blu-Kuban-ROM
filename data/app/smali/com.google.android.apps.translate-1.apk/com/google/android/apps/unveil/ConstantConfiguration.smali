.class public Lcom/google/android/apps/unveil/ConstantConfiguration;
.super Ljava/lang/Object;
.source "ConstantConfiguration.java"


# static fields
.field public static final ALLOW_ADAPTIVE_JPEG_QUALITY:Z = false

.field public static final ALLOW_PUGGLE_MODE:Z = false

.field public static final CLIENT_LANGUAGES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONNECTION_TIMEOUT_MILLIS:I = 0x4e20

.field public static final DOMAIN_SUFFIX:Ljava/lang/String; = ".visualsearch.sandbox.google.com"

.field public static final GOGGLES_URL_PATH:Ljava/lang/String; = "/goggles/"

.field public static final HIGH_FREQUENCY_LOGGING:Z = false

.field public static final IS_RELEASE_BUILD:Z = false

.field public static final LOG_TONES:Z = false

.field public static final MAX_ANNOTATION_RESULTS:I = 0x3

.field public static final MAX_CONTINUOUS_PREVIEW_PIXELS:I = 0x63d80

.field public static final MAX_PICTURE_PIXELS:I = 0x63d80

.field public static final MAX_SYMPHO_BYTES:I = 0x100000

.field public static final MIN_REQUIRED_HEAP_SIZE:I = 0xc

.field public static final NOTIFICATION_THUMBNAIL_MAX_SIZE_DP:Lcom/google/android/apps/unveil/env/Size; = null

.field public static final NUM_PUGGLE_RESULTS:I = 0x64

.field public static final PUGGLE_LANGUAGES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOCKET_BUFFER_SIZE_BYTES:I = 0x2000

.field public static final SOCKET_TIMEOUT_MILLIS:I = 0x7530

.field public static final TONE_ON_ERRORS:Z = false

.field public static final USE_MARKET_LIBRARIES:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v1, 0x50

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v0, v1, v1}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    sput-object v0, Lcom/google/android/apps/unveil/ConstantConfiguration;->NOTIFICATION_THUMBNAIL_MAX_SIZE_DP:Lcom/google/android/apps/unveil/env/Size;

    .line 112
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "en"

    aput-object v1, v0, v3

    const-string v1, "cs"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "de"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "it"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tr"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/ConstantConfiguration;->CLIENT_LANGUAGES:Ljava/util/List;

    .line 118
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "en"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/unveil/ConstantConfiguration;->PUGGLE_LANGUAGES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

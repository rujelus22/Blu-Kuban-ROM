.class public final Lcom/google/zxing/client/result/ParsedResultType;
.super Ljava/lang/Object;
.source "ParsedResultType.java"


# static fields
.field public static final ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final ANDROID_INTENT:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final GEO:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final ISBN:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final MOBILETAG_RICH_WEB:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final NDEF_SMART_POSTER:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final SMS:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final TEL:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final TEXT:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final URI:Lcom/google/zxing/client/result/ParsedResultType;

.field public static final WIFI:Lcom/google/zxing/client/result/ParsedResultType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "ADDRESSBOOK"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    .line 28
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "EMAIL_ADDRESS"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    .line 29
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "PRODUCT"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    .line 30
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "URI"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    .line 31
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->TEXT:Lcom/google/zxing/client/result/ParsedResultType;

    .line 32
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "ANDROID_INTENT"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ANDROID_INTENT:Lcom/google/zxing/client/result/ParsedResultType;

    .line 33
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "GEO"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->GEO:Lcom/google/zxing/client/result/ParsedResultType;

    .line 34
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "TEL"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    .line 35
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "SMS"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    .line 36
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "CALENDAR"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    .line 37
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    .line 39
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "NDEF_SMART_POSTER"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->NDEF_SMART_POSTER:Lcom/google/zxing/client/result/ParsedResultType;

    .line 40
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "MOBILETAG_RICH_WEB"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->MOBILETAG_RICH_WEB:Lcom/google/zxing/client/result/ParsedResultType;

    .line 41
    new-instance v0, Lcom/google/zxing/client/result/ParsedResultType;

    const-string v1, "ISBN"

    invoke-direct {v0, v1}, Lcom/google/zxing/client/result/ParsedResultType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ISBN:Lcom/google/zxing/client/result/ParsedResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/client/result/ParsedResultType;->name:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/zxing/client/result/ParsedResultType;->name:Ljava/lang/String;

    return-object v0
.end method

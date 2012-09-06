.class public final Lcom/google/zxing/ResultMetadataType;
.super Ljava/lang/Object;
.source "ResultMetadataType.java"


# static fields
.field public static final BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

.field public static final CONSISTENT_LINES:Lcom/google/zxing/ResultMetadataType;

.field public static final ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

.field public static final ORIENTATION:Lcom/google/zxing/ResultMetadataType;

.field public static final OTHER:Lcom/google/zxing/ResultMetadataType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0}, Lcom/google/zxing/ResultMetadataType;-><init>()V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->OTHER:Lcom/google/zxing/ResultMetadataType;

    .line 41
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0}, Lcom/google/zxing/ResultMetadataType;-><init>()V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    .line 52
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0}, Lcom/google/zxing/ResultMetadataType;-><init>()V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    .line 58
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0}, Lcom/google/zxing/ResultMetadataType;-><init>()V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    .line 64
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v0}, Lcom/google/zxing/ResultMetadataType;-><init>()V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->CONSISTENT_LINES:Lcom/google/zxing/ResultMetadataType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

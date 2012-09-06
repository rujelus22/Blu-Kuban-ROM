.class public final Lcom/google/zxing/BarcodeFormat;
.super Ljava/lang/Object;
.source "BarcodeFormat.java"


# static fields
.field public static final CODE_128:Lcom/google/zxing/BarcodeFormat;

.field public static final CODE_39:Lcom/google/zxing/BarcodeFormat;

.field public static final DATAMATRIX:Lcom/google/zxing/BarcodeFormat;

.field public static final EAN_13:Lcom/google/zxing/BarcodeFormat;

.field public static final EAN_8:Lcom/google/zxing/BarcodeFormat;

.field public static final ITF:Lcom/google/zxing/BarcodeFormat;

.field public static final PDF417:Lcom/google/zxing/BarcodeFormat;

.field public static final QR_CODE:Lcom/google/zxing/BarcodeFormat;

.field public static final RSS14:Lcom/google/zxing/BarcodeFormat;

.field public static final UPC_A:Lcom/google/zxing/BarcodeFormat;

.field public static final UPC_E:Lcom/google/zxing/BarcodeFormat;

.field private static final VALUES:Ljava/util/Hashtable;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->VALUES:Ljava/util/Hashtable;

    .line 33
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "QR_CODE"

    invoke-direct {v0, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 36
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "DATAMATRIX"

    invoke-direct {v0, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->DATAMATRIX:Lcom/google/zxing/BarcodeFormat;

    .line 39
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "UPC_E"

    invoke-direct {v0, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    .line 42
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "UPC_A"

    invoke-direct {v0, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    .line 45
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "EAN_8"

    invoke-direct {v0, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    .line 48
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "EAN_13"

    invoke-direct {v0, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    .line 51
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "CODE_128"

    invoke-direct {v0, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 54
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "CODE_39"

    invoke-direct {v0, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    .line 57
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "ITF"

    invoke-direct {v0, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    .line 60
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "RSS14"

    invoke-direct {v0, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->RSS14:Lcom/google/zxing/BarcodeFormat;

    .line 63
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    const-string v1, "PDF417"

    invoke-direct {v0, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->PDF417:Lcom/google/zxing/BarcodeFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/zxing/BarcodeFormat;->name:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->VALUES:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;
    .registers 3
    .parameter "name"

    .prologue
    .line 81
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->VALUES:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/BarcodeFormat;

    .line 82
    .local v0, format:Lcom/google/zxing/BarcodeFormat;
    if-nez v0, :cond_10

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 85
    :cond_10
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/zxing/BarcodeFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/BarcodeFormat;->name:Ljava/lang/String;

    return-object v0
.end method

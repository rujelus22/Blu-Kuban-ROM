.class public final enum Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;
.super Ljava/lang/Enum;
.source "BarcodeRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

.field public static final enum LANDSCAPE_AND_QR:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

.field public static final enum LOAD:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

.field public static final enum PORTRAIT:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    const-string v1, "LOAD"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LOAD:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    new-instance v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    const-string v1, "LANDSCAPE_AND_QR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LANDSCAPE_AND_QR:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    new-instance v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->PORTRAIT:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    sget-object v1, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LOAD:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->LANDSCAPE_AND_QR:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->PORTRAIT:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->$VALUES:[Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;
    .registers 2
    .parameter "name"

    .prologue
    .line 99
    const-class v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->$VALUES:[Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;

    return-object v0
.end method

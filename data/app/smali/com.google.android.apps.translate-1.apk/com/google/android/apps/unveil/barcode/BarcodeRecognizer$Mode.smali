.class public final enum Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;
.super Ljava/lang/Enum;
.source "BarcodeRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

.field public static final enum MUTLISTAGE:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

.field public static final enum SINGLE_STAGE:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    const-string v1, "MUTLISTAGE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;->MUTLISTAGE:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    new-instance v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    const-string v1, "SINGLE_STAGE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;->SINGLE_STAGE:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    sget-object v1, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;->MUTLISTAGE:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;->SINGLE_STAGE:Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;->$VALUES:[Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;
    .registers 2
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;->$VALUES:[Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Mode;

    return-object v0
.end method

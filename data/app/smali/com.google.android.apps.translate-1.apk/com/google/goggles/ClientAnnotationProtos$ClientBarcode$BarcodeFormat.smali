.class public final enum Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;
.super Ljava/lang/Enum;
.source "ClientAnnotationProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarcodeFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final enum CODE_128:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final CODE_128_VALUE:I = 0x7

.field public static final enum CODE_39:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final CODE_39_VALUE:I = 0x8

.field public static final enum DATAMATRIX:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final DATAMATRIX_VALUE:I = 0x2

.field public static final enum EAN_13:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final EAN_13_VALUE:I = 0x6

.field public static final enum EAN_8:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final EAN_8_VALUE:I = 0x5

.field public static final enum ITF:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final ITF_VALUE:I = 0x9

.field public static final enum OTHER_FORMAT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final OTHER_FORMAT_VALUE:I = 0x64

.field public static final enum PDF417:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final PDF417_VALUE:I = 0xa

.field public static final enum QR_CODE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final QR_CODE_VALUE:I = 0x1

.field public static final enum UPC_A:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final UPC_A_VALUE:I = 0x4

.field public static final enum UPC_E:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat; = null

.field public static final UPC_E_VALUE:I = 0x3

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 581
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const-string v1, "QR_CODE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->QR_CODE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 582
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const-string v1, "DATAMATRIX"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->DATAMATRIX:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 583
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const-string v1, "UPC_E"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->UPC_E:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 584
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const-string v1, "UPC_A"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->UPC_A:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 585
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const-string v1, "EAN_8"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->EAN_8:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 586
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const-string v1, "EAN_13"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->EAN_13:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 587
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const-string v1, "CODE_128"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->CODE_128:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 588
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const-string v1, "CODE_39"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->CODE_39:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 589
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const-string v1, "ITF"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->ITF:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 590
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const-string v1, "PDF417"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->PDF417:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 591
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const-string v1, "OTHER_FORMAT"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->OTHER_FORMAT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 579
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->QR_CODE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->DATAMATRIX:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->UPC_E:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->UPC_A:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->EAN_8:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->EAN_13:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->CODE_128:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->CODE_39:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->ITF:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->PDF417:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->OTHER_FORMAT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->$VALUES:[Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 631
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat$1;

    invoke-direct {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat$1;-><init>()V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 640
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 641
    iput p4, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->value:I

    .line 642
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;
    .registers 2
    .parameter

    .prologue
    .line 610
    sparse-switch p0, :sswitch_data_26

    .line 622
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 611
    :sswitch_5
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->QR_CODE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_4

    .line 612
    :sswitch_8
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->DATAMATRIX:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_4

    .line 613
    :sswitch_b
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->UPC_E:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_4

    .line 614
    :sswitch_e
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->UPC_A:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_4

    .line 615
    :sswitch_11
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->EAN_8:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_4

    .line 616
    :sswitch_14
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->EAN_13:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_4

    .line 617
    :sswitch_17
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->CODE_128:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_4

    .line 618
    :sswitch_1a
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->CODE_39:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_4

    .line 619
    :sswitch_1d
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->ITF:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_4

    .line 620
    :sswitch_20
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->PDF417:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_4

    .line 621
    :sswitch_23
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->OTHER_FORMAT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_4

    .line 610
    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_8
        0x3 -> :sswitch_b
        0x4 -> :sswitch_e
        0x5 -> :sswitch_11
        0x6 -> :sswitch_14
        0x7 -> :sswitch_17
        0x8 -> :sswitch_1a
        0x9 -> :sswitch_1d
        0xa -> :sswitch_20
        0x64 -> :sswitch_23
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;
    .registers 2
    .parameter

    .prologue
    .line 579
    const-class v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;
    .registers 1

    .prologue
    .line 579
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->$VALUES:[Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    invoke-virtual {v0}, [Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 607
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->value:I

    return v0
.end method

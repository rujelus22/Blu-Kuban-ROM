.class public final enum Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;
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
    name = "BarcodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType; = null

.field public static final enum ADDRESS_BOOK:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType; = null

.field public static final ADDRESS_BOOK_VALUE:I = 0x1

.field public static final enum EMAIL_ADDRESS:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType; = null

.field public static final EMAIL_ADDRESS_VALUE:I = 0x2

.field public static final enum ISBN:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType; = null

.field public static final ISBN_VALUE:I = 0x8

.field public static final enum OTHER_TYPE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType; = null

.field public static final OTHER_TYPE_VALUE:I = 0x64

.field public static final enum PRODUCT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType; = null

.field public static final PRODUCT_VALUE:I = 0x3

.field public static final enum SMS:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType; = null

.field public static final SMS_VALUE:I = 0x7

.field public static final enum TEL:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType; = null

.field public static final TEL_VALUE:I = 0x6

.field public static final enum TEXT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType; = null

.field public static final TEXT_VALUE:I = 0x5

.field public static final enum URI:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType; = null

.field public static final URI_VALUE:I = 0x4

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;",
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

    .line 519
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    const-string v1, "ADDRESS_BOOK"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ADDRESS_BOOK:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 520
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    const-string v1, "EMAIL_ADDRESS"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->EMAIL_ADDRESS:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 521
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    const-string v1, "PRODUCT"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->PRODUCT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 522
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    const-string v1, "URI"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->URI:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 523
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->TEXT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 524
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    const-string v1, "TEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->TEL:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 525
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    const-string v1, "SMS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->SMS:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 526
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    const-string v1, "ISBN"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ISBN:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 527
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    const-string v1, "OTHER_TYPE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->OTHER_TYPE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 517
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ADDRESS_BOOK:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->EMAIL_ADDRESS:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->PRODUCT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->URI:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->TEXT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->TEL:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->SMS:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ISBN:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->OTHER_TYPE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->$VALUES:[Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 563
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType$1;

    invoke-direct {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType$1;-><init>()V

    sput-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 572
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 573
    iput p4, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->value:I

    .line 574
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;
    .registers 2
    .parameter

    .prologue
    .line 544
    sparse-switch p0, :sswitch_data_20

    .line 554
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 545
    :sswitch_5
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ADDRESS_BOOK:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_4

    .line 546
    :sswitch_8
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->EMAIL_ADDRESS:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_4

    .line 547
    :sswitch_b
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->PRODUCT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_4

    .line 548
    :sswitch_e
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->URI:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_4

    .line 549
    :sswitch_11
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->TEXT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_4

    .line 550
    :sswitch_14
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->TEL:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_4

    .line 551
    :sswitch_17
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->SMS:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_4

    .line 552
    :sswitch_1a
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ISBN:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_4

    .line 553
    :sswitch_1d
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->OTHER_TYPE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_4

    .line 544
    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_8
        0x3 -> :sswitch_b
        0x4 -> :sswitch_e
        0x5 -> :sswitch_11
        0x6 -> :sswitch_14
        0x7 -> :sswitch_17
        0x8 -> :sswitch_1a
        0x64 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;
    .registers 2
    .parameter

    .prologue
    .line 517
    const-class v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;
    .registers 1

    .prologue
    .line 517
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->$VALUES:[Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    invoke-virtual {v0}, [Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 541
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->value:I

    return v0
.end method

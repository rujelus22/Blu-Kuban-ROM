.class public final enum Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;
.super Ljava/lang/Enum;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$ImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding; = null

.field public static final enum JPEG:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding; = null

.field public static final JPEG_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 522
    new-instance v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->JPEG:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    .line 520
    new-array v0, v3, [Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    sget-object v1, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->JPEG:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->$VALUES:[Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    .line 542
    new-instance v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding$1;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding$1;-><init>()V

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 551
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 552
    iput p4, p0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->value:I

    .line 553
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;
    .registers 2
    .parameter

    .prologue
    .line 531
    packed-switch p0, :pswitch_data_8

    .line 533
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 532
    :pswitch_5
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->JPEG:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    goto :goto_4

    .line 531
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;
    .registers 2
    .parameter

    .prologue
    .line 520
    const-class v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;
    .registers 1

    .prologue
    .line 520
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->$VALUES:[Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    invoke-virtual {v0}, [Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 528
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->value:I

    return v0
.end method

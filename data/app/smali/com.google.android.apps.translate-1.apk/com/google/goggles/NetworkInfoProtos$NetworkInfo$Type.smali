.class public final enum Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
.super Ljava/lang/Enum;
.source "NetworkInfoProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type; = null

.field public static final enum MOBILE:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type; = null

.field public static final MOBILE_VALUE:I = 0x2

.field public static final enum OTHER:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type; = null

.field public static final OTHER_VALUE:I = 0xf

.field public static final enum UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type; = null

.field public static final UNKNOWN_VALUE:I = 0x64

.field public static final enum WIFI:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type; = null

.field public static final WIFI_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 515
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v5, v5, v3}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->WIFI:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    .line 516
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->MOBILE:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    .line 517
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    const-string v1, "OTHER"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->OTHER:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    .line 518
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    .line 513
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->WIFI:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->MOBILE:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->OTHER:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->$VALUES:[Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    .line 544
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type$1;

    invoke-direct {v0}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type$1;-><init>()V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 553
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 554
    iput p4, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->value:I

    .line 555
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
    .registers 2
    .parameter

    .prologue
    .line 530
    sparse-switch p0, :sswitch_data_12

    .line 535
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 531
    :sswitch_5
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->WIFI:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    goto :goto_4

    .line 532
    :sswitch_8
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->MOBILE:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    goto :goto_4

    .line 533
    :sswitch_b
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->OTHER:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    goto :goto_4

    .line 534
    :sswitch_e
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    goto :goto_4

    .line 530
    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_8
        0xf -> :sswitch_b
        0x64 -> :sswitch_e
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
    .registers 2
    .parameter

    .prologue
    .line 513
    const-class v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;
    .registers 1

    .prologue
    .line 513
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->$VALUES:[Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    invoke-virtual {v0}, [Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 527
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo$Type;->value:I

    return v0
.end method

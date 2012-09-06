.class public final enum Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;
.super Ljava/lang/Enum;
.source "Constants.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants$RateEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode; = null

.field public static final enum BLOCKED_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode; = null

.field public static final BLOCKED_ROUTE_VALUE:I = 0x1

.field public static final enum INVALID_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode; = null

.field public static final INVALID_ROUTE_VALUE:I = 0x2

.field public static final enum NO_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode; = null

.field public static final NO_ROUTE_VALUE:I = 0x3

.field public static final enum OK:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode; = null

.field public static final OK_VALUE:I = 0x0

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode; = null

.field public static final UNKNOWN_VALUE:I = 0xff

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    new-instance v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->OK:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    .line 424
    new-instance v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    const-string v1, "BLOCKED_ROUTE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->BLOCKED_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    .line 425
    new-instance v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    const-string v1, "INVALID_ROUTE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->INVALID_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    .line 426
    new-instance v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    const-string v1, "NO_ROUTE"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->NO_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    .line 427
    new-instance v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->UNKNOWN:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    .line 421
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    sget-object v1, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->OK:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->BLOCKED_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->INVALID_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->NO_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->UNKNOWN:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->$VALUES:[Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    .line 455
    new-instance v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 464
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 465
    iput p4, p0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->value:I

    .line 466
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    sget-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;
    .registers 2
    .parameter "value"

    .prologue
    .line 440
    sparse-switch p0, :sswitch_data_14

    .line 446
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 441
    :sswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->OK:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    goto :goto_4

    .line 442
    :sswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->BLOCKED_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    goto :goto_4

    .line 443
    :sswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->INVALID_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    goto :goto_4

    .line 444
    :sswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->NO_ROUTE:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    goto :goto_4

    .line 445
    :sswitch_11
    sget-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->UNKNOWN:Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    goto :goto_4

    .line 440
    :sswitch_data_14
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0x2 -> :sswitch_b
        0x3 -> :sswitch_e
        0xff -> :sswitch_11
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;
    .registers 2
    .parameter "name"

    .prologue
    .line 421
    const-class v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;
    .registers 1

    .prologue
    .line 421
    sget-object v0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->$VALUES:[Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 437
    iget v0, p0, Lcom/google/grandcentral/api2/Constants$RateEnum$ResponseCode;->value:I

    return v0
.end method

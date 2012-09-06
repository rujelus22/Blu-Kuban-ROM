.class public final enum Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;
.super Ljava/lang/Enum;
.source "NetworkInfoProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final enum CDMA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final CDMA_VALUE:I = 0x2

.field public static final enum EDGE:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final EDGE_VALUE:I = 0x3

.field public static final enum EHRPD:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final EHRPD_VALUE:I = 0x67

.field public static final enum EVDO_0:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final EVDO_0_VALUE:I = 0x4

.field public static final enum EVDO_A:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final EVDO_A_VALUE:I = 0x5

.field public static final enum EVDO_B:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final EVDO_B_VALUE:I = 0x64

.field public static final enum GPRS:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final GPRS_VALUE:I = 0x6

.field public static final enum HSDPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final HSDPA_VALUE:I = 0x7

.field public static final enum HSPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final enum HSPAP:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final HSPAP_VALUE:I = 0x68

.field public static final HSPA_VALUE:I = 0x8

.field public static final enum HSUPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final HSUPA_VALUE:I = 0x9

.field public static final enum IDEN:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final IDEN_VALUE:I = 0x65

.field public static final enum LTE:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final LTE_VALUE:I = 0x66

.field public static final enum ONExRTT:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final ONExRTT_VALUE:I = 0x1

.field public static final enum OTHER:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final OTHER_VALUE:I = 0xf

.field public static final UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final UNKNOWN_VALUE:I = 0x64

.field public static final enum UTMS:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type; = null

.field public static final UTMS_VALUE:I = 0xa

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;",
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

    .line 42
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "GPRS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->GPRS:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 43
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "EDGE"

    invoke-direct {v0, v1, v5, v5, v7}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EDGE:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 44
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "UTMS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->UTMS:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 45
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "HSDPA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSDPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 46
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "HSUPA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSUPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 47
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "HSPA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 48
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "CDMA"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->CDMA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 49
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "EVDO_0"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_0:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 50
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "EVDO_A"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_A:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 51
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "EVDO_B"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_B:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 52
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "ONExRTT"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->ONExRTT:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 53
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "IDEN"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x65

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->IDEN:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 54
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "LTE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x66

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->LTE:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 55
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "EHRPD"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0x67

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EHRPD:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 56
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "HSPAP"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0x68

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSPAP:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 57
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const-string v1, "OTHER"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->OTHER:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->GPRS:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EDGE:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->UTMS:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSDPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSUPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->CDMA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_0:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_A:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_B:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->ONExRTT:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->IDEN:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->LTE:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EHRPD:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSPAP:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->OTHER:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->$VALUES:[Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 60
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_B:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 109
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type$1;

    invoke-direct {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type$1;-><init>()V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p4, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->value:I

    .line 120
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;
    .registers 2
    .parameter

    .prologue
    .line 83
    sparse-switch p0, :sswitch_data_36

    .line 100
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 84
    :sswitch_5
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->GPRS:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 85
    :sswitch_8
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EDGE:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 86
    :sswitch_b
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->UTMS:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 87
    :sswitch_e
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSDPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 88
    :sswitch_11
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSUPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 89
    :sswitch_14
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSPA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 90
    :sswitch_17
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->CDMA:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 91
    :sswitch_1a
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_0:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 92
    :sswitch_1d
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_A:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 93
    :sswitch_20
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EVDO_B:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 94
    :sswitch_23
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->ONExRTT:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 95
    :sswitch_26
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->IDEN:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 96
    :sswitch_29
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->LTE:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 97
    :sswitch_2c
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->EHRPD:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 98
    :sswitch_2f
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->HSPAP:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 99
    :sswitch_32
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->OTHER:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    goto :goto_4

    .line 83
    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_17
        0x3 -> :sswitch_8
        0x4 -> :sswitch_1a
        0x5 -> :sswitch_1d
        0x6 -> :sswitch_5
        0x7 -> :sswitch_e
        0x8 -> :sswitch_14
        0x9 -> :sswitch_11
        0xa -> :sswitch_b
        0xf -> :sswitch_32
        0x64 -> :sswitch_20
        0x65 -> :sswitch_26
        0x66 -> :sswitch_29
        0x67 -> :sswitch_2c
        0x68 -> :sswitch_2f
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;
    .registers 2
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->$VALUES:[Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0}, [Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->value:I

    return v0
.end method

.class public final enum Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat; = null

.field public static final enum MP3:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat; = null

.field public static final enum MP3_16KHZ:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat; = null

.field public static final MP3_16KHZ_VALUE:I = 0x1

.field public static final MP3_VALUE:I = 0x0

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat; = null

.field public static final UNKNOWN_VALUE:I = 0xff

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    const-string v1, "MP3"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->MP3:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    .line 82
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    const-string v1, "MP3_16KHZ"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->MP3_16KHZ:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    .line 83
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->MP3:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->MP3_16KHZ:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    .line 107
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->value:I

    .line 118
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;
    .registers 2
    .parameter "value"

    .prologue
    .line 94
    sparse-switch p0, :sswitch_data_e

    .line 98
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 95
    :sswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->MP3:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    goto :goto_4

    .line 96
    :sswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->MP3_16KHZ:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    goto :goto_4

    .line 97
    :sswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    goto :goto_4

    .line 94
    :sswitch_data_e
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0xff -> :sswitch_b
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;
    .registers 2
    .parameter "name"

    .prologue
    .line 79
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->value:I

    return v0
.end method

.class public final enum Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;
.super Ljava/lang/Enum;
.source "ProductInformationProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Condition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition; = null

.field public static final enum NEW:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition; = null

.field public static final NEW_VALUE:I = 0x1

.field public static final enum OTHER:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition; = null

.field public static final OTHER_VALUE:I = 0x4

.field public static final enum REFURBISHED:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition; = null

.field public static final REFURBISHED_VALUE:I = 0x2

.field public static final enum UNSET:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition; = null

.field public static final UNSET_VALUE:I = 0x0

.field public static final enum USED:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition; = null

.field public static final USED_VALUE:I = 0x3

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;",
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
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    const-string v1, "UNSET"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->UNSET:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 134
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->NEW:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 135
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    const-string v1, "REFURBISHED"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->REFURBISHED:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 136
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    const-string v1, "USED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->USED:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 137
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->OTHER:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 131
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    sget-object v1, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->UNSET:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->NEW:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->REFURBISHED:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->USED:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->OTHER:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->$VALUES:[Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    .line 165
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition$1;

    invoke-direct {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition$1;-><init>()V

    sput-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    iput p4, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->value:I

    .line 176
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;
    .registers 2
    .parameter

    .prologue
    .line 150
    packed-switch p0, :pswitch_data_14

    .line 156
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 151
    :pswitch_5
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->UNSET:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    goto :goto_4

    .line 152
    :pswitch_8
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->NEW:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    goto :goto_4

    .line 153
    :pswitch_b
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->REFURBISHED:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    goto :goto_4

    .line 154
    :pswitch_e
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->USED:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    goto :goto_4

    .line 155
    :pswitch_11
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->OTHER:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    goto :goto_4

    .line 150
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;
    .registers 2
    .parameter

    .prologue
    .line 131
    const-class v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;
    .registers 1

    .prologue
    .line 131
    sget-object v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->$VALUES:[Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    invoke-virtual {v0}, [Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Condition;->value:I

    return v0
.end method

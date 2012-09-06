.class public final enum Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result; = null

.field public static final enum ALREADY_PROVISIONED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result; = null

.field public static final ALREADY_PROVISIONED_VALUE:I = 0x2

.field public static final enum FAILED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result; = null

.field public static final FAILED_VALUE:I = 0x3

.field public static final enum PREPARED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result; = null

.field public static final PREPARED_VALUE:I = 0x1

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result; = null

.field public static final UNKNOWN_VALUE:I = 0xff

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;",
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
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 26713
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v6, v6, v3}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->PREPARED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    .line 26714
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    const-string v1, "ALREADY_PROVISIONED"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->ALREADY_PROVISIONED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    .line 26715
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->FAILED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    .line 26716
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    .line 26711
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->PREPARED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->ALREADY_PROVISIONED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->FAILED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    .line 26742
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 26751
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26752
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->value:I

    .line 26753
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26739
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;
    .registers 2
    .parameter "value"

    .prologue
    .line 26728
    sparse-switch p0, :sswitch_data_12

    .line 26733
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 26729
    :sswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->PREPARED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    goto :goto_4

    .line 26730
    :sswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->ALREADY_PROVISIONED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    goto :goto_4

    .line 26731
    :sswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->FAILED:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    goto :goto_4

    .line 26732
    :sswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    goto :goto_4

    .line 26728
    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_8
        0x3 -> :sswitch_b
        0xff -> :sswitch_e
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;
    .registers 2
    .parameter "name"

    .prologue
    .line 26711
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;
    .registers 1

    .prologue
    .line 26711
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 26725
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->value:I

    return v0
.end method

.class public final enum Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoicemailDiversionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType; = null

.field public static final enum CARRIER_SPECIFIC:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType; = null

.field public static final CARRIER_SPECIFIC_VALUE:I = 0x1

.field public static final enum GENERIC:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType; = null

.field public static final GENERIC_VALUE:I = 0x0

.field public static final enum MANUAL:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType; = null

.field public static final MANUAL_VALUE:I = 0x2

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType; = null

.field public static final UNKNOWN_VALUE:I = 0x3

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;",
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
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30439
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->GENERIC:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    .line 30440
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    const-string v1, "CARRIER_SPECIFIC"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->CARRIER_SPECIFIC:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    .line 30441
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    const-string v1, "MANUAL"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->MANUAL:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    .line 30442
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    .line 30437
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->GENERIC:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->CARRIER_SPECIFIC:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->MANUAL:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    .line 30468
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 30477
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30478
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->value:I

    .line 30479
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30465
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    .registers 2
    .parameter "value"

    .prologue
    .line 30454
    packed-switch p0, :pswitch_data_12

    .line 30459
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 30455
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->GENERIC:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    goto :goto_4

    .line 30456
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->CARRIER_SPECIFIC:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    goto :goto_4

    .line 30457
    :pswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->MANUAL:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    goto :goto_4

    .line 30458
    :pswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    goto :goto_4

    .line 30454
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    .registers 2
    .parameter "name"

    .prologue
    .line 30437
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    .registers 1

    .prologue
    .line 30437
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 30451
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->value:I

    return v0
.end method

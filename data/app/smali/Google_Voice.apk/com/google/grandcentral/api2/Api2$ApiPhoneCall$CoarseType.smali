.class public final enum Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoarseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType; = null

.field public static final enum CALL_TYPE_INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType; = null

.field public static final CALL_TYPE_INBOUND_VALUE:I = 0x1

.field public static final enum CALL_TYPE_MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType; = null

.field public static final CALL_TYPE_MISSED_VALUE:I = 0x0

.field public static final enum CALL_TYPE_OUTGOING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType; = null

.field public static final CALL_TYPE_OUTGOING_VALUE:I = 0x2

.field public static final enum CALL_TYPE_RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType; = null

.field public static final CALL_TYPE_RECORDING_VALUE:I = 0x4

.field public static final enum CALL_TYPE_SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType; = null

.field public static final CALL_TYPE_SMS_IN_VALUE:I = 0x5

.field public static final enum CALL_TYPE_SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType; = null

.field public static final CALL_TYPE_SMS_OUT_VALUE:I = 0x6

.field public static final enum CALL_TYPE_UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType; = null

.field public static final CALL_TYPE_UNKNOWN_VALUE:I = 0xff

.field public static final enum CALL_TYPE_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType; = null

.field public static final CALL_TYPE_VOICEMAIL_VALUE:I = 0x3

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;",
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 17935
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    const-string v1, "CALL_TYPE_MISSED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    .line 17936
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    const-string v1, "CALL_TYPE_INBOUND"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    .line 17937
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    const-string v1, "CALL_TYPE_OUTGOING"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_OUTGOING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    .line 17938
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    const-string v1, "CALL_TYPE_VOICEMAIL"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    .line 17939
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    const-string v1, "CALL_TYPE_RECORDING"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    .line 17940
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    const-string v1, "CALL_TYPE_SMS_IN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    .line 17941
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    const-string v1, "CALL_TYPE_SMS_OUT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    .line 17942
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    const-string v1, "CALL_TYPE_UNKNOWN"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0xff

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    .line 17933
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_OUTGOING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    .line 17976
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 17985
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17986
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->value:I

    .line 17987
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17973
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;
    .registers 2
    .parameter "value"

    .prologue
    .line 17958
    sparse-switch p0, :sswitch_data_1e

    .line 17967
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 17959
    :sswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    goto :goto_4

    .line 17960
    :sswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    goto :goto_4

    .line 17961
    :sswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_OUTGOING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    goto :goto_4

    .line 17962
    :sswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    goto :goto_4

    .line 17963
    :sswitch_11
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    goto :goto_4

    .line 17964
    :sswitch_14
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    goto :goto_4

    .line 17965
    :sswitch_17
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    goto :goto_4

    .line 17966
    :sswitch_1a
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->CALL_TYPE_UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    goto :goto_4

    .line 17958
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0x2 -> :sswitch_b
        0x3 -> :sswitch_e
        0x4 -> :sswitch_11
        0x5 -> :sswitch_14
        0x6 -> :sswitch_17
        0xff -> :sswitch_1a
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;
    .registers 2
    .parameter "name"

    .prologue
    .line 17933
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;
    .registers 1

    .prologue
    .line 17933
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 17955
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;->value:I

    return v0
.end method

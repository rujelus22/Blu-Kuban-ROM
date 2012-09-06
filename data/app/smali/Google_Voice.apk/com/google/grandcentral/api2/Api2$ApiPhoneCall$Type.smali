.class public final enum Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;
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
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final enum CALL_RETURN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final CALL_RETURN_VALUE:I = 0x7

.field public static final enum CHECK_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final CHECK_VOICEMAIL_VALUE:I = 0x5

.field public static final enum CLICK2CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final CLICK2CALL_VALUE:I = 0x8

.field public static final enum GOOGLE_TALK:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final GOOGLE_TALK_VALUE:I = 0xd

.field public static final enum INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final INBOUND_VALUE:I = 0x1

.field public static final enum LISTEN_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final LISTEN_IN_VALUE:I = 0x3

.field public static final enum MANAGED_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final MANAGED_CALL_VALUE:I = 0x11

.field public static final enum MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final MISSED_VALUE:I = 0x0

.field public static final enum MOBILE_DIALER_CALL_THROUGH:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final MOBILE_DIALER_CALL_THROUGH_VALUE:I = 0xc

.field public static final enum PARTNER_OUTBOUND_CALL_SPRINT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final PARTNER_OUTBOUND_CALL_SPRINT_VALUE:I = 0x10

.field public static final enum RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final RECORDING_VALUE:I = 0x4

.field public static final enum SETTINGS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final SETTINGS_VALUE:I = 0x6

.field public static final enum SHADOW_NUMBER_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final SHADOW_NUMBER_CALL_VALUE:I = 0xf

.field public static final enum SIP:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final SIP_VALUE:I = 0xe

.field public static final enum SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final SMS_IN_VALUE:I = 0xa

.field public static final enum SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final SMS_OUT_VALUE:I = 0xb

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final UNKNOWN_VALUE:I = 0xff

.field public static final enum UNROUTABLE:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final UNROUTABLE_VALUE:I = 0x63

.field public static final enum VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final VOICEMAIL_VALUE:I = 0x2

.field public static final enum WEB_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type; = null

.field public static final WEB_CALL_VALUE:I = 0x9

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;",
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

    .line 17793
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "MISSED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17794
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "INBOUND"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17795
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "VOICEMAIL"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17796
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "LISTEN_IN"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->LISTEN_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17797
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17798
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "CHECK_VOICEMAIL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CHECK_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17799
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "SETTINGS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SETTINGS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17800
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "CALL_RETURN"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CALL_RETURN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17801
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "CLICK2CALL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CLICK2CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17802
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "WEB_CALL"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->WEB_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17803
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "SMS_IN"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17804
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "SMS_OUT"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17805
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "MOBILE_DIALER_CALL_THROUGH"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MOBILE_DIALER_CALL_THROUGH:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17806
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "GOOGLE_TALK"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17807
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "SIP"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SIP:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17808
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "SHADOW_NUMBER_CALL"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SHADOW_NUMBER_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17809
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "PARTNER_OUTBOUND_CALL_SPRINT"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->PARTNER_OUTBOUND_CALL_SPRINT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17810
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "MANAGED_CALL"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MANAGED_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17811
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "UNROUTABLE"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x63

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->UNROUTABLE:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17812
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0xff

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17791
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->LISTEN_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CHECK_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SETTINGS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CALL_RETURN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CLICK2CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->WEB_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MOBILE_DIALER_CALL_THROUGH:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SIP:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SHADOW_NUMBER_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->PARTNER_OUTBOUND_CALL_SPRINT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MANAGED_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->UNROUTABLE:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 17870
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 17879
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17880
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->value:I

    .line 17881
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17867
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 17840
    sparse-switch p0, :sswitch_data_42

    .line 17861
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 17841
    :sswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17842
    :sswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17843
    :sswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17844
    :sswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->LISTEN_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17845
    :sswitch_11
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17846
    :sswitch_14
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CHECK_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17847
    :sswitch_17
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SETTINGS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17848
    :sswitch_1a
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CALL_RETURN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17849
    :sswitch_1d
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CLICK2CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17850
    :sswitch_20
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->WEB_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17851
    :sswitch_23
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17852
    :sswitch_26
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17853
    :sswitch_29
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MOBILE_DIALER_CALL_THROUGH:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17854
    :sswitch_2c
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17855
    :sswitch_2f
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SIP:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17856
    :sswitch_32
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SHADOW_NUMBER_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17857
    :sswitch_35
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->PARTNER_OUTBOUND_CALL_SPRINT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17858
    :sswitch_38
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MANAGED_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17859
    :sswitch_3b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->UNROUTABLE:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17860
    :sswitch_3e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    goto :goto_4

    .line 17840
    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0x2 -> :sswitch_b
        0x3 -> :sswitch_e
        0x4 -> :sswitch_11
        0x5 -> :sswitch_14
        0x6 -> :sswitch_17
        0x7 -> :sswitch_1a
        0x8 -> :sswitch_1d
        0x9 -> :sswitch_20
        0xa -> :sswitch_23
        0xb -> :sswitch_26
        0xc -> :sswitch_29
        0xd -> :sswitch_2c
        0xe -> :sswitch_2f
        0xf -> :sswitch_32
        0x10 -> :sswitch_35
        0x11 -> :sswitch_38
        0x63 -> :sswitch_3b
        0xff -> :sswitch_3e
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 17791
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;
    .registers 1

    .prologue
    .line 17791
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 17837
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->value:I

    return v0
.end method

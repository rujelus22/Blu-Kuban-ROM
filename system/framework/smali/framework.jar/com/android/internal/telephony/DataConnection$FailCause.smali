.class public final enum Lcom/android/internal/telephony/DataConnection$FailCause;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnection$FailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SIGNAL_LOST:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

.field private static final sErrorCodeToFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/DataConnection$FailCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x1a

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 191
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "NONE"

    invoke-direct {v4, v5, v8, v8}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 195
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "OPERATOR_BARRED"

    invoke-direct {v4, v5, v11, v9}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 196
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "INSUFFICIENT_RESOURCES"

    invoke-direct {v4, v5, v12, v10}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 197
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "MISSING_UNKNOWN_APN"

    const/4 v6, 0x3

    const/16 v7, 0x1b

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 198
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "UNKNOWN_PDP_ADDRESS_TYPE"

    const/4 v6, 0x4

    const/16 v7, 0x1c

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 199
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "USER_AUTHENTICATION"

    const/4 v6, 0x5

    const/16 v7, 0x1d

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 200
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ACTIVATION_REJECT_GGSN"

    const/4 v6, 0x6

    const/16 v7, 0x1e

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 201
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ACTIVATION_REJECT_UNSPECIFIED"

    const/4 v6, 0x7

    const/16 v7, 0x1f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 202
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v6, 0x20

    invoke-direct {v4, v5, v9, v6}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 203
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v6, 0x9

    const/16 v7, 0x21

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 204
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v6, 0xa

    const/16 v7, 0x22

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 205
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "NSAPI_IN_USE"

    const/16 v6, 0xb

    const/16 v7, 0x23

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 206
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ONLY_IPV4_ALLOWED"

    const/16 v6, 0xc

    const/16 v7, 0x32

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 207
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ONLY_IPV6_ALLOWED"

    const/16 v6, 0xd

    const/16 v7, 0x33

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 208
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ONLY_SINGLE_BEARER_ALLOWED"

    const/16 v6, 0xe

    const/16 v7, 0x34

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 209
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "PROTOCOL_ERRORS"

    const/16 v6, 0xf

    const/16 v7, 0x6f

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 213
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "REGISTRATION_FAIL"

    const/16 v6, 0x10

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 214
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "GPRS_REGISTRATION_FAIL"

    const/16 v6, 0x11

    const/4 v7, -0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 215
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "SIGNAL_LOST"

    const/16 v6, 0x12

    const/4 v7, -0x3

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 216
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "PREF_RADIO_TECH_CHANGED"

    const/16 v6, 0x13

    const/4 v7, -0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 217
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "RADIO_POWER_OFF"

    const/16 v6, 0x14

    const/4 v7, -0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 218
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "TETHERED_CALL_ACTIVE"

    const/16 v6, 0x15

    const/4 v7, -0x6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 219
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "RADIO_ERROR_RETRY"

    const/16 v6, 0x16

    const/4 v7, -0x7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 220
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "ERROR_UNSPECIFIED"

    const/16 v6, 0x17

    const v7, 0xffff

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 224
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "UNKNOWN"

    const/16 v6, 0x18

    const/high16 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 225
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "RADIO_NOT_AVAILABLE"

    const/16 v6, 0x19

    const v7, 0x10001

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 226
    new-instance v4, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v5, "UNACCEPTABLE_NETWORK_PARAMETER"

    const v6, 0x10002

    invoke-direct {v4, v5, v10, v6}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 190
    const/16 v4, 0x1b

    new-array v4, v4, [Lcom/android/internal/telephony/DataConnection$FailCause;

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v5, v4, v8

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v5, v4, v11

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v5, v4, v12

    const/4 v5, 0x3

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v5, v4, v9

    const/16 v5, 0x9

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xe

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0xf

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x10

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x11

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x12

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x13

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x14

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x15

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x16

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x17

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x18

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    const/16 v5, 0x19

    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v5, v4, v10

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 231
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    .line 232
    invoke-static {}, Lcom/android/internal/telephony/DataConnection$FailCause;->values()[Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataConnection$FailCause;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1f3
    if-ge v2, v3, :cond_207

    aget-object v1, v0, v2

    .line 233
    .local v1, fc:Lcom/android/internal/telephony/DataConnection$FailCause;
    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f3

    .line 235
    .end local v1           #fc:Lcom/android/internal/telephony/DataConnection$FailCause;
    :cond_207
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 238
    iput p3, p0, Lcom/android/internal/telephony/DataConnection$FailCause;->mErrorCode:I

    .line 239
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;
    .registers 4
    .parameter "errorCode"

    .prologue
    .line 341
    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 342
    .local v0, fc:Lcom/android/internal/telephony/DataConnection$FailCause;
    if-nez v0, :cond_10

    .line 343
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 345
    :cond_10
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection$FailCause;
    .registers 2
    .parameter "name"

    .prologue
    .line 190
    const-class v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnection$FailCause;
    .registers 1

    .prologue
    .line 190
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnection$FailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method


# virtual methods
.method getErrorCode()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/android/internal/telephony/DataConnection$FailCause;->mErrorCode:I

    return v0
.end method

.method public isEventLoggable()Z
    .registers 2

    .prologue
    .line 285
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_30

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p0, v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public isPermanentFail()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 259
    const-string v1, "TIM"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 261
    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v1, :cond_18

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p0, v1, :cond_19

    :cond_18
    const/4 v0, 0x1

    .line 280
    :cond_19
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 298
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 334
    const-string v0, "Unknown Data Error"

    :goto_d
    return-object v0

    .line 300
    :pswitch_e
    const-string v0, "No Error"

    goto :goto_d

    .line 302
    :pswitch_11
    const-string v0, "Operator Barred"

    goto :goto_d

    .line 304
    :pswitch_14
    const-string v0, "Insufficient Resources"

    goto :goto_d

    .line 306
    :pswitch_17
    const-string v0, "Missing / Unknown APN"

    goto :goto_d

    .line 308
    :pswitch_1a
    const-string v0, "Unknown PDP Address"

    goto :goto_d

    .line 310
    :pswitch_1d
    const-string v0, "Error User Authentication"

    goto :goto_d

    .line 312
    :pswitch_20
    const-string v0, "Activation Reject GGSN"

    goto :goto_d

    .line 314
    :pswitch_23
    const-string v0, "Activation Reject unspecified"

    goto :goto_d

    .line 316
    :pswitch_26
    const-string v0, "Data Not Supported"

    goto :goto_d

    .line 318
    :pswitch_29
    const-string v0, "Data Not subscribed"

    goto :goto_d

    .line 320
    :pswitch_2c
    const-string v0, "Data Services Out of Order"

    goto :goto_d

    .line 322
    :pswitch_2f
    const-string v0, "NSAPI in use"

    goto :goto_d

    .line 324
    :pswitch_32
    const-string v0, "Protocol Errors"

    goto :goto_d

    .line 326
    :pswitch_35
    const-string v0, "Network Registration Failure"

    goto :goto_d

    .line 328
    :pswitch_38
    const-string v0, "Data Network Registration Failure"

    goto :goto_d

    .line 330
    :pswitch_3b
    const-string v0, "Radio Not Available"

    goto :goto_d

    .line 332
    :pswitch_3e
    const-string v0, "Transient Radio Error"

    goto :goto_d

    .line 298
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

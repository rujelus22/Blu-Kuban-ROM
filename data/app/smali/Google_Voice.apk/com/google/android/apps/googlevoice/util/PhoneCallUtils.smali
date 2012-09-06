.class public Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;
.super Ljava/lang/Object;
.source "PhoneCallUtils.java"


# static fields
.field private static final detailFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final timeFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final typeLowerCaseNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final typeNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    .line 28
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_missed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_received:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_voicemail:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->LISTEN_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_listened:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_recorded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CHECK_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_checked:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SETTINGS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_settings:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CALL_RETURN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CLICK2CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->WEB_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_sms_in:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_sms_out:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MOBILE_DIALER_CALL_THROUGH:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SIP:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    .line 49
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_received:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_received:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_received:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->LISTEN_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_generic:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_recorded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CHECK_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_generic:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SETTINGS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_generic:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CALL_RETURN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CLICK2CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->WEB_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_received:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_sent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MOBILE_DIALER_CALL_THROUGH:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SIP:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->time_format_placed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    .line 70
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_missed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_received:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_voicemail:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->LISTEN_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_listen_in:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_recording:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CHECK_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_check_voicemail:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SETTINGS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_settings:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CALL_RETURN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_call_return:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CLICK2CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_click2call:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->WEB_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_web_call:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_sms_in:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_sms_out:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MOBILE_DIALER_CALL_THROUGH:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_call_through:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->phonecall_type_google_talk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    .line 91
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MISSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_missed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->INBOUND:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_received:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_voicemail:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->LISTEN_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_listen_in:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->RECORDING:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_recording:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CHECK_VOICEMAIL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_check_voicemail:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SETTINGS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_settings:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CALL_RETURN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_call_return:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->CLICK2CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_click2call:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->WEB_CALL:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_web_call:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_IN:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_sms_in:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_sms_out:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->MOBILE_DIALER_CALL_THROUGH:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_call_through:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->GOOGLE_TALK:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    sget v2, Lcom/google/android/apps/googlevoice/R$plurals;->phonecall_lc_type_google_talk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areCallsFromSameConversation([Lcom/google/android/apps/googlevoice/core/PhoneCall;)Z
    .registers 2
    .parameter "calls"

    .prologue
    .line 115
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->createPhoneCallsSnapshot([Lcom/google/android/apps/googlevoice/core/PhoneCall;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->areCallsFromSameConversation([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)Z

    move-result v0

    return v0
.end method

.method public static areCallsFromSameConversation([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)Z
    .registers 9
    .parameter "calls"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 124
    array-length v6, p0

    const/4 v7, 0x2

    if-ge v6, v7, :cond_7

    .line 138
    :cond_6
    :goto_6
    return v4

    .line 127
    :cond_7
    aget-object v6, p0, v5

    iget-object v1, v6, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->conversationId:Ljava/lang/String;

    .line 128
    .local v1, firstCallConversationId:Ljava/lang/String;
    if-nez v1, :cond_f

    move v4, v5

    .line 129
    goto :goto_6

    .line 131
    :cond_f
    const/4 v2, 0x1

    .local v2, i:I
    array-length v3, p0

    .local v3, len:I
    :goto_11
    if-ge v2, v3, :cond_6

    .line 132
    aget-object v6, p0, v2

    iget-object v0, v6, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->conversationId:Ljava/lang/String;

    .line 133
    .local v0, conversationId:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    move v4, v5

    .line 134
    goto :goto_6

    .line 131
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method public static createPhoneCallsSnapshot([Lcom/google/android/apps/googlevoice/core/PhoneCall;)[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .registers 5
    .parameter "phoneCalls"

    .prologue
    .line 224
    array-length v2, p0

    new-array v1, v2, [Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .line 225
    .local v1, snapshot:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_13

    .line 226
    new-instance v2, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;-><init>(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    aput-object v2, v1, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 228
    :cond_13
    return-object v1
.end method

.method public static getDetailFormat(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 207
    sget-object v1, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->detailFormats:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 208
    .local v0, format:Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    return v1

    :cond_f
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->phonecall_details_generic:I

    goto :goto_e
.end method

.method public static getLowerCaseTypeName(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 193
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeLowerCaseNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "type is invalid"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getTimeFormat(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 212
    sget-object v1, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->timeFormats:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 213
    .local v0, format:Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    return v1

    :cond_f
    sget v1, Lcom/google/android/apps/googlevoice/R$string;->time_format_generic:I

    goto :goto_e
.end method

.method public static getTypeName(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 198
    sget-object v0, Lcom/google/android/apps/googlevoice/util/PhoneCallUtils;->typeNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "type is invalid"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static groupCallsByType([Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;)Ljava/util/List;
    .registers 9
    .parameter "calls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v6, result:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v7, typeToCalls:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;Ljava/util/List<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;>;"
    move-object v0, p0

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_d
    if-ge v4, v5, :cond_2c

    aget-object v1, v0, v4

    .line 178
    .local v1, call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    iget-object v2, v1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->type:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    .line 179
    .local v2, callType:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 180
    .local v3, callsOfThisType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    if-nez v3, :cond_26

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #callsOfThisType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .restart local v3       #callsOfThisType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_26
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 188
    .end local v1           #call:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    .end local v2           #callType:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;
    .end local v3           #callsOfThisType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    :cond_2c
    return-object v6
.end method

.method public static isCallsFromSameContact(Ljava/util/Collection;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, calls:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    const/4 v5, 0x1

    .line 148
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_a

    move v4, v5

    .line 162
    :goto_9
    return v4

    .line 151
    :cond_a
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 152
    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    .line 153
    .local v1, firstCall:Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;
    iget-object v2, v1, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->contact:Ljava/lang/String;

    .line 154
    .local v2, firstCallContactInfo:Ljava/lang/String;
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 155
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;

    iget-object v0, v4, Lcom/google/android/apps/googlevoice/model/PhoneCallSnapshot;->contact:Ljava/lang/String;

    .line 156
    .local v0, contactInfo:Ljava/lang/String;
    if-nez v2, :cond_28

    if-nez v0, :cond_30

    :cond_28
    if-eqz v2, :cond_16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 158
    :cond_30
    const/4 v4, 0x0

    goto :goto_9

    .end local v0           #contactInfo:Ljava/lang/String;
    :cond_32
    move v4, v5

    .line 162
    goto :goto_9
.end method

.method public static isOutgoing(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 203
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

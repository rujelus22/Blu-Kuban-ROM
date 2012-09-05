.class public Lcom/sec/dsm/system/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static OSPS_MOBILE_TRACKING_EXT_STATUS_AMT_OFF:Ljava/lang/String;

.field public static OSPS_MOBILE_TRACKING_EXT_STATUS_STOP:Ljava/lang/String;

.field public static OSPS_MOBILE_TRACKING_EXT_STATUS_TRACKING:Ljava/lang/String;

.field public static OSPS_MOBILE_TRACKING_OPERATION_DONE:I

.field public static OSPS_MOBILE_TRACKING_OPERATION_GET_LOCATION:I

.field public static OSPS_MOBILE_TRACKING_OPERATION_NONE:I

.field public static OSPS_MOBILE_TRACKING_OPERATION_STOP:I

.field public static OSPS_MOBILE_TRACKING_OPERATION_TRACKING:I

.field public static OSPS_MOBILE_TRACKING_OPERATION_TRACKING_CONTINUE:I

.field public static OSPS_MOBILE_TRACKING_OPERATION_TRACKING_DONE:I

.field public static OSPS_MOBILE_TRACKING_OPERATION_TRACKING_OK:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    sput v1, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_NONE:I

    .line 15
    sput v2, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_GET_LOCATION:I

    .line 16
    sput v3, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_TRACKING:I

    .line 17
    const/4 v0, 0x3

    sput v0, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_STOP:I

    .line 18
    const/16 v0, 0xa

    sput v0, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_DONE:I

    .line 20
    sput v1, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_TRACKING_DONE:I

    .line 21
    sput v2, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_TRACKING_OK:I

    .line 22
    sput v3, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_OPERATION_TRACKING_CONTINUE:I

    .line 25
    const-string v0, "10"

    sput-object v0, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_EXT_STATUS_STOP:Ljava/lang/String;

    .line 26
    const-string v0, "20"

    sput-object v0, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_EXT_STATUS_TRACKING:Ljava/lang/String;

    .line 27
    const-string v0, "30"

    sput-object v0, Lcom/sec/dsm/system/Constants;->OSPS_MOBILE_TRACKING_EXT_STATUS_AMT_OFF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

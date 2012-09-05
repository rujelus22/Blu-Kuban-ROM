.class public abstract Landroid/net/fourG/net4GInfo;
.super Ljava/lang/Object;
.source "net4GInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;,
        Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;
    }
.end annotation


# static fields
.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field public static final linkStateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;",
            "Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;",
            ">;"
        }
    .end annotation
.end field

.field protected static mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field protected static mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/fourG/net4GSupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected m_n4GState:I

.field protected m_nCinr:I

.field protected m_nIpAddress:I

.field protected m_nLinkSpeed:I

.field protected m_nNetworkId:I

.field protected m_nRssi:I

.field protected m_nTxPower:I

.field protected m_net4GBaseStationInfo:Landroid/net/fourG/net4GBaseStationInfo;

.field protected m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

.field protected m_strBSID:Ljava/lang/String;

.field protected m_strMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/fourG/net4GSupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    .line 43
    sget-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->INACTIVE:Landroid/net/fourG/net4GSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->SCANNING:Landroid/net/fourG/net4GSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATING:Landroid/net/fourG/net4GSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->HANDSHAKE:Landroid/net/fourG/net4GSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->COMPLETED:Landroid/net/fourG/net4GSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->DORMANT:Landroid/net/fourG/net4GSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->UNINITIALIZED:Landroid/net/fourG/net4GSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->INVALID:Landroid/net/fourG/net4GSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    .line 296
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Ranging:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_RANGING:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->SBC:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->PKM:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_EAP_AUTHENTICATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_REGISTRATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->DSX:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_OPERATIONAL:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Idle:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_IDLE:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->IP_Renew:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DEREGISTRATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_PHY:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_MAC:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_Device:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_EAP_AUTHENTICATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_User:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_EAP_AUTHENTICATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_Sync:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NE:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NDREG:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->IP_USB:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->CONNECTED_USB:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->RESUME_USB:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->SUSPEND_USB:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Met_Exit_Criteria:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Landroid/net/fourG/net4GInfo;->linkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/16 v1, -0x270f

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/fourG/net4GInfo;->m_strBSID:Ljava/lang/String;

    .line 81
    iput v1, p0, Landroid/net/fourG/net4GInfo;->m_nRssi:I

    .line 82
    iput v1, p0, Landroid/net/fourG/net4GInfo;->m_nCinr:I

    .line 83
    sget-object v0, Landroid/net/fourG/net4GSupplicantState;->UNINITIALIZED:Landroid/net/fourG/net4GSupplicantState;

    iput-object v0, p0, Landroid/net/fourG/net4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/fourG/net4GInfo;->m_nIpAddress:I

    .line 85
    iput v2, p0, Landroid/net/fourG/net4GInfo;->m_nLinkSpeed:I

    .line 86
    sget-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_NOT_CONNECTED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    sput-object v0, Landroid/net/fourG/net4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 87
    sget-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_UNKNOWN_CAUSE:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    sput-object v0, Landroid/net/fourG/net4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    .line 88
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/fourG/net4GInfo;->m_strMacAddress:Ljava/lang/String;

    .line 89
    iput v2, p0, Landroid/net/fourG/net4GInfo;->m_nNetworkId:I

    .line 90
    iput v1, p0, Landroid/net/fourG/net4GInfo;->m_nTxPower:I

    .line 91
    iput v2, p0, Landroid/net/fourG/net4GInfo;->m_n4GState:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/fourG/net4GInfo;->m_net4GBaseStationInfo:Landroid/net/fourG/net4GBaseStationInfo;

    .line 93
    return-void
.end method

.method public static getDetailedStateOf(Landroid/net/fourG/net4GSupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .registers 2
    .parameter "suppState"

    .prologue
    .line 260
    sget-object v0, Landroid/net/fourG/net4GInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public static getLinkStateDetailed()Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;
    .registers 1

    .prologue
    .line 329
    sget-object v0, Landroid/net/fourG/net4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    return-object v0
.end method

.method public static getLinkStateReason()Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;
    .registers 1

    .prologue
    .line 358
    sget-object v0, Landroid/net/fourG/net4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    return-object v0
.end method

.method static valueOf(Ljava/lang/String;)Landroid/net/fourG/net4GSupplicantState;
    .registers 3
    .parameter "stateName"

    .prologue
    .line 265
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/fourG/net4GSupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/fourG/net4GSupplicantState;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 267
    :goto_8
    return-object v1

    .line 266
    :catch_9
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->INVALID:Landroid/net/fourG/net4GSupplicantState;

    goto :goto_8
.end method


# virtual methods
.method public abstract get4GBaseStationInfoServing()Landroid/net/fourG/net4GBaseStationInfo;
.end method

.method public get4GState()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_n4GState:I

    return v0
.end method

.method public getBSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Landroid/net/fourG/net4GInfo;->m_strBSID:Ljava/lang/String;

    return-object v0
.end method

.method public getCinr()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nCinr:I

    return v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 7

    .prologue
    .line 202
    const/4 v4, 0x4

    new-array v1, v4, [B

    .line 204
    .local v1, addrBytes:[B
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nIpAddress:I

    .line 205
    .local v0, addr:I
    const/4 v4, 0x0

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 206
    const/4 v4, 0x1

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 207
    const/4 v4, 0x2

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 208
    const/4 v4, 0x3

    shr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 212
    :try_start_23
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_26
    .catch Ljava/net/UnknownHostException; {:try_start_23 .. :try_end_26} :catch_28

    move-result-object v3

    .line 216
    :goto_27
    return-object v3

    .line 213
    :catch_28
    move-exception v2

    .line 214
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v3, 0x0

    goto :goto_27
.end method

.method public getIpAddress()I
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nIpAddress:I

    return v0
.end method

.method public getLinkSpeed()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nLinkSpeed:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/fourG/net4GInfo;->m_strMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkId()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nNetworkId:I

    return v0
.end method

.method public getRssi()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nRssi:I

    return v0
.end method

.method public abstract getSupplicantState()Landroid/net/fourG/net4GSupplicantState;
.end method

.method public getTxPower()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nTxPower:I

    return v0
.end method

.method public set4GBaseStationInfo(Landroid/net/fourG/net4GBaseStationInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 239
    iput-object p1, p0, Landroid/net/fourG/net4GInfo;->m_net4GBaseStationInfo:Landroid/net/fourG/net4GBaseStationInfo;

    .line 240
    return-void
.end method

.method public set4GState(I)V
    .registers 2
    .parameter "n4GState"

    .prologue
    .line 243
    iput p1, p0, Landroid/net/fourG/net4GInfo;->m_n4GState:I

    .line 244
    return-void
.end method

.method public setBSID(Ljava/lang/String;)V
    .registers 2
    .parameter "strBSID"

    .prologue
    .line 96
    iput-object p1, p0, Landroid/net/fourG/net4GInfo;->m_strBSID:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setCinr(I)V
    .registers 2
    .parameter "nCinr"

    .prologue
    .line 111
    iput p1, p0, Landroid/net/fourG/net4GInfo;->m_nCinr:I

    .line 112
    return-void
.end method

.method public setIpAddress(I)V
    .registers 2
    .parameter "address"

    .prologue
    .line 194
    iput p1, p0, Landroid/net/fourG/net4GInfo;->m_nIpAddress:I

    .line 195
    return-void
.end method

.method public setLinkSpeed(I)V
    .registers 2
    .parameter "linkSpeed"

    .prologue
    .line 151
    iput p1, p0, Landroid/net/fourG/net4GInfo;->m_nLinkSpeed:I

    .line 152
    return-void
.end method

.method public setLinkStateDetailed(Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;)V
    .registers 2
    .parameter "linkStateDetail"

    .prologue
    .line 321
    sput-object p1, Landroid/net/fourG/net4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 322
    return-void
.end method

.method setLinkStateReason(Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;)V
    .registers 2
    .parameter "linkStateReason"

    .prologue
    .line 350
    sput-object p1, Landroid/net/fourG/net4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    .line 351
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "macAddress"

    .prologue
    .line 158
    iput-object p1, p0, Landroid/net/fourG/net4GInfo;->m_strMacAddress:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setNetworkId(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 169
    iput p1, p0, Landroid/net/fourG/net4GInfo;->m_nNetworkId:I

    .line 170
    return-void
.end method

.method public setRssi(I)V
    .registers 2
    .parameter "rssi"

    .prologue
    .line 138
    iput p1, p0, Landroid/net/fourG/net4GInfo;->m_nRssi:I

    .line 139
    return-void
.end method

.method public abstract setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V
.end method

.method public setTxPower(I)V
    .registers 2
    .parameter "nTxPower"

    .prologue
    .line 220
    iput p1, p0, Landroid/net/fourG/net4GInfo;->m_nTxPower:I

    .line 221
    return-void
.end method

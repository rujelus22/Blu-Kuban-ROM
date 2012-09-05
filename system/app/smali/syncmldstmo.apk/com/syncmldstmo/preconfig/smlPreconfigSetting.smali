.class public Lcom/syncmldstmo/preconfig/smlPreconfigSetting;
.super Ljava/lang/Object;
.source "smlPreconfigSetting.java"


# static fields
.field public static m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

.field public static m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

.field public static m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;-><init>()V

    sput-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 84
    new-instance v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;-><init>()V

    sput-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 85
    new-instance v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;-><init>()V

    sput-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->InitRealServerInfo()V

    .line 90
    invoke-static {}, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->InitLabServerInfo()V

    .line 91
    invoke-static {}, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->InitTestServerInfo()V

    .line 92
    return-void
.end method

.method public static InitLabServerInfo()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "Emul server"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerName:Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "http://appsrv.voxmobili.com/emulsync2/s"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerUrl:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "appsrv.voxmobili.com"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerHostName:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "/emulsync2/s"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerPath:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const/16 v1, 0x50

    iput v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_nServerPort:I

    .line 129
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "491751873143"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerId:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "Qet212uZ"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerPassword:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Address"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szContactDbName:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Event"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szCalendarDbName:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Task"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szTaskDbName:Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Note"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szMemoDbName:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Profile"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szProfileDbName:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileName:Ljava/lang/String;

    .line 139
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileHomeUrl:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput-boolean v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_bNetworkProfileBearerUse:Z

    .line 141
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput-boolean v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_bNetworkProfileProxyUse:Z

    .line 142
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileProxyAddress:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileProxyPort:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileApn:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_nNetworkProfileApnType:I

    .line 146
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileId:Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfilePassword:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public static InitRealServerInfo()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 96
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "Real server"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerName:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "http://sync.t-mobile.de/tmdsync/s"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerUrl:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "sync.t-mobile.de"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerHostName:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "/tmdsync/s"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerPath:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_nServerPort:I

    .line 101
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "T-Mobile"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerId:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "T-Mobile"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerPassword:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Address"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szContactDbName:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Event"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szCalendarDbName:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szTaskDbName:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szMemoDbName:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szProfileDbName:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileName:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileHomeUrl:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput-boolean v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_bNetworkProfileBearerUse:Z

    .line 113
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput-boolean v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_bNetworkProfileProxyUse:Z

    .line 114
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileProxyAddress:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileProxyPort:Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileApn:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_nNetworkProfileApnType:I

    .line 118
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileId:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfilePassword:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public static InitTestServerInfo()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 152
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "voxmobili"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerName:Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "http://iot.voxmobili.com/mbsync2/s"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerUrl:Ljava/lang/String;

    .line 154
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "iot.voxmobili.com"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerHostName:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "/mbsync2/s"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerPath:Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const/16 v1, 0x50

    iput v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_nServerPort:I

    .line 157
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "im"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerId:Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "12345678"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerPassword:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Address"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szContactDbName:Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Event"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szCalendarDbName:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Task"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szTaskDbName:Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Note"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szMemoDbName:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, "./Profile"

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szProfileDbName:Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileName:Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileHomeUrl:Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput-boolean v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_bNetworkProfileBearerUse:Z

    .line 169
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput-boolean v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_bNetworkProfileProxyUse:Z

    .line 170
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileProxyAddress:Ljava/lang/String;

    .line 171
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileProxyPort:Ljava/lang/String;

    .line 172
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileApn:Ljava/lang/String;

    .line 173
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput v2, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_nNetworkProfileApnType:I

    .line 174
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileId:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfilePassword:Ljava/lang/String;

    .line 176
    return-void
.end method

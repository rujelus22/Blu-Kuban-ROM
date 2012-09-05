.class public Lcom/syncmldstmo/preconfig/smlPreconfigInfo;
.super Ljava/lang/Object;
.source "smlPreconfigInfo.java"


# instance fields
.field public m_bNetworkProfileBearerUse:Z

.field public m_bNetworkProfileProxyUse:Z

.field public m_nNetworkProfileApnType:I

.field public m_nServerPort:I

.field public m_szCalendarDbName:Ljava/lang/String;

.field public m_szContactDbName:Ljava/lang/String;

.field public m_szMemoDbName:Ljava/lang/String;

.field public m_szNetworkProfileApn:Ljava/lang/String;

.field public m_szNetworkProfileHomeUrl:Ljava/lang/String;

.field public m_szNetworkProfileId:Ljava/lang/String;

.field public m_szNetworkProfileName:Ljava/lang/String;

.field public m_szNetworkProfilePassword:Ljava/lang/String;

.field public m_szNetworkProfileProxyAddress:Ljava/lang/String;

.field public m_szNetworkProfileProxyPort:Ljava/lang/String;

.field public m_szProfileDbName:Ljava/lang/String;

.field public m_szServerHostName:Ljava/lang/String;

.field public m_szServerId:Ljava/lang/String;

.field public m_szServerName:Ljava/lang/String;

.field public m_szServerPassword:Ljava/lang/String;

.field public m_szServerPath:Ljava/lang/String;

.field public m_szServerUrl:Ljava/lang/String;

.field public m_szTaskDbName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerUrl:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerHostName:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerPath:Ljava/lang/String;

    .line 9
    const/16 v0, 0x50

    iput v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_nServerPort:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerId:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szServerPassword:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szContactDbName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szCalendarDbName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szTaskDbName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szMemoDbName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szProfileDbName:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileName:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileHomeUrl:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_bNetworkProfileBearerUse:Z

    .line 22
    iput-boolean v1, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_bNetworkProfileProxyUse:Z

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileProxyAddress:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileProxyPort:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileApn:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_nNetworkProfileApnType:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfileId:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;->m_szNetworkProfilePassword:Ljava/lang/String;

    return-void
.end method

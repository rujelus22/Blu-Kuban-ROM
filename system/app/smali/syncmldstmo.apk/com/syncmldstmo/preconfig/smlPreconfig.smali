.class public Lcom/syncmldstmo/preconfig/smlPreconfig;
.super Ljava/lang/Object;
.source "smlPreconfig.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# instance fields
.field public m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

.field public m_PreconfigSetting:Lcom/syncmldstmo/preconfig/smlPreconfigSetting;

.field public m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

.field public m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 8
    new-instance v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 9
    new-instance v0, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    invoke-direct {v0}, Lcom/syncmldstmo/preconfig/smlPreconfigInfo;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 15
    new-instance v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;

    invoke-direct {v0}, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_PreconfigSetting:Lcom/syncmldstmo/preconfig/smlPreconfigSetting;

    .line 17
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_RealServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 18
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_LabServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 19
    sget-object v0, Lcom/syncmldstmo/preconfig/smlPreconfigSetting;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    iput-object v0, p0, Lcom/syncmldstmo/preconfig/smlPreconfig;->m_TestServer:Lcom/syncmldstmo/preconfig/smlPreconfigInfo;

    .line 20
    return-void
.end method

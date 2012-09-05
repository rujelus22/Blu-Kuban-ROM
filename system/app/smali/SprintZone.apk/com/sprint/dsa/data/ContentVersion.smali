.class public Lcom/sprint/dsa/data/ContentVersion;
.super Ljava/lang/Object;
.source "ContentVersion.java"


# instance fields
.field public mAlertsVer:Ljava/lang/String;

.field public mPagesVer:Ljava/lang/String;

.field public mPromosVer:Ljava/lang/String;

.field public mSettingsVer:Ljava/lang/String;

.field public mUpgradeOpt:Z

.field public mUpgradeVer:Ljava/lang/String;

.field public m_lastUpdate:J

.field public m_upgradePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "0"

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mSettingsVer:Ljava/lang/String;

    .line 5
    const-string v0, "0"

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mAlertsVer:Ljava/lang/String;

    .line 6
    const-string v0, "0"

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mPromosVer:Ljava/lang/String;

    .line 7
    const-string v0, "0"

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mPagesVer:Ljava/lang/String;

    .line 8
    const-string v0, "0"

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mUpgradeVer:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mUpgradeOpt:Z

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->m_upgradePath:Ljava/lang/String;

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sprint/dsa/data/ContentVersion;->m_lastUpdate:J

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .parameter "settingsVer"
    .parameter "alertsVer"
    .parameter "promosVer"
    .parameter "pagesVer"
    .parameter "lastUpdate"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "0"

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mSettingsVer:Ljava/lang/String;

    .line 5
    const-string v0, "0"

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mAlertsVer:Ljava/lang/String;

    .line 6
    const-string v0, "0"

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mPromosVer:Ljava/lang/String;

    .line 7
    const-string v0, "0"

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mPagesVer:Ljava/lang/String;

    .line 8
    const-string v0, "0"

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mUpgradeVer:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/data/ContentVersion;->mUpgradeOpt:Z

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/dsa/data/ContentVersion;->m_upgradePath:Ljava/lang/String;

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sprint/dsa/data/ContentVersion;->m_lastUpdate:J

    .line 16
    if-eqz p1, :cond_26

    .line 17
    iput-object p1, p0, Lcom/sprint/dsa/data/ContentVersion;->mSettingsVer:Ljava/lang/String;

    .line 18
    :cond_26
    if-eqz p2, :cond_2a

    .line 19
    iput-object p2, p0, Lcom/sprint/dsa/data/ContentVersion;->mAlertsVer:Ljava/lang/String;

    .line 20
    :cond_2a
    if-eqz p3, :cond_2e

    .line 21
    iput-object p3, p0, Lcom/sprint/dsa/data/ContentVersion;->mPromosVer:Ljava/lang/String;

    .line 22
    :cond_2e
    if-eqz p4, :cond_32

    iput-object p4, p0, Lcom/sprint/dsa/data/ContentVersion;->mPagesVer:Ljava/lang/String;

    .line 23
    :cond_32
    iput-wide p5, p0, Lcom/sprint/dsa/data/ContentVersion;->m_lastUpdate:J

    .line 24
    return-void
.end method

.method public static isOlder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "ver1"
    .parameter "ver2"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 30
    if-nez p0, :cond_5

    .line 39
    :cond_4
    :goto_4
    return v4

    .line 32
    :cond_5
    if-nez p1, :cond_9

    move v4, v5

    .line 33
    goto :goto_4

    .line 36
    :cond_9
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 37
    .local v0, version1:J
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 39
    .local v2, version2:J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_4

    move v4, v5

    goto :goto_4
.end method

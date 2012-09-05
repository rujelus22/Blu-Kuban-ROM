.class public Lcom/vlingo/client/asr/AndroidSRContext;
.super Lcom/vlingo/client/core/recognizer/SRContext;
.source "AndroidSRContext.java"


# instance fields
.field private m_Custom6Context:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/SRContext;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/asr/AndroidSRContext;->m_Custom6Context:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "fieldID"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/recognizer/SRContext;-><init>(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/asr/AndroidSRContext;->m_Custom6Context:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/asr/AndroidSRContext;->customFlag:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getCustomParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "name"

    .prologue
    .line 51
    const-string v3, "Custom2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 52
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, ctx:Landroid/content/Context;
    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 54
    .local v2, wifiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 55
    .local v1, info:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ltz v3, :cond_2d

    .line 56
    const-string v3, "Wifi"

    .line 73
    .end local v0           #ctx:Landroid/content/Context;
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    .end local v2           #wifiMgr:Landroid/net/wifi/WifiManager;
    :goto_2c
    return-object v3

    .line 58
    .restart local v0       #ctx:Landroid/content/Context;
    .restart local v1       #info:Landroid/net/wifi/WifiInfo;
    .restart local v2       #wifiMgr:Landroid/net/wifi/WifiManager;
    :cond_2d
    const-string v3, "Carrier"

    goto :goto_2c

    .line 60
    .end local v0           #ctx:Landroid/content/Context;
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    .end local v2           #wifiMgr:Landroid/net/wifi/WifiManager;
    :cond_30
    const-string v3, "Custom4"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-boolean v3, p0, Lcom/vlingo/client/asr/AndroidSRContext;->customFlag:Z

    if-eqz v3, :cond_3f

    .line 61
    const-string v3, "RecoStartedByWakeUpWord"

    goto :goto_2c

    .line 63
    :cond_3f
    const-string v3, "Custom5"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 65
    const-string v3, "audiofilelog_enabled"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 67
    const-string v3, "AudioFileLoggingEnabled"

    goto :goto_2c

    .line 70
    :cond_53
    iget-object v3, p0, Lcom/vlingo/client/asr/AndroidSRContext;->m_Custom6Context:Ljava/lang/String;

    if-eqz v3, :cond_62

    const-string v3, "Custom6"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 71
    iget-object v3, p0, Lcom/vlingo/client/asr/AndroidSRContext;->m_Custom6Context:Ljava/lang/String;

    goto :goto_2c

    .line 73
    :cond_62
    const-string v3, ""

    goto :goto_2c
.end method

.method public getFieldType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41
    const-string v0, "<xml><taboofilter>"

    .line 42
    .local v0, fType:Ljava/lang/String;
    const-string v1, "profanity_filter"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</taboofilter></xml>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0

    .line 45
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method public setCustom6Context(Ljava/lang/String;)V
    .registers 2
    .parameter "custom6Context"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vlingo/client/asr/AndroidSRContext;->m_Custom6Context:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setRecoStartedByPhraseSpotter(Z)V
    .registers 2
    .parameter "recoStartedByPhraseSpotter"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/vlingo/client/asr/AndroidSRContext;->customFlag:Z

    .line 38
    return-void
.end method

.class public Lcom/vlingo/client/asr/VlingoSoftwareMeta;
.super Lcom/vlingo/client/core/recognizer/SoftwareMeta;
.source "VlingoSoftwareMeta.java"


# instance fields
.field appid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->resetAppId()V

    .line 18
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string v0, "SamsungVoiceUI"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetAppId()V
    .registers 3

    .prologue
    .line 21
    const-string v0, "APP_ID"

    const-string v1, "com.vlingo.client.vvandroid"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->appid:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2
    .parameter "appid"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->appid:Ljava/lang/String;

    .line 26
    return-void
.end method

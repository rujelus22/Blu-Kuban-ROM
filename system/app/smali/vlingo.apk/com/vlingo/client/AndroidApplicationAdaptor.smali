.class public Lcom/vlingo/client/AndroidApplicationAdaptor;
.super Lcom/vlingo/client/core/common/ApplicationAdaptor;
.source "AndroidApplicationAdaptor.java"


# instance fields
.field app:Landroid/app/Application;

.field private appChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/vlingo/client/core/common/ApplicationAdaptor;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/vlingo/client/AndroidApplicationAdaptor;->app:Landroid/app/Application;

    .line 25
    iput-object v0, p0, Lcom/vlingo/client/AndroidApplicationAdaptor;->appChannel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public DEBUG_asrStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)V
    .registers 2
    .parameter "stats"

    .prologue
    .line 56
    return-void
.end method

.method public DEBUG_errorLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "errorCode"
    .parameter "errorMessage"

    .prologue
    .line 64
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->errorDisplayed(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public DEBUG_openSuccess(Lcom/vlingo/client/core/net/ConnectionResult;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 71
    return-void
.end method

.method public DEBUG_openURL(Ljava/lang/String;)V
    .registers 2
    .parameter "url"

    .prologue
    .line 77
    return-void
.end method

.method public getApplication()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vlingo/client/AndroidApplicationAdaptor;->app:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vlingo/client/AndroidApplicationAdaptor;->appChannel:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 33
    invoke-super {p0}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplicationChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/AndroidApplicationAdaptor;->appChannel:Ljava/lang/String;

    .line 34
    :cond_a
    iget-object v0, p0, Lcom/vlingo/client/AndroidApplicationAdaptor;->appChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionTestFieldID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionTestServerDetails()Lcom/vlingo/client/core/recognizer/SRServerDetails;
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefeaultApplicationChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    const-string v0, "Preinstall Free"

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .registers 2
    .parameter "app"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vlingo/client/AndroidApplicationAdaptor;->app:Landroid/app/Application;

    .line 45
    return-void
.end method

.method public isAudioStreamingEnabled()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public setApplicationChannel(Ljava/lang/String;)V
    .registers 3
    .parameter "appChannel"

    .prologue
    .line 38
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 39
    :cond_8
    invoke-super {p0}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplicationChannel()Ljava/lang/String;

    move-result-object p1

    .line 40
    :cond_c
    iput-object p1, p0, Lcom/vlingo/client/AndroidApplicationAdaptor;->appChannel:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public showFatalDialog(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 95
    return-void
.end method

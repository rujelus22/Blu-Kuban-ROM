.class public Lcom/vlingo/client/widget/VlingoWidget_4x1;
.super Lcom/vlingo/client/widget/VlingoWidgetBase;
.source "VlingoWidget_4x1.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vlingo/client/widget/VlingoWidgetBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected containsBarButton()Z
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method protected containsOpenVlingoButton()Z
    .registers 2

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method protected containsRecordButton()Z
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultLayout()I
    .registers 2

    .prologue
    .line 15
    const v0, 0x7f030071

    return v0
.end method

.method protected onWidgetUpdate()V
    .registers 3

    .prologue
    .line 32
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "widget-bar"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 33
    return-void
.end method

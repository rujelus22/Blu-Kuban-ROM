.class public Lcom/vlingo/client/car/util/CarActivityUtil;
.super Ljava/lang/Object;
.source "CarActivityUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToastAndTTS(Ljava/lang/String;Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 4
    .parameter "text"
    .parameter "del"

    .prologue
    .line 22
    invoke-interface {p1}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/vlingo/client/util/ActivityUtil;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 23
    invoke-static {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarError(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    .line 24
    .local v0, demand:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-interface {p1, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 25
    return-void
.end method

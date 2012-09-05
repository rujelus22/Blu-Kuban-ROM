.class Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/CarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarActivity;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/CarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/CarActivity;Lcom/vlingo/client/car/CarActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2131
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 4
    .parameter "signalStrength"

    .prologue
    .line 2139
    invoke-static {}, Lcom/vlingo/client/core/net/ConnectionManager;->getInstance()Lcom/vlingo/client/core/net/ConnectionManager;

    move-result-object v0

    .line 2140
    .local v0, cm:Lcom/vlingo/client/core/net/ConnectionManager;
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/net/ConnectionManager;->setCdmaSignal(I)V

    .line 2141
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/net/ConnectionManager;->setEvdoSignal(I)V

    .line 2142
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/net/ConnectionManager;->setGsmSignal(I)V

    .line 2143
    return-void
.end method

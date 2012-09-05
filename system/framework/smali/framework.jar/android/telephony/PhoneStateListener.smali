.class public Landroid/telephony/PhoneStateListener;
.super Ljava/lang/Object;
.source "PhoneStateListener.java"


# static fields
.field public static final LISTEN_CALL_FORWARDING_INDICATOR:I = 0x8

.field public static final LISTEN_CALL_STATE:I = 0x20

.field public static final LISTEN_CELL_LOCATION:I = 0x10

.field public static final LISTEN_DATA_ACTIVITY:I = 0x80

.field public static final LISTEN_DATA_CONNECTION_STATE:I = 0x40

.field public static final LISTEN_DUN_DATA_ACTIVITY:I = 0x400

.field public static final LISTEN_DUN_DATA_CONNECTION_STATE:I = 0x800

.field public static final LISTEN_MESSAGE_WAITING_INDICATOR:I = 0x4

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_OTASP_CHANGED:I = 0x200

.field public static final LISTEN_SERVICE_STATE:I = 0x1

.field public static final LISTEN_SIGNAL_STRENGTH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_SIGNAL_STRENGTHS:I = 0x100


# instance fields
.field callback:Lcom/android/internal/telephony/IPhoneStateListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Landroid/telephony/PhoneStateListener$1;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$1;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 379
    new-instance v0, Landroid/telephony/PhoneStateListener$2;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$2;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    .line 173
    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .registers 2
    .parameter "cfi"

    .prologue
    .line 213
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 231
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 2
    .parameter "location"

    .prologue
    .line 220
    return-void
.end method

.method public onDataActivity(I)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 262
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 243
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 249
    return-void
.end method

.method public onDunDataActivity(I)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 290
    return-void
.end method

.method public onDunDataConnectionStateChanged(II)V
    .registers 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 301
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .registers 2
    .parameter "mwi"

    .prologue
    .line 206
    return-void
.end method

.method public onOtaspChanged(I)V
    .registers 2
    .parameter "otaspMode"

    .prologue
    .line 316
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2
    .parameter "serviceState"

    .prologue
    .line 185
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .registers 2
    .parameter "asu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 2
    .parameter "signalStrength"

    .prologue
    .line 274
    return-void
.end method

.class final Lcom/locationlabs/v3client/RadioSignalService$1;
.super Landroid/telephony/PhoneStateListener;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/locationlabs/v3client/RadioSignalService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/locationlabs/v3client/RadioSignalService;


# direct methods
.method constructor <init>(Lcom/locationlabs/v3client/RadioSignalService;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/locationlabs/v3client/RadioSignalService$1;->a:Lcom/locationlabs/v3client/RadioSignalService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 4
    .parameter

    .prologue
    .line 32
    invoke-static {p1}, Lcom/locationlabs/v3client/RadioSignalService;->a(Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/locationlabs/v3client/RadioSignalService;->a(Ljava/lang/Long;)Ljava/lang/Long;

    .line 34
    return-void
.end method

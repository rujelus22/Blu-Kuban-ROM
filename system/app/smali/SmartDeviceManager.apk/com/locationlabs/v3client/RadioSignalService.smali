.class public Lcom/locationlabs/v3client/RadioSignalService;
.super Landroid/app/Service;
.source "a"


# static fields
.field private static a:Landroid/telephony/PhoneStateListener;

.field private static b:Landroid/telephony/SignalStrength;

.field private static c:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/RadioSignalService;->c:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a()Landroid/telephony/SignalStrength;
    .registers 6

    .prologue
    .line 49
    sget-object v0, Lcom/locationlabs/v3client/RadioSignalService;->c:Ljava/lang/Long;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/locationlabs/v3client/RadioSignalService;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    .line 50
    :cond_15
    const/4 v0, 0x0

    .line 52
    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Lcom/locationlabs/v3client/RadioSignalService;->b:Landroid/telephony/SignalStrength;

    goto :goto_16
.end method

.method static synthetic a(Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .registers 1
    .parameter

    .prologue
    .line 12
    sput-object p0, Lcom/locationlabs/v3client/RadioSignalService;->b:Landroid/telephony/SignalStrength;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 1
    .parameter

    .prologue
    .line 12
    sput-object p0, Lcom/locationlabs/v3client/RadioSignalService;->c:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 28
    sget-object v0, Lcom/locationlabs/v3client/RadioSignalService;->a:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_1a

    .line 29
    new-instance v0, Lcom/locationlabs/v3client/RadioSignalService$1;

    invoke-direct {v0, p0}, Lcom/locationlabs/v3client/RadioSignalService$1;-><init>(Lcom/locationlabs/v3client/RadioSignalService;)V

    sput-object v0, Lcom/locationlabs/v3client/RadioSignalService;->a:Landroid/telephony/PhoneStateListener;

    .line 36
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/RadioSignalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/locationlabs/v3client/RadioSignalService;->a:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 39
    :cond_1a
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 45
    const/4 v0, 0x1

    return v0
.end method

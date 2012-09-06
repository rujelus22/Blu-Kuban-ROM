.class public Lcom/google/android/apps/googlevoice/proxy/TelephonyManagerProxyImpl;
.super Ljava/lang/Object;
.source "TelephonyManagerProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/TelephonyManagerProxy;


# instance fields
.field private final service:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/TelephonyManagerProxyImpl;->service:Landroid/telephony/TelephonyManager;

    .line 18
    return-void
.end method


# virtual methods
.method public getCallState()I
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/TelephonyManagerProxyImpl;->service:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 4
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/TelephonyManagerProxyImpl;->service:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 23
    return-void
.end method

.class public Lcom/google/android/apps/googlevoice/proxy/VibratorProxyImpl;
.super Ljava/lang/Object;
.source "VibratorProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/VibratorProxy;


# instance fields
.field private final delegate:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/os/Vibrator;)V
    .registers 2
    .parameter "vibrator"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/VibratorProxyImpl;->delegate:Landroid/os/Vibrator;

    .line 17
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/VibratorProxyImpl;->delegate:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 27
    return-void
.end method

.method public getDelegate()Landroid/os/Vibrator;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/VibratorProxyImpl;->delegate:Landroid/os/Vibrator;

    return-object v0
.end method

.method public vibrate(J)V
    .registers 4
    .parameter "milliseconds"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/VibratorProxyImpl;->delegate:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 37
    return-void
.end method

.method public vibrate([JI)V
    .registers 4
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/VibratorProxyImpl;->delegate:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 32
    return-void
.end method

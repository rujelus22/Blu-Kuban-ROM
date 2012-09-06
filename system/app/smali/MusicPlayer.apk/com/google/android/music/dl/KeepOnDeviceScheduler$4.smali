.class Lcom/google/android/music/dl/KeepOnDeviceScheduler$4;
.super Lcom/google/android/music/dl/INetworkChangeListener$Stub;
.source "KeepOnDeviceScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/KeepOnDeviceScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$4;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-direct {p0}, Lcom/google/android/music/dl/INetworkChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(ZZ)V
    .registers 4
    .parameter "mobileConnected"
    .parameter "wifiOrEthernetConnected"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$4;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    #calls: Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledState(ZZ)V
    invoke-static {v0, p1, p2}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->access$500(Lcom/google/android/music/dl/KeepOnDeviceScheduler;ZZ)V

    .line 298
    return-void
.end method

.class Lcom/google/android/music/dl/RingtoneScheduler$2;
.super Lcom/google/android/music/dl/INetworkChangeListener$Stub;
.source "RingtoneScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/RingtoneScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/RingtoneScheduler;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/RingtoneScheduler;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/music/dl/RingtoneScheduler$2;->this$0:Lcom/google/android/music/dl/RingtoneScheduler;

    invoke-direct {p0}, Lcom/google/android/music/dl/INetworkChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(ZZ)V
    .registers 4
    .parameter "mobileConnected"
    .parameter "wifiOrEthernetConnected"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/music/dl/RingtoneScheduler$2;->this$0:Lcom/google/android/music/dl/RingtoneScheduler;

    #calls: Lcom/google/android/music/dl/RingtoneScheduler;->refreshEnabledState(ZZ)V
    invoke-static {v0, p1, p2}, Lcom/google/android/music/dl/RingtoneScheduler;->access$000(Lcom/google/android/music/dl/RingtoneScheduler;ZZ)V

    .line 194
    return-void
.end method

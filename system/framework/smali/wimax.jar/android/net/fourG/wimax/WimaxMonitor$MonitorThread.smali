.class Landroid/net/fourG/wimax/WimaxMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WimaxMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/WimaxMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/fourG/wimax/WimaxMonitor;


# direct methods
.method public constructor <init>(Landroid/net/fourG/wimax/WimaxMonitor;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxMonitor$MonitorThread;->this$0:Landroid/net/fourG/wimax/WimaxMonitor;

    .line 83
    const-string v0, "WimaxMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 87
    const-string v0, "WimaxMonitor"

    const-string v1, "<----- MonitorThread Start ----->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

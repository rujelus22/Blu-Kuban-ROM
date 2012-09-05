.class Landroid/net/fourG/wimax/WimaxMonitor$EventHandler;
.super Landroid/os/Handler;
.source "WimaxMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/WimaxMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/fourG/wimax/WimaxMonitor;


# direct methods
.method constructor <init>(Landroid/net/fourG/wimax/WimaxMonitor;Landroid/os/Handler$Callback;)V
    .registers 3
    .parameter
    .parameter "callback"

    .prologue
    .line 132
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxMonitor$EventHandler;->this$0:Landroid/net/fourG/wimax/WimaxMonitor;

    .line 133
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 134
    return-void
.end method

.class Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;
.super Ljava/lang/Object;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WimaxStateChangeResult"
.end annotation


# instance fields
.field info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field state:Landroid/net/fourG/wimax/WimaxState;


# direct methods
.method constructor <init>(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V
    .registers 3
    .parameter "state"
    .parameter "info"

    .prologue
    .line 263
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/fourG/wimax/WimaxState;

    .line 265
    iput-object p2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 266
    return-void
.end method

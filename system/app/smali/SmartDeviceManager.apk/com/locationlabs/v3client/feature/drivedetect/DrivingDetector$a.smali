.class final Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/location/Location;

.field public b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;->b:J

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;->a:Landroid/location/Location;

    return-void
.end method

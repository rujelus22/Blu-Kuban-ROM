.class final Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "b"
.end annotation


# static fields
.field private static final j:Landroid/location/Location;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:Lau;

.field public g:Landroid/location/Location;

.field public h:Landroid/location/Location;

.field public i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lau;",
            "Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 764
    new-instance v0, Landroid/location/Location;

    const-string v1, "fake"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->j:Landroid/location/Location;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x2

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a:I

    .line 767
    iput v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->b:I

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->c:J

    .line 773
    iput-wide v4, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->d:J

    .line 774
    iput-wide v4, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->e:J

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->f:Lau;

    .line 777
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->j:Landroid/location/Location;

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->g:Landroid/location/Location;

    .line 778
    sget-object v0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->j:Landroid/location/Location;

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->h:Landroid/location/Location;

    .line 779
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    .line 783
    const-string v0, "DWD_MIN_CHECK_ANYWAY_INTERVAL_SEC"

    invoke-static {v0}, Ln;->c(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v8

    .line 784
    const-string v2, "DWD_MAX_CHECK_ANYWAY_INTERVAL_SEC"

    invoke-static {v2}, Ln;->c(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v8

    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v0, v6

    div-long/2addr v2, v6

    add-long/2addr v0, v2

    sub-long v0, v4, v0

    iput-wide v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->e:J

    .line 788
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .prologue
    .line 790
    iget-wide v0, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slowSamples:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fastSamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopGPSAt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startDrive@:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopDrive@:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sCellSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastGPS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->g:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refLoc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/locationlabs/v3client/feature/drivedetect/DrivingDetector$b;->h:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (&otherStuff)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

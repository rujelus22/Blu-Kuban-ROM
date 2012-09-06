.class Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;
.super Ljava/lang/Object;
.source "VisionGyroProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimestampedMatrix"
.end annotation


# instance fields
.field private final matrix:[F

.field private final startTime:J

.field private final stopTime:J

.field final synthetic this$0:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;JJ[F)V
    .registers 7
    .parameter
    .parameter "startTime"
    .parameter "stopTime"
    .parameter "matrix"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->this$0:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p2, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->startTime:J

    .line 33
    iput-wide p4, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->stopTime:J

    .line 34
    iput-object p6, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->matrix:[F

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->startTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->stopTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;)[F
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->matrix:[F

    return-object v0
.end method

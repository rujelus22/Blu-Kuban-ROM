.class Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;
.super Ljava/lang/Object;
.source "FrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeStats"
.end annotation


# instance fields
.field private numFrames:I

.field private runningAverageProcessTimePerFrame:F

.field final synthetic this$0:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

.field private totalProcessTime:J


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;)V
    .registers 4
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->this$0:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->numFrames:I

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->totalProcessTime:J

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->runningAverageProcessTimePerFrame:F

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->addFrame(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->totalProcessTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->numFrames:I

    return v0
.end method

.method private addFrame(J)V
    .registers 8
    .parameter "processTime"

    .prologue
    .line 94
    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->numFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->numFrames:I

    .line 96
    iget-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->totalProcessTime:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->totalProcessTime:J

    .line 98
    iget-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->totalProcessTime:J

    long-to-float v2, v2

    iget v3, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->numFrames:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 100
    .local v1, processTimePerFrame:F
    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->numFrames:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 101
    iput v1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->runningAverageProcessTimePerFrame:F

    .line 108
    :goto_1a
    return-void

    .line 103
    :cond_1b
    const v0, 0x3f733333

    .line 105
    .local v0, alpha:F
    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->runningAverageProcessTimePerFrame:F

    long-to-float v3, p1

    const v4, 0x3f733333

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->weightedAverage(FFF)F

    move-result v2

    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->runningAverageProcessTimePerFrame:F

    goto :goto_1a
.end method

.method private weightedAverage(FFF)F
    .registers 6
    .parameter "num1"
    .parameter "num2"
    .parameter "alpha"

    .prologue
    .line 90
    mul-float v0, p3, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public timePerFrame()F
    .registers 3

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->numFrames:I

    if-gtz v0, :cond_6

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_5
    return v0

    :cond_6
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->totalProcessTime:J

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->numFrames:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->this$0:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    #getter for: Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->isProcessingEnabled:Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->access$000(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->numFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frames] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->totalProcessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms total] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->runningAverageProcessTimePerFrame:F

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/apps/unveil/env/NumberUtils;->format(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_40
    return-object v0

    :cond_41
    const-string v0, "[DISABLED]"

    goto :goto_40
.end method

.class public Lcom/google/android/apps/unveil/TrackingSequenceActivity;
.super Landroid/app/Activity;
.source "TrackingSequenceActivity.java"


# static fields
.field private static final REQUEST_CODE:I = 0x2a

.field private static final USE_GL_RENDERER:Z


# instance fields
.field private activeSequence:Ljava/lang/String;

.field private averagePerformance:F

.field private averageTimePerFrame:F

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private numSequences:I

.field private resultReceived:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/unveil/TrackingSequenceActivity;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->averagePerformance:F

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/apps/unveil/TrackingSequenceActivity;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->averageTimePerFrame:F

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/apps/unveil/TrackingSequenceActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->numSequences:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/TrackingSequenceActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->activeSequence:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/unveil/TrackingSequenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->activeSequence:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/TrackingSequenceActivity;)Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/unveil/TrackingSequenceActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->resultReceived:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/TrackingSequenceActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->startTestSequence(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/unveil/TrackingSequenceActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->waitForResult()V

    return-void
.end method

.method private getCameraString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "sequenceLocation"

    .prologue
    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "image_sequence_directory"

    invoke-direct {p0, v3, p1}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->keyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v3, "lockstep_callbacks"

    const-string v4, "true"

    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->keyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v3, "skip_rendering"

    const-string v4, "false"

    invoke-direct {p0, v3, v4}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->keyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, extraVals:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, cameraString:Ljava/lang/String;
    return-object v0
.end method

.method private keyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startTestSequence(Ljava/lang/String;)V
    .registers 12
    .parameter "sequence"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 36
    new-instance v0, Lcom/google/android/apps/unveil/UnveilSettings;

    const v1, 0x7fffffff

    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->getCameraString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move v6, v5

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/unveil/UnveilSettings;-><init>(ILjava/lang/String;Ljava/lang/Double;Ljava/lang/Double;ZZZZ)V

    .line 46
    .local v0, settings:Lcom/google/android/apps/unveil/UnveilSettings;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v9, intent:Landroid/content/Intent;
    const-string v1, "UnveilSettings"

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/unveil/TrackingTestActivity;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    const/16 v1, 0x2a

    invoke-virtual {p0, v9, v1}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 51
    return-void
.end method

.method private waitForResult()V
    .registers 6

    .prologue
    .line 108
    monitor-enter p0

    .line 109
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->resultReceived:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v1, :cond_1b

    .line 112
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 113
    :catch_9
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    iget-object v1, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Exception!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 118
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v1

    .line 117
    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->resultReceived:Z

    .line 118
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_18

    .line 119
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 123
    const/16 v2, 0x2a

    if-ne p1, v2, :cond_6f

    .line 124
    monitor-enter p0

    .line 125
    const/4 v2, -0x1

    if-ne p2, v2, :cond_70

    .line 126
    const/4 v2, 0x1

    :try_start_9
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->resultReceived:Z

    .line 127
    const-string v2, "performance_key"

    const/high16 v3, -0x4080

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    .line 128
    .local v0, performance:F
    const-string v2, "cpu_key"

    const/high16 v3, -0x4080

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    .line 130
    .local v1, timePerFrame:F
    iget v2, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->averagePerformance:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->averagePerformance:F

    .line 131
    iget v2, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->averageTimePerFrame:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->averageTimePerFrame:F

    .line 132
    iget v2, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->numSequences:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->numSequences:I

    .line 134
    iget-object v2, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, ">>>>>>>>>>>>>>>>>>>>>>>>>>>> Finished sequence %4d %80s! Score: %1.4f score (%1.4f running average), %6.3f ms/frame (%6.3f running average)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->numSequences:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->activeSequence:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->averagePerformance:F

    iget v7, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->numSequences:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->averageTimePerFrame:F

    iget v7, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->numSequences:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 146
    .end local v0           #performance:F
    .end local v1           #timePerFrame:F
    :goto_6e
    monitor-exit p0

    .line 148
    :cond_6f
    return-void

    .line 142
    :cond_70
    iget-object v2, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Failure on sequence %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->activeSequence:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->setResult(I)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/TrackingSequenceActivity;->finish()V

    goto :goto_6e

    .line 146
    :catchall_87
    move-exception v2

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_9 .. :try_end_89} :catchall_87

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/unveil/TrackingSequenceActivity$1;-><init>(Lcom/google/android/apps/unveil/TrackingSequenceActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.class public Lcom/vlingo/client/speedtest/SpeedtestVariable;
.super Ljava/lang/Object;
.source "SpeedtestVariable.java"


# static fields
.field private static final LOTS_OF_STEPS:I = 0xf4240

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field currentValue:F

.field logMax:D

.field logMin:D

.field private maxValue:F

.field private minValue:F

.field private name:Ljava/lang/String;

.field private numSteps:I

.field randomGenerator:Ljava/util/Random;

.field private useExpProb:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/vlingo/client/speedtest/SpeedtestVariable;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFZI)V
    .registers 10
    .parameter "name"
    .parameter "min"
    .parameter "max"
    .parameter "useExpProb"
    .parameter "numSteps"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->name:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->minValue:F

    .line 28
    iput p3, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->maxValue:F

    .line 29
    iput-boolean p4, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->useExpProb:Z

    .line 30
    if-ltz p5, :cond_51

    .line 31
    iput p5, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->numSteps:I

    .line 37
    :goto_f
    if-eqz p4, :cond_49

    .line 38
    iget v0, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->minValue:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->logMin:D

    .line 39
    iget v0, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->maxValue:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->logMax:D

    .line 40
    sget-object v0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log min "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->logMin:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " log max "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->logMax:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 42
    :cond_49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->randomGenerator:Ljava/util/Random;

    .line 43
    return-void

    .line 34
    :cond_51
    const v0, 0xf4240

    iput v0, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->numSteps:I

    goto :goto_f
.end method


# virtual methods
.method public getCurrentValue()F
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->currentValue:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomValue()F
    .registers 13

    .prologue
    .line 46
    iget v4, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->numSteps:I

    if-nez v4, :cond_b

    .line 47
    iget v4, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->minValue:F

    iput v4, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->currentValue:F

    .line 48
    iget v3, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->minValue:F

    .line 64
    :goto_a
    return v3

    .line 51
    :cond_b
    iget-object v4, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->numSteps:I

    rem-int v2, v4, v5

    .line 52
    .local v2, step:I
    const/4 v3, 0x0

    .line 54
    .local v3, value:F
    iget-boolean v4, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->useExpProb:Z

    if-eqz v4, :cond_61

    .line 55
    iget-wide v4, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->logMin:D

    int-to-double v6, v2

    iget-wide v8, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->logMax:D

    iget-wide v10, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->logMin:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->numSteps:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    add-double v0, v4, v6

    .line 57
    .local v0, logValue:D
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 58
    sget-object v4, Lcom/vlingo/client/speedtest/SpeedtestVariable;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lv "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " v "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " step "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 63
    .end local v0           #logValue:D
    :goto_5e
    iput v3, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->currentValue:F

    goto :goto_a

    .line 61
    :cond_61
    iget v4, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->minValue:F

    int-to-float v5, v2

    iget v6, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->maxValue:F

    iget v7, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->minValue:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/vlingo/client/speedtest/SpeedtestVariable;->numSteps:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float v3, v4, v5

    goto :goto_5e
.end method

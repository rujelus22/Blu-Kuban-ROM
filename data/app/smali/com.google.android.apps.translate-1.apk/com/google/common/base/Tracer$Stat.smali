.class public final Lcom/google/common/base/Tracer$Stat;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stat"
.end annotation


# instance fields
.field private clockTime:I

.field private count:I

.field private extraInfo:[I

.field private silent:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/common/base/Tracer$Stat;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 603
    iget v0, p0, Lcom/google/common/base/Tracer$Stat;->count:I

    return v0
.end method

.method static synthetic access$1408(Lcom/google/common/base/Tracer$Stat;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 603
    iget v0, p0, Lcom/google/common/base/Tracer$Stat;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/base/Tracer$Stat;->count:I

    return v0
.end method

.method static synthetic access$1500(Lcom/google/common/base/Tracer$Stat;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 603
    iget v0, p0, Lcom/google/common/base/Tracer$Stat;->clockTime:I

    return v0
.end method

.method static synthetic access$1514(Lcom/google/common/base/Tracer$Stat;J)I
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 603
    iget v0, p0, Lcom/google/common/base/Tracer$Stat;->clockTime:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/google/common/base/Tracer$Stat;->clockTime:I

    return v0
.end method

.method static synthetic access$1600(Lcom/google/common/base/Tracer$Stat;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/common/base/Tracer$Stat;->extraInfo:[I

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/common/base/Tracer$Stat;[I)[I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/google/common/base/Tracer$Stat;->extraInfo:[I

    return-object p1
.end method

.method static synthetic access$1708(Lcom/google/common/base/Tracer$Stat;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 603
    iget v0, p0, Lcom/google/common/base/Tracer$Stat;->silent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/base/Tracer$Stat;->silent:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 613
    iget v0, p0, Lcom/google/common/base/Tracer$Stat;->count:I

    return v0
.end method

.method public getExtraInfo(I)I
    .registers 3
    .parameter "index"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/common/base/Tracer$Stat;->extraInfo:[I

    array-length v0, v0

    if-lt p1, v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/common/base/Tracer$Stat;->extraInfo:[I

    aget v0, v0, p1

    goto :goto_6
.end method

.method public getSilentCount()I
    .registers 2

    .prologue
    .line 619
    iget v0, p0, Lcom/google/common/base/Tracer$Stat;->silent:I

    return v0
.end method

.method public getTotalTime()I
    .registers 2

    .prologue
    .line 625
    iget v0, p0, Lcom/google/common/base/Tracer$Stat;->clockTime:I

    return v0
.end method

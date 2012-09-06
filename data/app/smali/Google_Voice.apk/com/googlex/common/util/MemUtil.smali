.class public Lcom/googlex/common/util/MemUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlex/common/util/MemUtil$MemoryUser;,
        Lcom/googlex/common/util/MemUtil$MemoryUsage;
    }
.end annotation


# static fields
.field private static FAST_UPDATE_INTERVAL:I

.field private static FAST_UPDATE_THRESHOLD:I

.field private static SLOW_UPDATE_INTERVAL:I

.field private static freeMemory:I

.field private static nextUpdateTime:J

.field private static totalMemory:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, -0x8000

    sput-wide v0, Lcom/googlex/common/util/MemUtil;->nextUpdateTime:J

    const/16 v0, 0xc8

    sput v0, Lcom/googlex/common/util/MemUtil;->FAST_UPDATE_INTERVAL:I

    const/16 v0, 0xbb8

    sput v0, Lcom/googlex/common/util/MemUtil;->SLOW_UPDATE_INTERVAL:I

    const/16 v0, 0x32

    sput v0, Lcom/googlex/common/util/MemUtil;->FAST_UPDATE_THRESHOLD:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeMemory()I
    .registers 1

    invoke-static {}, Lcom/googlex/common/util/MemUtil;->getMemory()V

    sget v0, Lcom/googlex/common/util/MemUtil;->freeMemory:I

    return v0
.end method

.method private static getMemory()V
    .registers 6

    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlex/common/Config;->getClock()Lcom/googlex/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/googlex/common/Clock;->relativeTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/googlex/common/util/MemUtil;->nextUpdateTime:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_13

    :goto_12
    return-void

    :cond_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    long-to-int v4, v4

    sput v4, Lcom/googlex/common/util/MemUtil;->freeMemory:I

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    long-to-int v3, v3

    sput v3, Lcom/googlex/common/util/MemUtil;->totalMemory:I

    invoke-interface {v0}, Lcom/googlex/common/Clock;->relativeTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    long-to-int v0, v3

    sget v3, Lcom/googlex/common/util/MemUtil;->FAST_UPDATE_THRESHOLD:I

    if-ge v0, v3, :cond_37

    sget v0, Lcom/googlex/common/util/MemUtil;->FAST_UPDATE_INTERVAL:I

    :goto_31
    int-to-long v3, v0

    add-long v0, v1, v3

    sput-wide v0, Lcom/googlex/common/util/MemUtil;->nextUpdateTime:J

    goto :goto_12

    :cond_37
    sget v0, Lcom/googlex/common/util/MemUtil;->SLOW_UPDATE_INTERVAL:I

    goto :goto_31
.end method

.method public static percentUsed()I
    .registers 2

    invoke-static {}, Lcom/googlex/common/util/MemUtil;->getMemory()V

    sget v0, Lcom/googlex/common/util/MemUtil;->totalMemory:I

    sget v1, Lcom/googlex/common/util/MemUtil;->freeMemory:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x64

    sget v1, Lcom/googlex/common/util/MemUtil;->totalMemory:I

    div-int/2addr v0, v1

    return v0
.end method

.method public static toKByteString(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/googlex/common/util/MemUtil;->toKBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toKBytes(I)I
    .registers 2

    add-int/lit16 v0, p0, 0x200

    shr-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 4

    const/16 v2, 0xa

    const/16 v0, 0x400

    const/high16 v1, 0x10

    if-le p0, v1, :cond_56

    invoke-static {p0, v1}, Lcom/googlex/common/util/MathUtil;->roundedDivision(II)I

    move-result v0

    if-ge v0, v2, :cond_3c

    mul-int/lit8 v0, p0, 0xa

    invoke-static {v0, v1}, Lcom/googlex/common/util/MathUtil;->roundedDivision(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    return-object v0

    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_56
    if-le p0, v0, :cond_a6

    invoke-static {p0, v0}, Lcom/googlex/common/util/MathUtil;->roundedDivision(II)I

    move-result v1

    if-ge v1, v2, :cond_8c

    mul-int/lit8 v1, p0, 0xa

    invoke-static {v1, v0}, Lcom/googlex/common/util/MathUtil;->roundedDivision(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3b
.end method

.method public static totalMemory()I
    .registers 1

    invoke-static {}, Lcom/googlex/common/util/MemUtil;->getMemory()V

    sget v0, Lcom/googlex/common/util/MemUtil;->totalMemory:I

    return v0
.end method

.method public static usedMemory()I
    .registers 2

    invoke-static {}, Lcom/googlex/common/util/MemUtil;->getMemory()V

    sget v0, Lcom/googlex/common/util/MemUtil;->totalMemory:I

    sget v1, Lcom/googlex/common/util/MemUtil;->freeMemory:I

    sub-int/2addr v0, v1

    return v0
.end method

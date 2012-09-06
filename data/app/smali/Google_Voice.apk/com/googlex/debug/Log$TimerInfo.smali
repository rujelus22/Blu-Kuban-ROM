.class Lcom/googlex/debug/Log$TimerInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlex/debug/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimerInfo"
.end annotation


# instance fields
.field private final logLevel:I

.field private final startTime:J


# direct methods
.method public constructor <init>(JI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/googlex/debug/Log$TimerInfo;->startTime:J

    iput p3, p0, Lcom/googlex/debug/Log$TimerInfo;->logLevel:I

    return-void
.end method


# virtual methods
.method public getLogLevel()I
    .registers 2

    iget v0, p0, Lcom/googlex/debug/Log$TimerInfo;->logLevel:I

    return v0
.end method

.method public getStartTime()J
    .registers 3

    iget-wide v0, p0, Lcom/googlex/debug/Log$TimerInfo;->startTime:J

    return-wide v0
.end method

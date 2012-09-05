.class public Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;
.super Ljava/lang/Object;
.source "StockGraphData.java"


# instance fields
.field private mClose:D

.field private mDate:Ljava/lang/String;

.field private mHigh:D

.field private mTimestamp:J

.field private mVolume:D


# direct methods
.method public constructor <init>(DDJDLjava/lang/String;)V
    .registers 10
    .parameter "high"
    .parameter "volume"
    .parameter "timestamp"
    .parameter "close"
    .parameter "date"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->mHigh:D

    .line 14
    iput-wide p7, p0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->mClose:D

    .line 15
    iput-wide p3, p0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->mVolume:D

    .line 16
    iput-wide p5, p0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->mTimestamp:J

    .line 17
    iput-object p9, p0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->mDate:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public GetClose()D
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->mClose:D

    return-wide v0
.end method

.method public GetHigh()D
    .registers 3

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->mHigh:D

    return-wide v0
.end method

.method public GetVolume()D
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->mVolume:D

    return-wide v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->mTimestamp:J

    return-wide v0
.end method

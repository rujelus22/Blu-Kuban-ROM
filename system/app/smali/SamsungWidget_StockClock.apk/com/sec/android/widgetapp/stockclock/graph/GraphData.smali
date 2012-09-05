.class public Lcom/sec/android/widgetapp/stockclock/graph/GraphData;
.super Ljava/lang/Object;
.source "GraphData.java"


# instance fields
.field mGraphDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->mGraphDataList:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public addGraphData(Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->mGraphDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->mGraphDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->updateDate:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;
    .registers 3
    .parameter "location"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->mGraphDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->mGraphDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->updateDate:Ljava/lang/String;

    .line 40
    return-void
.end method

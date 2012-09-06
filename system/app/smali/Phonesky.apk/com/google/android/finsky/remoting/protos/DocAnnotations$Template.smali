.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Template"
.end annotation


# instance fields
.field private cachedSize:I

.field private containerWithBanner_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

.field private dealOfTheDay_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

.field private editorialSeriesContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

.field private hasContainerWithBanner:Z

.field private hasDealOfTheDay:Z

.field private hasEditorialSeriesContainer:Z

.field private hasRecommendationsContainer:Z

.field private hasSeriesAntenna:Z

.field private hasTileDetailsReflectedGraphic2X2:Z

.field private hasTileFourBlock4X2:Z

.field private hasTileGraphic2X1:Z

.field private hasTileGraphic4X2:Z

.field private hasTileGraphicColoredTitle2X1:Z

.field private hasTileGraphicColoredTitle4X2:Z

.field private hasTileGraphicUpperLeftTitle2X1:Z

.field private recommendationsContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

.field private seriesAntenna_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

.field private tileDetailsReflectedGraphic2X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileFourBlock4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileGraphic2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileGraphic4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileGraphicColoredTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileGraphicColoredTitle4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

.field private tileGraphicUpperLeftTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1126
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1131
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->seriesAntenna_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    .line 1151
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1171
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1191
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1211
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicUpperLeftTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1231
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileDetailsReflectedGraphic2X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1251
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileFourBlock4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1271
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1291
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->containerWithBanner_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    .line 1311
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->dealOfTheDay_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    .line 1331
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->editorialSeriesContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    .line 1351
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->recommendationsContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    .line 1430
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    .line 1126
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1433
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    if-gez v0, :cond_7

    .line 1435
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getSerializedSize()I

    .line 1437
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    return v0
.end method

.method public getContainerWithBanner()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    .registers 2

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->containerWithBanner_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    return-object v0
.end method

.method public getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    .registers 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->dealOfTheDay_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    return-object v0
.end method

.method public getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .registers 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->editorialSeriesContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    return-object v0
.end method

.method public getRecommendationsContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;
    .registers 2

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->recommendationsContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1442
    const/4 v0, 0x0

    .line 1443
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1444
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getSeriesAntenna()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1447
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1448
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1451
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1452
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1455
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1456
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1459
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1460
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicUpperLeftTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1463
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1464
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileDetailsReflectedGraphic2X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1467
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1468
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileFourBlock4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1471
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1472
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getContainerWithBanner()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1475
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1476
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1479
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1480
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1483
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 1484
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1487
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasRecommendationsContainer()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1488
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getRecommendationsContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1491
    :cond_c6
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    .line 1492
    return v0
.end method

.method public getSeriesAntenna()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->seriesAntenna_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    return-object v0
.end method

.method public getTileDetailsReflectedGraphic2X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileDetailsReflectedGraphic2X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileFourBlock4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileFourBlock4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphic2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphic4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphicColoredTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphicColoredTitle4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphicUpperLeftTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicUpperLeftTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public hasContainerWithBanner()Z
    .registers 2

    .prologue
    .line 1292
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner:Z

    return v0
.end method

.method public hasDealOfTheDay()Z
    .registers 2

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay:Z

    return v0
.end method

.method public hasEditorialSeriesContainer()Z
    .registers 2

    .prologue
    .line 1332
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer:Z

    return v0
.end method

.method public hasRecommendationsContainer()Z
    .registers 2

    .prologue
    .line 1352
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasRecommendationsContainer:Z

    return v0
.end method

.method public hasSeriesAntenna()Z
    .registers 2

    .prologue
    .line 1132
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna:Z

    return v0
.end method

.method public hasTileDetailsReflectedGraphic2X2()Z
    .registers 2

    .prologue
    .line 1232
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2:Z

    return v0
.end method

.method public hasTileFourBlock4X2()Z
    .registers 2

    .prologue
    .line 1252
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2:Z

    return v0
.end method

.method public hasTileGraphic2X1()Z
    .registers 2

    .prologue
    .line 1152
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1:Z

    return v0
.end method

.method public hasTileGraphic4X2()Z
    .registers 2

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2:Z

    return v0
.end method

.method public hasTileGraphicColoredTitle2X1()Z
    .registers 2

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1:Z

    return v0
.end method

.method public hasTileGraphicColoredTitle4X2()Z
    .registers 2

    .prologue
    .line 1272
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2:Z

    return v0
.end method

.method public hasTileGraphicUpperLeftTitle2X1()Z
    .registers 2

    .prologue
    .line 1212
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1500
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1501
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_a2

    .line 1505
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1506
    :sswitch_d
    return-object p0

    .line 1511
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;-><init>()V

    .line 1512
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1513
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setSeriesAntenna(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1517
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1518
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1519
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphic2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1523
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1524
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1525
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphic4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1529
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1530
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1531
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphicColoredTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1535
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_3e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1536
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1537
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphicUpperLeftTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1541
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1542
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1543
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileDetailsReflectedGraphic2X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1547
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1548
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1549
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileFourBlock4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1553
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_62
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;-><init>()V

    .line 1554
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1555
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setContainerWithBanner(Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1559
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    :sswitch_6e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;-><init>()V

    .line 1560
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1561
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setDealOfTheDay(Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 1565
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    :sswitch_7a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 1566
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1567
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphicColoredTitle4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto/16 :goto_0

    .line 1571
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_87
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;-><init>()V

    .line 1572
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1573
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setEditorialSeriesContainer(Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto/16 :goto_0

    .line 1577
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    :sswitch_94
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;-><init>()V

    .line 1578
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1579
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setRecommendationsContainer(Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto/16 :goto_0

    .line 1501
    nop

    :sswitch_data_a2
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_26
        0x22 -> :sswitch_32
        0x2a -> :sswitch_3e
        0x32 -> :sswitch_4a
        0x3a -> :sswitch_56
        0x42 -> :sswitch_62
        0x4a -> :sswitch_6e
        0x52 -> :sswitch_7a
        0x5a -> :sswitch_87
        0x62 -> :sswitch_94
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    return-object v0
.end method

.method public setContainerWithBanner(Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1295
    if-nez p1, :cond_8

    .line 1296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1298
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner:Z

    .line 1299
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->containerWithBanner_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    .line 1300
    return-object p0
.end method

.method public setDealOfTheDay(Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1315
    if-nez p1, :cond_8

    .line 1316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1318
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay:Z

    .line 1319
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->dealOfTheDay_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    .line 1320
    return-object p0
.end method

.method public setEditorialSeriesContainer(Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1335
    if-nez p1, :cond_8

    .line 1336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1338
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer:Z

    .line 1339
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->editorialSeriesContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    .line 1340
    return-object p0
.end method

.method public setRecommendationsContainer(Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1355
    if-nez p1, :cond_8

    .line 1356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1358
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasRecommendationsContainer:Z

    .line 1359
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->recommendationsContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    .line 1360
    return-object p0
.end method

.method public setSeriesAntenna(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1135
    if-nez p1, :cond_8

    .line 1136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1138
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna:Z

    .line 1139
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->seriesAntenna_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    .line 1140
    return-object p0
.end method

.method public setTileDetailsReflectedGraphic2X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1235
    if-nez p1, :cond_8

    .line 1236
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1238
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2:Z

    .line 1239
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileDetailsReflectedGraphic2X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1240
    return-object p0
.end method

.method public setTileFourBlock4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1255
    if-nez p1, :cond_8

    .line 1256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1258
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2:Z

    .line 1259
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileFourBlock4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1260
    return-object p0
.end method

.method public setTileGraphic2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1155
    if-nez p1, :cond_8

    .line 1156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1158
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1:Z

    .line 1159
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1160
    return-object p0
.end method

.method public setTileGraphic4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1175
    if-nez p1, :cond_8

    .line 1176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1178
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2:Z

    .line 1179
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1180
    return-object p0
.end method

.method public setTileGraphicColoredTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1195
    if-nez p1, :cond_8

    .line 1196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1198
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1:Z

    .line 1199
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1200
    return-object p0
.end method

.method public setTileGraphicColoredTitle4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1275
    if-nez p1, :cond_8

    .line 1276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1278
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2:Z

    .line 1279
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1280
    return-object p0
.end method

.method public setTileGraphicUpperLeftTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1215
    if-nez p1, :cond_8

    .line 1216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1218
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1:Z

    .line 1219
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicUpperLeftTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1220
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1393
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getSeriesAntenna()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1395
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1396
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1398
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1399
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1401
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1402
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1404
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1405
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicUpperLeftTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1407
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1408
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileDetailsReflectedGraphic2X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1410
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1411
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileFourBlock4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1413
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1414
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getContainerWithBanner()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1416
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1417
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1419
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1420
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1422
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1423
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1425
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasRecommendationsContainer()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1426
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getRecommendationsContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$RecommendationsContainer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1428
    :cond_ad
    return-void
.end method

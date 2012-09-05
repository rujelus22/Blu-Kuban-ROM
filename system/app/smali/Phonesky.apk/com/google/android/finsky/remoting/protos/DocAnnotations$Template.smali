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

.field private hasSeriesAntenna:Z

.field private hasTileDetailsReflectedGraphic2X2:Z

.field private hasTileFourBlock4X2:Z

.field private hasTileGraphic2X1:Z

.field private hasTileGraphic4X2:Z

.field private hasTileGraphicColoredTitle2X1:Z

.field private hasTileGraphicColoredTitle4X2:Z

.field private hasTileGraphicUpperLeftTitle2X1:Z

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

    .line 1656
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1661
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->seriesAntenna_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    .line 1681
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1701
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1721
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1741
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicUpperLeftTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1761
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileDetailsReflectedGraphic2X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1781
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileFourBlock4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1801
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1821
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->containerWithBanner_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    .line 1841
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->dealOfTheDay_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    .line 1861
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->editorialSeriesContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    .line 1935
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    .line 1656
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1937
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    if-gez v0, :cond_7

    .line 1939
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getSerializedSize()I

    .line 1941
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    return v0
.end method

.method public getContainerWithBanner()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    .registers 2

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->containerWithBanner_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    return-object v0
.end method

.method public getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    .registers 2

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->dealOfTheDay_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    return-object v0
.end method

.method public getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .registers 2

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->editorialSeriesContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1945
    const/4 v0, 0x0

    .line 1946
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1947
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getSeriesAntenna()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1950
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1951
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1954
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1955
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1958
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1959
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1962
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1963
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicUpperLeftTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1966
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1967
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileDetailsReflectedGraphic2X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1970
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1971
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileFourBlock4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1974
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1975
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getContainerWithBanner()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1978
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1979
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1982
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1983
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1986
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 1987
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1990
    :cond_b5
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->cachedSize:I

    .line 1991
    return v0
.end method

.method public getSeriesAntenna()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 2

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->seriesAntenna_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    return-object v0
.end method

.method public getTileDetailsReflectedGraphic2X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileDetailsReflectedGraphic2X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileFourBlock4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileFourBlock4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphic2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphic4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphicColoredTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphicColoredTitle4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public getTileGraphicUpperLeftTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    .registers 2

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicUpperLeftTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    return-object v0
.end method

.method public hasContainerWithBanner()Z
    .registers 2

    .prologue
    .line 1822
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner:Z

    return v0
.end method

.method public hasDealOfTheDay()Z
    .registers 2

    .prologue
    .line 1842
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay:Z

    return v0
.end method

.method public hasEditorialSeriesContainer()Z
    .registers 2

    .prologue
    .line 1862
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer:Z

    return v0
.end method

.method public hasSeriesAntenna()Z
    .registers 2

    .prologue
    .line 1662
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna:Z

    return v0
.end method

.method public hasTileDetailsReflectedGraphic2X2()Z
    .registers 2

    .prologue
    .line 1762
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2:Z

    return v0
.end method

.method public hasTileFourBlock4X2()Z
    .registers 2

    .prologue
    .line 1782
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2:Z

    return v0
.end method

.method public hasTileGraphic2X1()Z
    .registers 2

    .prologue
    .line 1682
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1:Z

    return v0
.end method

.method public hasTileGraphic4X2()Z
    .registers 2

    .prologue
    .line 1702
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2:Z

    return v0
.end method

.method public hasTileGraphicColoredTitle2X1()Z
    .registers 2

    .prologue
    .line 1722
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1:Z

    return v0
.end method

.method public hasTileGraphicColoredTitle4X2()Z
    .registers 2

    .prologue
    .line 1802
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2:Z

    return v0
.end method

.method public hasTileGraphicUpperLeftTitle2X1()Z
    .registers 2

    .prologue
    .line 1742
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
    .line 1998
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1999
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_94

    .line 2003
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2004
    :sswitch_d
    return-object p0

    .line 2009
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;-><init>()V

    .line 2010
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2011
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setSeriesAntenna(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 2015
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 2016
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2017
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphic2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 2021
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 2022
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2023
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphic4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 2027
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_32
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 2028
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2029
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphicColoredTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 2033
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_3e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 2034
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2035
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphicUpperLeftTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 2039
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 2040
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2041
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileDetailsReflectedGraphic2X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 2045
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 2046
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2047
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileFourBlock4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 2051
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_62
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;-><init>()V

    .line 2052
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2053
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setContainerWithBanner(Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 2057
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    :sswitch_6e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;-><init>()V

    .line 2058
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2059
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setDealOfTheDay(Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto :goto_0

    .line 2063
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    :sswitch_7a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;-><init>()V

    .line 2064
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2065
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setTileGraphicColoredTitle4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto/16 :goto_0

    .line 2069
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;
    :sswitch_87
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;-><init>()V

    .line 2070
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2071
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->setEditorialSeriesContainer(Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    goto/16 :goto_0

    .line 1999
    :sswitch_data_94
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
    .line 1654
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    return-object v0
.end method

.method public setContainerWithBanner(Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1825
    if-nez p1, :cond_8

    .line 1826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1828
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner:Z

    .line 1829
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->containerWithBanner_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    .line 1830
    return-object p0
.end method

.method public setDealOfTheDay(Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1845
    if-nez p1, :cond_8

    .line 1846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1848
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay:Z

    .line 1849
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->dealOfTheDay_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    .line 1850
    return-object p0
.end method

.method public setEditorialSeriesContainer(Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1865
    if-nez p1, :cond_8

    .line 1866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1868
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer:Z

    .line 1869
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->editorialSeriesContainer_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    .line 1870
    return-object p0
.end method

.method public setSeriesAntenna(Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1665
    if-nez p1, :cond_8

    .line 1666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1668
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna:Z

    .line 1669
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->seriesAntenna_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    .line 1670
    return-object p0
.end method

.method public setTileDetailsReflectedGraphic2X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1765
    if-nez p1, :cond_8

    .line 1766
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1768
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2:Z

    .line 1769
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileDetailsReflectedGraphic2X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1770
    return-object p0
.end method

.method public setTileFourBlock4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1785
    if-nez p1, :cond_8

    .line 1786
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1788
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2:Z

    .line 1789
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileFourBlock4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1790
    return-object p0
.end method

.method public setTileGraphic2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1685
    if-nez p1, :cond_8

    .line 1686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1688
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1:Z

    .line 1689
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1690
    return-object p0
.end method

.method public setTileGraphic4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1705
    if-nez p1, :cond_8

    .line 1706
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1708
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2:Z

    .line 1709
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphic4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1710
    return-object p0
.end method

.method public setTileGraphicColoredTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1725
    if-nez p1, :cond_8

    .line 1726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1728
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1:Z

    .line 1729
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1730
    return-object p0
.end method

.method public setTileGraphicColoredTitle4X2(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1805
    if-nez p1, :cond_8

    .line 1806
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1808
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2:Z

    .line 1809
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicColoredTitle4X2_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1810
    return-object p0
.end method

.method public setTileGraphicUpperLeftTitle2X1(Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 3
    .parameter "value"

    .prologue
    .line 1745
    if-nez p1, :cond_8

    .line 1746
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1748
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1:Z

    .line 1749
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->tileGraphicUpperLeftTitle2X1_:Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    .line 1750
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
    .line 1900
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1901
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getSeriesAntenna()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1903
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1904
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1906
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1907
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphic4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1909
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1910
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1912
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1913
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicUpperLeftTitle2X1()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1915
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1916
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileDetailsReflectedGraphic2X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1918
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1919
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileFourBlock4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1921
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasContainerWithBanner()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1922
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getContainerWithBanner()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1924
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasDealOfTheDay()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1925
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1927
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1928
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getTileGraphicColoredTitle4X2()Lcom/google/android/finsky/remoting/protos/DocAnnotations$TileTemplate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1930
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasEditorialSeriesContainer()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1931
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1933
    :cond_9e
    return-void
.end method

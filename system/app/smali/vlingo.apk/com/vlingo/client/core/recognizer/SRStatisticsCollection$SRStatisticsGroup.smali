.class public final Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;
.super Ljava/lang/Object;
.source "SRStatisticsCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SRStatisticsGroup"
.end annotation


# instance fields
.field private final groupedStatistics:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/recognizer/SRStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private final guttID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/recognizer/SRStatistics;)V
    .registers 3
    .parameter "newStatistics"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->groupedStatistics:Ljava/util/Vector;

    .line 98
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRStatistics;->getGuttId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->guttID:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->groupedStatistics:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/recognizer/SRStatistics;Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;-><init>(Lcom/vlingo/client/core/recognizer/SRStatistics;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;Lcom/vlingo/client/core/recognizer/SRStatistics;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->mergeStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)Z

    move-result v0

    return v0
.end method

.method private getXML()Ljava/lang/String;
    .registers 7

    .prologue
    .line 111
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v4, "<Stats "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v4, "guttid"

    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->guttID:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/vlingo/client/core/http/HttpUtil;->genAtr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->groupedStatistics:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 117
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    if-ge v0, v2, :cond_3d

    .line 118
    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->groupedStatistics:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/core/recognizer/SRStatistics;

    .line 119
    .local v3, stats:Lcom/vlingo/client/core/recognizer/SRStatistics;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/recognizer/SRStatistics;->getXML(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->DEBUG_asrStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 124
    .end local v3           #stats:Lcom/vlingo/client/core/recognizer/SRStatistics;
    :cond_3d
    const-string v4, "</Stats>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private mergeStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)Z
    .registers 4
    .parameter "statsToMerge"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->guttID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRStatistics;->getGuttId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 104
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->groupedStatistics:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public schedule(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V
    .registers 10
    .parameter "serverDetails"
    .parameter "clientMeta"
    .parameter "softwareMeta"

    .prologue
    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->getXML()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, xml:Ljava/lang/String;
    const-string v2, "SRStats"

    new-instance v3, Lcom/vlingo/client/core/http/BaseHttpCallback;

    invoke-direct {v3}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    invoke-interface {p1}, Lcom/vlingo/client/core/recognizer/SRServerDetails;->getStatsURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Lcom/vlingo/client/core/http/URL;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v0

    .line 136
    .local v0, request:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    invoke-virtual {v0, p2}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setClientMeta(Lcom/vlingo/client/core/recognizer/ClientMeta;)V

    .line 137
    invoke-virtual {v0, p3}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setSoftwareMeta(Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 138
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setMaxRetry(I)V

    .line 139
    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->schedule(JZZ)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_27

    .line 148
    .end local v0           #request:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .end local v1           #xml:Ljava/lang/String;
    :goto_24
    return-void

    .line 144
    :catchall_25
    move-exception v2

    throw v2

    .line 141
    :catch_27
    move-exception v2

    goto :goto_24
.end method

.class public Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;
.super Lcom/vlingo/client/core/http/BaseHttpCallback;
.source "SRStatisticsCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$1;,
        Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;
    }
.end annotation


# static fields
.field private static final SEND_WAIT_TIME:I = 0x2710


# instance fields
.field private acceptedText:Ljava/lang/String;

.field private clientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

.field private final collection:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;",
            ">;"
        }
    .end annotation
.end field

.field private serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

.field private softwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vlingo/client/core/http/BaseHttpCallback;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->collection:Ljava/util/Vector;

    .line 92
    return-void
.end method


# virtual methods
.method public addStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)V
    .registers 6
    .parameter "statistics"

    .prologue
    .line 48
    if-nez p1, :cond_3

    .line 61
    :cond_2
    :goto_2
    return-void

    .line 51
    :cond_3
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->collection:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 52
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_1d

    .line 53
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->collection:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;

    .line 54
    .local v0, group:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;
    #calls: Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->mergeStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)Z
    invoke-static {v0, p1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->access$000(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;Lcom/vlingo/client/core/recognizer/SRStatistics;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 59
    .end local v0           #group:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;
    :cond_1d
    new-instance v0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;-><init>(Lcom/vlingo/client/core/recognizer/SRStatistics;Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$1;)V

    .line 60
    .restart local v0       #group:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->collection:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public getAcceptedText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->acceptedText:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionElements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->collection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public onRetrysExhausted()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method public schedule(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V
    .registers 7
    .parameter "serverDetails"
    .parameter "clientMeta"
    .parameter "softwareMeta"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

    .line 77
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->clientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    .line 78
    iput-object p3, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->softwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    .line 80
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->collection:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 81
    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 82
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;

    .line 83
    .local v1, group:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;
    invoke-virtual {v1, p1, p2, p3}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;->schedule(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    goto :goto_c

    .line 85
    .end local v1           #group:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection$SRStatisticsGroup;
    :cond_1c
    return-void
.end method

.method public setAcceptedText(Ljava/lang/String;)V
    .registers 2
    .parameter "acceptedText"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->acceptedText:Ljava/lang/String;

    .line 65
    return-void
.end method

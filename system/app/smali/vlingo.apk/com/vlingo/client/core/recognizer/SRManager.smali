.class public interface abstract Lcom/vlingo/client/core/recognizer/SRManager;
.super Ljava/lang/Object;
.source "SRManager.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getLastGuttID()Ljava/lang/String;
.end method

.method public abstract init(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/SRRequestListener;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V
.end method

.method public abstract newRequest(Lcom/vlingo/client/core/recognizer/SRContext;)Lcom/vlingo/client/core/recognizer/SRRequest;
.end method

.method public abstract readyForRecognition()Z
.end method

.method public abstract sendStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)V
.end method

.method public abstract sendStatsCollection(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V
.end method

.method public abstract setConnectionProvider(Lcom/vlingo/client/core/net/ConnectionProvider;)V
.end method

.method public abstract setServer(Lcom/vlingo/client/core/recognizer/SRServerDetails;)V
.end method

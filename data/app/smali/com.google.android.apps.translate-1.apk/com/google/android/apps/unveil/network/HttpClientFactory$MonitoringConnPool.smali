.class public final Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringConnPool;
.super Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonitoringConnPool"
.end annotation


# instance fields
.field private final connMan:Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;

.field private final params:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;)V
    .registers 4
    .parameter "connOperator"
    .parameter "params"
    .parameter "connMan"

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V

    .line 161
    iput-object p2, p0, Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringConnPool;->params:Lorg/apache/http/params/HttpParams;

    .line 162
    iput-object p3, p0, Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringConnPool;->connMan:Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;

    .line 163
    return-void
.end method


# virtual methods
.method protected createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .registers 6
    .parameter "rospl"
    .parameter "op"

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    .line 169
    .local v0, entry:Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringConnPool;->connMan:Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;

    iget-object v2, p0, Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringConnPool;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v1, p1, v2}, Lcom/google/android/apps/unveil/network/utils/ConnectionCountMonitor;->checkConnectionCounts(Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/params/HttpParams;)V

    .line 170
    return-object v0
.end method

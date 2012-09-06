.class public final Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MonitoringTSCCManager"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 3
    .parameter "params"
    .parameter "schreg"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 142
    return-void
.end method


# virtual methods
.method protected createConnectionPool(Lorg/apache/http/params/HttpParams;)Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringConnPool;
    .registers 4
    .parameter "params"

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringConnPool;

    iget-object v1, p0, Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringConnPool;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;)V

    return-object v0
.end method

.method protected bridge synthetic createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    .registers 3
    .parameter "x0"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringTSCCManager;->createConnectionPool(Lorg/apache/http/params/HttpParams;)Lcom/google/android/apps/unveil/network/HttpClientFactory$MonitoringConnPool;

    move-result-object v0

    return-object v0
.end method

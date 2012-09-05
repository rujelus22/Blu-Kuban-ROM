.class public Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;
.super Lorg/apache/commons/httpclient/params/HttpConnectionParams;
.source "HttpConnectionManagerParams.java"


# static fields
.field public static final MAX_HOST_CONNECTIONS:Ljava/lang/String; = "http.connection-manager.max-per-host"

.field public static final MAX_TOTAL_CONNECTIONS:Ljava/lang/String; = "http.connection-manager.max-total"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultMaxConnectionsPerHost()I
    .registers 2

    .prologue
    .line 129
    sget-object v0, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v0

    return v0
.end method

.method public getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I
    .registers 6
    .parameter "hostConfiguration"

    .prologue
    const/4 v2, 0x2

    .line 144
    const-string v3, "http.connection-manager.max-per-host"

    invoke-virtual {p0, v3}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 145
    .local v0, m:Ljava/util/Map;
    if-nez v0, :cond_c

    .line 155
    :cond_b
    :goto_b
    return v2

    .line 149
    :cond_c
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 150
    .local v1, max:Ljava/lang/Integer;
    if-nez v1, :cond_1f

    sget-object v3, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    if-eq p1, v3, :cond_1f

    .line 153
    sget-object v2, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;)I

    move-result v2

    goto :goto_b

    .line 155
    :cond_1f
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_b
.end method

.method public getMaxTotalConnections()I
    .registers 3

    .prologue
    .line 185
    const-string v0, "http.connection-manager.max-total"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setDefaultMaxConnectionsPerHost(I)V
    .registers 3
    .parameter "maxHostConnections"

    .prologue
    .line 86
    sget-object v0, Lorg/apache/commons/httpclient/HostConfiguration;->ANY_HOST_CONFIGURATION:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;I)V

    .line 87
    return-void
.end method

.method public setMaxConnectionsPerHost(Lorg/apache/commons/httpclient/HostConfiguration;I)V
    .registers 7
    .parameter "hostConfiguration"
    .parameter "maxHostConnections"

    .prologue
    .line 103
    if-gtz p2, :cond_a

    .line 104
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "maxHostConnections must be greater than 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_a
    const-string v2, "http.connection-manager.max-per-host"

    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 110
    .local v0, currentValues:Ljava/util/Map;
    const/4 v1, 0x0

    .line 111
    .local v1, newValues:Ljava/util/Map;
    if-nez v0, :cond_28

    .line 112
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #newValues:Ljava/util/Map;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    .restart local v1       #newValues:Ljava/util/Map;
    :goto_1a
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "http.connection-manager.max-per-host"

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-void

    .line 114
    :cond_28
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #newValues:Ljava/util/Map;
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .restart local v1       #newValues:Ljava/util/Map;
    goto :goto_1a
.end method

.method public setMaxTotalConnections(I)V
    .registers 3
    .parameter "maxTotalConnections"

    .prologue
    .line 172
    const-string v0, "http.connection-manager.max-total"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setIntParameter(Ljava/lang/String;I)V

    .line 175
    return-void
.end method
.class public Lorg/apache/commons/httpclient/params/DefaultHttpParams;
.super Ljava/lang/Object;
.source "DefaultHttpParams.java"

# interfaces
.implements Lorg/apache/commons/httpclient/params/HttpParams;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

.field private static httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;


# instance fields
.field private defaults:Lorg/apache/commons/httpclient/params/HttpParams;

.field private parameters:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const-string v0, "org.apache.commons.httpclient.params.DefaultHttpParams"

    invoke-static {v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    .line 57
    new-instance v0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    return-void

    .line 54
    :cond_1a
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->class$org$apache$commons$httpclient$params$DefaultHttpParams:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 113
    invoke-static {}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .registers 3
    .parameter "defaults"

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 88
    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    .line 101
    iput-object p1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 102
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/params/HttpParamsFactory;->getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public static setHttpParamsFactory(Lorg/apache/commons/httpclient/params/HttpParamsFactory;)V
    .registers 3
    .parameter "httpParamsFactory"

    .prologue
    .line 78
    if-nez p0, :cond_a

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "httpParamsFactory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_a
    sput-object p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->httpParamsFactory:Lorg/apache/commons/httpclient/params/HttpParamsFactory;

    .line 82
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    .line 236
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;

    .line 248
    .local v0, clone:Lorg/apache/commons/httpclient/params/DefaultHttpParams;
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v1, :cond_14

    .line 249
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    .line 251
    :cond_14
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 252
    return-object v0
.end method

.method public getBooleanParameter(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, param:Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 208
    .end local v0           #param:Ljava/lang/Object;
    .end local p2
    :goto_6
    return p2

    .restart local v0       #param:Ljava/lang/Object;
    .restart local p2
    :cond_7
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_6
.end method

.method public declared-synchronized getDefaults()Lorg/apache/commons/httpclient/params/HttpParams;
    .registers 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDoubleParameter(Ljava/lang/String;D)D
    .registers 5
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, param:Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 196
    .end local v0           #param:Ljava/lang/Object;
    .end local p2
    :goto_6
    return-wide p2

    .restart local v0       #param:Ljava/lang/Object;
    .restart local p2
    :cond_7
    check-cast v0, Ljava/lang/Double;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_6
.end method

.method public getIntParameter(Ljava/lang/String;I)I
    .registers 4
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    .local v0, param:Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 184
    .end local v0           #param:Ljava/lang/Object;
    .end local p2
    :goto_6
    return p2

    .restart local v0       #param:Ljava/lang/Object;
    .restart local p2
    :cond_7
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_6
.end method

.method public getLongParameter(Ljava/lang/String;J)J
    .registers 5
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, param:Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 172
    .end local v0           #param:Ljava/lang/Object;
    .end local p2
    :goto_6
    return-wide p2

    .restart local v0       #param:Ljava/lang/Object;
    .restart local p2
    :cond_7
    check-cast v0, Ljava/lang/Long;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_6
.end method

.method public declared-synchronized getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "name"

    .prologue
    .line 126
    monitor-enter p0

    const/4 v0, 0x0

    .line 127
    .local v0, param:Ljava/lang/Object;
    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v1, :cond_c

    .line 128
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1d

    move-result-object v0

    .line 130
    .end local v0           #param:Ljava/lang/Object;
    :cond_c
    if-eqz v0, :cond_10

    .line 140
    :goto_e
    monitor-exit p0

    return-object v0

    .line 135
    :cond_10
    :try_start_10
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    if-eqz v1, :cond_1b

    .line 137
    iget-object v1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;

    invoke-interface {v1, p1}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    move-result-object v0

    goto :goto_e

    .line 140
    :cond_1b
    const/4 v0, 0x0

    goto :goto_e

    .line 126
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isParameterFalse(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isParameterSet(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isParameterSetLocally(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isParameterTrue(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBooleanParameter(Ljava/lang/String;Z)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 212
    if-eqz p2, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    return-void

    .line 212
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public declared-synchronized setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .registers 3
    .parameter "params"

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->defaults:Lorg/apache/commons/httpclient/params/HttpParams;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDoubleParameter(Ljava/lang/String;D)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 200
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public setIntParameter(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 188
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public setLongParameter(Ljava/lang/String;J)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 176
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public declared-synchronized setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    .line 149
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 151
    sget-object v0, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Set parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    .line 153
    :cond_3b
    monitor-exit p0

    return-void

    .line 146
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParameters([Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "names"
    .parameter "value"

    .prologue
    .line 162
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 163
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_f

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    :cond_d
    monitor-exit p0

    return-void

    .line 162
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

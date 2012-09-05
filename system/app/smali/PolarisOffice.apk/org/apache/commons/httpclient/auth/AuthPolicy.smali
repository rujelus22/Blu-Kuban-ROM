.class public abstract Lorg/apache/commons/httpclient/auth/AuthPolicy;
.super Ljava/lang/Object;
.source "AuthPolicy.java"


# static fields
.field public static final AUTH_SCHEME_PRIORITY:Ljava/lang/String; = "http.auth.scheme-priority"

.field public static final BASIC:Ljava/lang/String; = "Basic"

.field public static final DIGEST:Ljava/lang/String; = "Digest"

.field protected static final LOG:Lorg/apache/commons/logging/Log; = null

.field public static final NTLM:Ljava/lang/String; = "NTLM"

.field private static final SCHEMES:Ljava/util/HashMap;

.field private static final SCHEME_LIST:Ljava/util/ArrayList;

.field static class$org$apache$commons$httpclient$auth$AuthPolicy:Ljava/lang/Class;

.field static class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;

.field static class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

.field static class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEMES:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEME_LIST:Ljava/util/ArrayList;

    .line 100
    const-string v1, "NTLM"

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    if-nez v0, :cond_54

    const-string v0, "org.apache.commons.httpclient.auth.NTLMScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    :goto_1c
    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 101
    const-string v1, "Digest"

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    if-nez v0, :cond_57

    const-string v0, "org.apache.commons.httpclient.auth.DigestScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    :goto_2d
    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 102
    const-string v1, "Basic"

    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;

    if-nez v0, :cond_5a

    const-string v0, "org.apache.commons.httpclient.auth.BasicScheme"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;

    :goto_3e
    invoke-static {v1, v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V

    .line 106
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$AuthPolicy:Ljava/lang/Class;

    if-nez v0, :cond_5d

    const-string v0, "org.apache.commons.httpclient.auth.AuthPolicy"

    invoke-static {v0}, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$AuthPolicy:Ljava/lang/Class;

    :goto_4d
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    .line 100
    :cond_54
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$NTLMScheme:Ljava/lang/Class;

    goto :goto_1c

    .line 101
    :cond_57
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$DigestScheme:Ljava/lang/Class;

    goto :goto_2d

    .line 102
    :cond_5a
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$BasicScheme:Ljava/lang/Class;

    goto :goto_3e

    .line 106
    :cond_5d
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->class$org$apache$commons$httpclient$auth$AuthPolicy:Ljava/lang/Class;

    goto :goto_4d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 100
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

.method public static declared-synchronized getAuthScheme(Ljava/lang/String;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    .registers 7
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 162
    const-class v3, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v3

    if-nez p0, :cond_10

    .line 163
    :try_start_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Id may not be null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 162
    :catchall_d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 165
    :cond_10
    :try_start_10
    sget-object v2, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEMES:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_d

    .line 166
    .local v0, clazz:Ljava/lang/Class;
    if-eqz v0, :cond_66

    .line 168
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_26

    monitor-exit v3

    return-object v2

    .line 169
    :catch_26
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/Exception;
    :try_start_27
    sget-object v2, Lorg/apache/commons/httpclient/auth/AuthPolicy;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error initializing authentication scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 171
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " authentication scheme implemented by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " could not be initialized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    .end local v1           #e:Ljava/lang/Exception;
    :cond_66
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unsupported authentication scheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7f
    .catchall {:try_start_27 .. :try_end_7f} :catchall_d
.end method

.method public static declared-synchronized getDefaultAuthPrefs()Ljava/util/List;
    .registers 2

    .prologue
    .line 187
    const-class v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEME_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerAuthScheme(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .parameter "id"
    .parameter "clazz"

    .prologue
    .line 126
    const-class v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 127
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Id may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 126
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    :cond_10
    if-nez p1, :cond_1a

    .line 130
    :try_start_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authentication scheme class may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1a
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEMES:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEME_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_d

    .line 134
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized unregisterAuthScheme(Ljava/lang/String;)V
    .registers 4
    .parameter "id"

    .prologue
    .line 143
    const-class v1, Lorg/apache/commons/httpclient/auth/AuthPolicy;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 144
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Id may not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 143
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 146
    :cond_10
    :try_start_10
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEMES:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/apache/commons/httpclient/auth/AuthPolicy;->SCHEME_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_d

    .line 148
    monitor-exit v1

    return-void
.end method

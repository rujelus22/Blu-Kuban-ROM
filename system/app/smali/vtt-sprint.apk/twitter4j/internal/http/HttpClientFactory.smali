.class public final Ltwitter4j/internal/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static final HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

.field static class$twitter4j$internal$http$HttpClientConfiguration:Ljava/lang/Class;

.field static class$twitter4j$internal$http$HttpClientFactory:Ljava/lang/Class;

.field private static final logger:Ltwitter4j/internal/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 30
    sget-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientFactory:Ljava/lang/Class;

    if-nez v3, :cond_5c

    const-string v3, "twitter4j.internal.http.HttpClientFactory"

    invoke-static {v3}, Ltwitter4j/internal/http/HttpClientFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientFactory:Ljava/lang/Class;

    :goto_c
    invoke-static {v3}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v3

    sput-object v3, Ltwitter4j/internal/http/HttpClientFactory;->logger:Ltwitter4j/internal/logging/Logger;

    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, clazz:Ljava/lang/Class;
    :try_start_13
    const-string v3, "twitter4j.internal.http.alternative.HttpClientImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_18} :catch_70

    move-result-object v0

    .line 38
    :goto_19
    if-nez v0, :cond_21

    .line 40
    :try_start_1b
    const-string v3, "twitter4j.internal.http.HttpClientImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_20} :catch_5f

    move-result-object v0

    .line 45
    :cond_21
    sget-object v3, Ltwitter4j/internal/http/HttpClientFactory;->logger:Ltwitter4j/internal/logging/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Will use "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " as HttpClient implementation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    :try_start_44
    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientConfiguration:Ljava/lang/Class;

    if-nez v3, :cond_66

    const-string v3, "twitter4j.internal.http.HttpClientConfiguration"

    invoke-static {v3}, Ltwitter4j/internal/http/HttpClientFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientConfiguration:Ljava/lang/Class;

    :goto_53
    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Ltwitter4j/internal/http/HttpClientFactory;->HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_5b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_44 .. :try_end_5b} :catch_69

    .line 51
    return-void

    .line 30
    .end local v0           #clazz:Ljava/lang/Class;
    :cond_5c
    sget-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientFactory:Ljava/lang/Class;

    goto :goto_c

    .line 41
    .restart local v0       #clazz:Ljava/lang/Class;
    :catch_5f
    move-exception v1

    .line 42
    .local v1, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 47
    .end local v1           #cnfe:Ljava/lang/ClassNotFoundException;
    :cond_66
    :try_start_66
    sget-object v3, Ltwitter4j/internal/http/HttpClientFactory;->class$twitter4j$internal$http$HttpClientConfiguration:Ljava/lang/Class;
    :try_end_68
    .catch Ljava/lang/NoSuchMethodException; {:try_start_66 .. :try_end_68} :catch_69

    goto :goto_53

    .line 48
    :catch_69
    move-exception v2

    .line 49
    .local v2, nsme:Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 36
    .end local v2           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_70
    move-exception v3

    goto :goto_19
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30
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

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static getInstance(Ltwitter4j/internal/http/HttpClientConfiguration;)Ltwitter4j/internal/http/HttpClient;
    .registers 5
    .parameter "conf"

    .prologue
    .line 55
    :try_start_0
    sget-object v1, Ltwitter4j/internal/http/HttpClientFactory;->HTTP_CLIENT_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/internal/http/HttpClient;
    :try_end_e
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_e} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_e} :catch_1d

    return-object v1

    .line 56
    :catch_f
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 58
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_16
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 60
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1d
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

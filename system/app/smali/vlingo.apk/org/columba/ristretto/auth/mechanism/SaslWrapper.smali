.class public Lorg/columba/ristretto/auth/mechanism/SaslWrapper;
.super Ljava/lang/Object;
.source "SaslWrapper.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final JAVA_14:Z = false

.field private static final PACKAGE_14:Ljava/lang/String; = "com.sun.security.sasl.preview."

.field private static final PACKAGE_15:Ljava/lang/String; = "javax.security.sasl."

.field static array$B:Ljava/lang/Class;

.field static array$Ljava$lang$String:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$java$util$Map:Ljava/lang/Class;

.field static class$javax$security$auth$callback$CallbackHandler:Ljava/lang/Class;


# instance fields
.field packageString:Ljava/lang/String;

.field sasl:Ljava/lang/Class;

.field saslClient:Ljava/lang/Class;

.field saslClientInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 55
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1\\.4.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->JAVA_14:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-boolean v0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->JAVA_14:Z

    if-eqz v0, :cond_42

    .line 69
    const-string v0, "com.sun.security.sasl.preview."

    iput-object v0, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->packageString:Ljava/lang/String;

    .line 74
    :goto_b
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->packageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "SaslClient"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->saslClient:Ljava/lang/Class;

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->packageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Sasl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->sasl:Ljava/lang/Class;

    .line 77
    return-void

    .line 71
    :cond_42
    const-string v0, "javax.security.sasl."

    iput-object v0, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->packageString:Ljava/lang/String;

    goto :goto_b
.end method

.method public static available()Z
    .registers 2

    .prologue
    .line 80
    sget-boolean v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->JAVA_14:Z

    if-eqz v1, :cond_9

    .line 82
    :try_start_4
    const-string v1, "com.sun.security.sasl.preview.Sasl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_b

    .line 88
    :cond_9
    const/4 v1, 0x1

    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_a
    return v1

    .line 83
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_b
    move-exception v0

    .line 84
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 92
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


# virtual methods
.method public createClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)V
    .registers 13
    .parameter "type"
    .parameter "user"
    .parameter "service"
    .parameter "hostname"
    .parameter "map"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v2, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->sasl:Ljava/lang/Class;

    const-string v3, "createSaslClient"

    const/4 v1, 0x6

    new-array v4, v1, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->array$Ljava$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_82

    const-string v1, "[Ljava.lang.String;"

    invoke-static {v1}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->array$Ljava$lang$String:Ljava/lang/Class;

    :goto_14
    aput-object v1, v4, v5

    const/4 v5, 0x1

    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_85

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    :goto_23
    aput-object v1, v4, v5

    const/4 v5, 0x2

    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_88

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    :goto_32
    aput-object v1, v4, v5

    const/4 v5, 0x3

    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_8b

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    :goto_41
    aput-object v1, v4, v5

    const/4 v5, 0x4

    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$util$Map:Ljava/lang/Class;

    if-nez v1, :cond_8e

    const-string v1, "java.util.Map"

    invoke-static {v1}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$util$Map:Ljava/lang/Class;

    :goto_50
    aput-object v1, v4, v5

    const/4 v5, 0x5

    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$javax$security$auth$callback$CallbackHandler:Ljava/lang/Class;

    if-nez v1, :cond_91

    const-string v1, "javax.security.auth.callback.CallbackHandler"

    invoke-static {v1}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$javax$security$auth$callback$CallbackHandler:Ljava/lang/Class;

    :goto_5f
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    .local v0, createSaslClient:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->saslClientInstance:Ljava/lang/Object;

    .line 97
    return-void

    .line 92
    .end local v0           #createSaslClient:Ljava/lang/reflect/Method;
    :cond_82
    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->array$Ljava$lang$String:Ljava/lang/Class;

    goto :goto_14

    :cond_85
    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_23

    :cond_88
    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_32

    :cond_8b
    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_41

    :cond_8e
    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$util$Map:Ljava/lang/Class;

    goto :goto_50

    :cond_91
    sget-object v1, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$javax$security$auth$callback$CallbackHandler:Ljava/lang/Class;

    goto :goto_5f
.end method

.method public evaluateChallenge([B)[B
    .registers 10
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    iget-object v3, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->saslClient:Ljava/lang/Class;

    const-string v4, "evaluateChallenge"

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v2, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->array$B:Ljava/lang/Class;

    if-nez v2, :cond_29

    const-string v2, "[B"

    invoke-static {v2}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->array$B:Ljava/lang/Class;

    :goto_14
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 102
    .local v0, evaluateChallenge:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->saslClientInstance:Ljava/lang/Object;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    .local v1, result:Ljava/lang/Object;
    check-cast v1, [B

    .end local v1           #result:Ljava/lang/Object;
    check-cast v1, [B

    return-object v1

    .line 100
    .end local v0           #evaluateChallenge:Ljava/lang/reflect/Method;
    :cond_29
    sget-object v2, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->array$B:Ljava/lang/Class;

    goto :goto_14
.end method

.method public handle(Ljavax/security/auth/callback/Callback;)Z
    .registers 15
    .parameter "callback"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 117
    :try_start_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->packageString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "RealmCallback"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 119
    .local v3, realmCallback:Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 120
    const-string v10, "setText"

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v9, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    if-nez v9, :cond_57

    const-string v9, "java.lang.String"

    invoke-static {v9}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    :goto_37
    aput-object v9, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 121
    .local v6, setText:Ljava/lang/reflect/Method;
    const-string v9, "getDefaultText"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 123
    .local v2, getDefaultText:Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v2           #getDefaultText:Ljava/lang/reflect/Method;
    .end local v3           #realmCallback:Ljava/lang/Class;
    .end local v6           #setText:Ljava/lang/reflect/Method;
    :goto_56
    return v7

    .line 120
    .restart local v3       #realmCallback:Ljava/lang/Class;
    :cond_57
    sget-object v9, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_37

    .line 127
    :cond_5a
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->packageString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "RealmChoiceCallback"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 129
    .local v4, realmChoiceCallback:Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 130
    const-string v9, "setSelectedIndex"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 131
    .local v5, setSelectedIndex:Ljava/lang/reflect/Method;
    const-string v9, "getDefaultChoice"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 133
    .local v1, getDefaultChoice:Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a4} :catch_a5

    goto :goto_56

    .line 136
    .end local v1           #getDefaultChoice:Ljava/lang/reflect/Method;
    .end local v3           #realmCallback:Ljava/lang/Class;
    .end local v4           #realmChoiceCallback:Ljava/lang/Class;
    .end local v5           #setSelectedIndex:Ljava/lang/reflect/Method;
    :catch_a5
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v7, v8

    .line 137
    goto :goto_56

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #realmCallback:Ljava/lang/Class;
    .restart local v4       #realmChoiceCallback:Ljava/lang/Class;
    :cond_a8
    move v7, v8

    .line 140
    goto :goto_56
.end method

.method public isComplete()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 108
    iget-object v2, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->saslClient:Ljava/lang/Class;

    const-string v3, "isComplete"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 110
    .local v0, evaluateChallenge:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->saslClientInstance:Ljava/lang/Object;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 112
    .local v1, result:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

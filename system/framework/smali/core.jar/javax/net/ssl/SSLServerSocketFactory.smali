.class public abstract Ljavax/net/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static defaultName:Ljava/lang/String;

.field private static defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    .line 83
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .registers 7

    .prologue
    .line 43
    const-class v5, Ljavax/net/ssl/SSLServerSocketFactory;

    monitor-enter v5

    :try_start_3
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-eqz v4, :cond_b

    .line 44
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5b

    .line 76
    .local v0, cl:Ljava/lang/ClassLoader;
    :goto_9
    monitor-exit v5

    return-object v4

    .line 46
    .end local v0           #cl:Ljava/lang/ClassLoader;
    :cond_b
    :try_start_b
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    if-nez v4, :cond_38

    .line 47
    const-string v4, "ssl.ServerSocketFactory.provider"

    invoke-static {v4}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    .line 48
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    if-eqz v4, :cond_38

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 50
    .restart local v0       #cl:Ljava/lang/ClassLoader;
    if-nez v0, :cond_29

    .line 51
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_5b

    move-result-object v0

    .line 54
    :cond_29
    :try_start_29
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v4, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 55
    .local v3, ssfc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ServerSocketFactory;

    sput-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_5b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_5e

    .line 60
    .end local v3           #ssfc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_38
    :goto_38
    :try_start_38
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_5b

    if-nez v4, :cond_48

    .line 63
    :try_start_3c
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_5b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3c .. :try_end_3f} :catch_58

    move-result-object v1

    .line 67
    .local v1, context:Ljavax/net/ssl/SSLContext;
    :goto_40
    if-eqz v1, :cond_48

    .line 68
    :try_start_42
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v4

    sput-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 71
    .end local v1           #context:Ljavax/net/ssl/SSLContext;
    :cond_48
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-nez v4, :cond_55

    .line 73
    new-instance v4, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    const-string v6, "No ServerSocketFactory installed"

    invoke-direct {v4, v6}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 76
    :cond_55
    sget-object v4, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_5b

    goto :goto_9

    .line 64
    :catch_58
    move-exception v2

    .line 65
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    .restart local v1       #context:Ljavax/net/ssl/SSLContext;
    goto :goto_40

    .line 43
    .end local v1           #context:Ljavax/net/ssl/SSLContext;
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catchall_5b
    move-exception v4

    monitor-exit v5

    throw v4

    .line 56
    :catch_5e
    move-exception v4

    goto :goto_38
.end method


# virtual methods
.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method

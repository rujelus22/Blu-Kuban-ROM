.class public Lcom/vlingo/client/android/core/http/custom/AndroidVConnectionFactory;
.super Lcom/vlingo/client/core/http/custom/VConnectionFactory;
.source "AndroidVConnectionFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/VConnectionFactory;-><init>()V

    return-void
.end method

.method public static createConnection(Lcom/vlingo/client/core/http/URL;)Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;
    .registers 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;

    invoke-direct {v0, p0}, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;-><init>(Lcom/vlingo/client/core/http/URL;)V

    .line 31
    .local v0, connection:Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;
    return-object v0
.end method

.method public static createConnection(Ljava/lang/String;)Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;
    .registers 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;

    invoke-direct {v0, p0}, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, connection:Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;
    return-object v0
.end method


# virtual methods
.method public newConnection(Lcom/vlingo/client/core/http/URL;)Lcom/vlingo/client/core/http/custom/VStreamConnection;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p1}, Lcom/vlingo/client/android/core/http/custom/AndroidVConnectionFactory;->createConnection(Lcom/vlingo/client/core/http/URL;)Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;

    move-result-object v0

    return-object v0
.end method

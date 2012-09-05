.class public Lcom/android/exchange/utility/HttpsURLConnectionManager;
.super Ljava/lang/Object;
.source "HttpsURLConnectionManager.java"


# static fields
.field private static _conn:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/utility/HttpsURLConnectionManager;->_conn:Ljavax/net/ssl/HttpsURLConnection;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/android/exchange/utility/HttpsURLConnectionManager;->_conn:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_c

    .line 25
    sget-object v0, Lcom/android/exchange/utility/HttpsURLConnectionManager;->_conn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/utility/HttpsURLConnectionManager;->_conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 33
    :cond_c
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sput-object v0, Lcom/android/exchange/utility/HttpsURLConnectionManager;->_conn:Ljavax/net/ssl/HttpsURLConnection;

    .line 35
    sget-object v0, Lcom/android/exchange/utility/HttpsURLConnectionManager;->_conn:Ljavax/net/ssl/HttpsURLConnection;

    return-object v0
.end method

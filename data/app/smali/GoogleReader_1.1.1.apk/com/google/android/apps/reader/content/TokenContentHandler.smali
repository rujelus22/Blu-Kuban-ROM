.class public Lcom/google/android/apps/reader/content/TokenContentHandler;
.super Ljava/net/ContentHandler;
.source "TokenContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/TokenContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Ljava/net/URLConnection;)Ljava/lang/String;
    .registers 3
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->toString(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

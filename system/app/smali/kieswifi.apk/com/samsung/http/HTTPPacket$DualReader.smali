.class Lcom/samsung/http/HTTPPacket$DualReader;
.super Ljava/io/DataInputStream;
.source "HTTPPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/http/HTTPPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/http/HTTPPacket;


# direct methods
.method public constructor <init>(Lcom/samsung/http/HTTPPacket;Ljava/io/InputStream;)V
    .registers 3
    .parameter
    .parameter "arg0"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/samsung/http/HTTPPacket$DualReader;->this$0:Lcom/samsung/http/HTTPPacket;

    .line 130
    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public readALine()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v2, sb:Ljava/lang/StringBuffer;
    :cond_5
    :goto_5
    iget-object v3, p0, Lcom/samsung/http/HTTPPacket$DualReader;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, d:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_13

    .line 152
    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, ret:Ljava/lang/String;
    return-object v1

    .line 143
    .end local v1           #ret:Ljava/lang/String;
    :cond_13
    int-to-char v3, v0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_5

    .line 145
    int-to-char v3, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_e

    .line 148
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5
.end method

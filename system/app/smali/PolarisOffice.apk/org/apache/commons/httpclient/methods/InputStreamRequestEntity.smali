.class public Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;
.super Ljava/lang/Object;
.source "InputStreamRequestEntity.java"

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# static fields
.field public static final CONTENT_LENGTH_AUTO:I = -0x2

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;


# instance fields
.field private buffer:[B

.field private content:Ljava/io/InputStream;

.field private contentLength:J

.field private contentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.commons.httpclient.methods.InputStreamRequestEntity"

    invoke-static {v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->class$org$apache$commons$httpclient$methods$InputStreamRequestEntity:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "content"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 5
    .parameter "content"
    .parameter "contentLength"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;)V
    .registers 7
    .parameter "content"
    .parameter "contentLength"
    .parameter "contentType"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    .line 107
    if-nez p1, :cond_10

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_10
    iput-object p1, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 111
    iput-wide p2, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    .line 112
    iput-object p4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentType:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "content"
    .parameter "contentType"

    .prologue
    .line 83
    const-wide/16 v0, -0x2

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 84
    return-void
.end method

.method private bufferContent()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 127
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v4, :cond_6

    .line 149
    :cond_5
    :goto_5
    return-void

    .line 131
    :cond_6
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    if-eqz v4, :cond_5

    .line 133
    :try_start_a
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v3, tmp:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 135
    .local v0, data:[B
    const/4 v2, 0x0

    .line 136
    .local v2, l:I
    :goto_14
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_34

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_20} :catch_21

    goto :goto_14

    .line 142
    .end local v0           #data:[B
    .end local v2           #l:I
    .end local v3           #tmp:Ljava/io/ByteArrayOutputStream;
    :catch_21
    move-exception v1

    .line 143
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 144
    iput-object v6, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    .line 145
    iput-object v6, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 146
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    goto :goto_5

    .line 139
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #data:[B
    .restart local v2       #l:I
    .restart local v3       #tmp:Ljava/io/ByteArrayOutputStream;
    :cond_34
    :try_start_34
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    .line 140
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 141
    iget-object v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    array-length v4, v4

    int-to-long v4, v4

    iput-wide v4, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_43} :catch_21

    goto :goto_5
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 55
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


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 5

    .prologue
    .line 186
    iget-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-nez v0, :cond_f

    .line 187
    invoke-direct {p0}, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->bufferContent()V

    .line 189
    :cond_f
    iget-wide v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .registers 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    if-eqz v3, :cond_18

    .line 167
    const/16 v3, 0x1000

    new-array v1, v3, [B

    .line 168
    .local v1, tmp:[B
    const/4 v2, 0x0

    .line 169
    .local v2, total:I
    const/4 v0, 0x0

    .line 170
    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_21

    .line 171
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 172
    add-int/2addr v2, v0

    goto :goto_a

    .line 174
    .end local v0           #i:I
    .end local v1           #tmp:[B
    .end local v2           #total:I
    :cond_18
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    if-eqz v3, :cond_22

    .line 175
    iget-object v3, p0, Lorg/apache/commons/httpclient/methods/InputStreamRequestEntity;->buffer:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 179
    :cond_21
    return-void

    .line 177
    :cond_22
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Content must be set before entity is written"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.class public Lgnu/inet/finger/FingerConnection;
.super Ljava/lang/Object;
.source "FingerConnection.java"


# instance fields
.field protected socket:Ljava/net/Socket;

.field protected verbose:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lgnu/inet/finger/FingerConnection;->socket:Ljava/net/Socket;

    .line 95
    return-void
.end method


# virtual methods
.method public finger(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/inet/finger/FingerConnection;->finger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lgnu/inet/finger/FingerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 148
    iget-boolean v0, p0, Lgnu/inet/finger/FingerConnection;->verbose:Z

    if-eqz v0, :cond_22

    .line 150
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    .line 151
    const/16 v0, 0x57

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    .line 152
    if-nez p1, :cond_1d

    if-eqz p2, :cond_22

    .line 154
    :cond_1d
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    .line 157
    :cond_22
    if-eqz p1, :cond_2d

    .line 159
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 161
    :cond_2d
    if-eqz p2, :cond_3d

    .line 163
    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    .line 164
    const-string v0, "US-ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 166
    :cond_3d
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    .line 167
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/FilterOutputStream;->write(I)V

    .line 168
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 171
    iget-object v0, p0, Lgnu/inet/finger/FingerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 172
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    const/16 v0, 0x1000

    new-array v3, v0, [B

    .line 174
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_5d
    const/4 v4, -0x1

    if-eq v0, v4, :cond_69

    .line 176
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 174
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_5d

    .line 178
    :cond_69
    const-string v0, "US-ASCII"

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

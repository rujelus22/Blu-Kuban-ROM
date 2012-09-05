.class public Ljcifs/smb/SmbRandomAccessFile;
.super Ljava/lang/Object;
.source "SmbRandomAccessFile.java"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/DataInput;


# static fields
.field private static final WRITE_OPTIONS:I = 0x842


# instance fields
.field private access:I

.field private ch:I

.field private file:Ljcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private options:I

.field private readSize:I

.field private tmp:[B

.field private writeSize:I

.field private write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "url"
    .parameter "mode"
    .parameter "shareAccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljcifs/smb/SmbFile;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbRandomAccessFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    .registers 7
    .parameter "file"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    .line 46
    iput-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    .line 47
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 48
    const/16 v0, 0x11

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    .line 57
    :goto_1f
    iget v0, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    iget v1, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    const/16 v2, 0x80

    iget v3, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 58
    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v0, v0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->readSize:I

    .line 59
    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v0, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 v0, v0, -0x46

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->writeSize:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 61
    return-void

    .line 49
    :cond_47
    const-string v0, "rw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 50
    const/16 v0, 0x17

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    .line 51
    new-instance v0, Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    .line 52
    const/16 v0, 0x842

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    goto :goto_1f

    .line 55
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    .line 164
    return-void
.end method

.method public getFilePointer()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 146
    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    return-wide v0
.end method

.method public length()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 64
    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_c

    .line 67
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_b
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 15
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    if-gtz p3, :cond_4

    .line 96
    :goto_3
    return v0

    .line 76
    :cond_4
    iget-wide v8, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 79
    .local v8, start:J
    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v1

    if-nez v1, :cond_19

    .line 80
    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v2, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/16 v3, 0x80

    iget v5, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v1, v2, v0, v3, v5}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 84
    :cond_19
    new-instance v7, Ljcifs/smb/SmbComReadAndXResponse;

    invoke-direct {v7, p1, p2}, Ljcifs/smb/SmbComReadAndXResponse;-><init>([BI)V

    .line 86
    .local v7, response:Ljcifs/smb/SmbComReadAndXResponse;
    :cond_1e
    iget v0, p0, Ljcifs/smb/SmbRandomAccessFile;->readSize:I

    if-le p3, v0, :cond_47

    iget v4, p0, Ljcifs/smb/SmbRandomAccessFile;->readSize:I

    .line 87
    .local v4, r:I
    :goto_24
    iget-object v10, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    new-instance v0, Ljcifs/smb/SmbComReadAndX;

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljcifs/smb/SmbComReadAndX;-><init>(IJILjcifs/smb/ServerMessageBlock;)V

    invoke-virtual {v10, v0, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 88
    iget v6, v7, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .local v6, n:I
    if-gtz v6, :cond_4c

    .line 89
    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-long/2addr v0, v8

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_49

    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-long/2addr v0, v8

    :goto_45
    long-to-int v0, v0

    goto :goto_3

    .end local v4           #r:I
    .end local v6           #n:I
    :cond_47
    move v4, p3

    .line 86
    goto :goto_24

    .line 89
    .restart local v4       #r:I
    .restart local v6       #n:I
    :cond_49
    const-wide/16 v0, -0x1

    goto :goto_45

    .line 91
    :cond_4c
    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 92
    sub-int/2addr p3, v6

    .line 93
    iget v0, v7, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    add-int/2addr v0, v6

    iput v0, v7, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    .line 94
    if-lez p3, :cond_5c

    if-eq v6, v4, :cond_1e

    .line 96
    :cond_5c
    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-long/2addr v0, v8

    long-to-int v0, v0

    goto :goto_3
.end method

.method public final readBoolean()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-virtual {p0, v2, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_12

    .line 168
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_12
    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method public final readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_12

    .line 174
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_12
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public final readChar()C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_12

    .line 198
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_12
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_13

    .line 222
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_13
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_doublebe([BI)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_12

    .line 216
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_12
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_floatbe([BI)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/SmbRandomAccessFile;->readFully([BII)V

    .line 100
    return-void
.end method

.method public final readFully([BII)V
    .registers 10
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 105
    .local v1, n:I
    :cond_1
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    .line 106
    .local v0, count:I
    if-gez v0, :cond_13

    new-instance v2, Ljcifs/smb/SmbException;

    const-string v3, "EOF"

    invoke-direct {v2, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_13
    add-int/2addr v1, v0

    .line 108
    iget-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 109
    if-lt v1, p3, :cond_1

    .line 110
    return-void
.end method

.method public final readInt()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_12

    .line 204
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_12
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    move-result v0

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .local v4, input:Ljava/lang/StringBuffer;
    const/4 v0, -0x1

    .line 229
    .local v0, c:I
    const/4 v3, 0x0

    .line 231
    .local v3, eol:Z
    :cond_7
    :goto_7
    if-nez v3, :cond_25

    .line 232
    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    .line 245
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 235
    :sswitch_15
    const/4 v3, 0x1

    .line 236
    goto :goto_7

    .line 238
    :sswitch_17
    const/4 v3, 0x1

    .line 239
    iget-wide v1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 240
    .local v1, cur:J
    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->read()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_7

    .line 241
    iput-wide v1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    goto :goto_7

    .line 250
    .end local v1           #cur:J
    :cond_25
    const/4 v5, -0x1

    if-ne v0, v5, :cond_30

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_30

    .line 251
    const/4 v5, 0x0

    .line 254
    :goto_2f
    return-object v5

    :cond_30
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2f

    .line 232
    nop

    :sswitch_data_36
    .sparse-switch
        -0x1 -> :sswitch_15
        0xa -> :sswitch_15
        0xd -> :sswitch_17
    .end sparse-switch
.end method

.method public final readLong()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_13

    .line 210
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_13
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_12

    .line 186
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_12
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->readUnsignedShort()I

    move-result v2

    .line 259
    .local v2, size:I
    new-array v0, v2, [B

    .line 260
    .local v0, b:[B
    invoke-virtual {p0, v0, v3, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 262
    const/4 v3, 0x0

    :try_start_b
    invoke-static {v0, v3, v2}, Ljcifs/util/Encdec;->dec_utf8([BII)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object v3

    return-object v3

    .line 263
    :catch_10
    move-exception v1

    .line 264
    .local v1, ioe:Ljava/io/IOException;
    new-instance v3, Ljcifs/smb/SmbException;

    const-string v4, ""

    invoke-direct {v3, v4, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final readUnsignedByte()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_12

    .line 180
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_12
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final readUnsignedShort()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    if-gez v0, :cond_12

    .line 192
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_12
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v2}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public seek(J)V
    .registers 3
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 149
    iput-wide p1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 150
    return-void
.end method

.method public setLength(J)V
    .registers 12
    .parameter "newLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 157
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v1, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/16 v2, 0x80

    iget v4, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v0, v1, v3, v2, v4}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 159
    :cond_14
    new-instance v7, Ljcifs/smb/SmbComWriteResponse;

    invoke-direct {v7}, Ljcifs/smb/SmbComWriteResponse;-><init>()V

    .line 160
    .local v7, rsp:Ljcifs/smb/SmbComWriteResponse;
    iget-object v8, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    new-instance v0, Ljcifs/smb/SmbComWrite;

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p1

    long-to-int v2, v4

    iget-object v4, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Ljcifs/smb/SmbComWrite;-><init>(III[BII)V

    invoke-virtual {v8, v0, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 161
    return-void
.end method

.method public skipBytes(I)I
    .registers 6
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 112
    if-lez p1, :cond_9

    .line 113
    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 116
    .end local p1
    :goto_8
    return p1

    .restart local p1
    :cond_9
    const/4 p1, 0x0

    goto :goto_8
.end method

.method public write(I)V
    .registers 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 121
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 122
    return-void
.end method

.method public write([B)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 125
    return-void
.end method

.method public write([BII)V
    .registers 14
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 127
    if-gtz p3, :cond_3

    .line 144
    :goto_2
    return-void

    .line 132
    :cond_3
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_17

    .line 133
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v1, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/4 v2, 0x0

    const/16 v3, 0x80

    iget v4, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v0, v1, v2, v3, v4}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 138
    :cond_17
    iget v0, p0, Ljcifs/smb/SmbRandomAccessFile;->writeSize:I

    if-le p3, v0, :cond_4e

    iget v7, p0, Ljcifs/smb/SmbRandomAccessFile;->writeSize:I

    .line 139
    .local v7, w:I
    :goto_1d
    iget-object v9, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    new-instance v0, Ljcifs/smb/SmbComWriteAndX;

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-int v4, p3, v7

    const/4 v8, 0x0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, Ljcifs/smb/SmbComWriteAndX;-><init>(IJI[BIILjcifs/smb/ServerMessageBlock;)V

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-virtual {v9, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 140
    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 141
    int-to-long v0, p3

    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 142
    int-to-long v0, p2

    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v2, v2, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v0, v2

    long-to-int p2, v0

    .line 143
    if-gtz p3, :cond_17

    goto :goto_2

    .end local v7           #w:I
    :cond_4e
    move v7, p3

    .line 138
    goto :goto_1d
.end method

.method public final writeBoolean(Z)V
    .registers 6
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    iget-object v3, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    if-eqz p1, :cond_10

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    aput-byte v0, v3, v2

    .line 269
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 270
    return-void

    :cond_10
    move v0, v2

    .line 268
    goto :goto_7
.end method

.method public final writeByte(I)V
    .registers 5
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 273
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 274
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 301
    .local v0, b:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 302
    return-void
.end method

.method public final writeChar(I)V
    .registers 5
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 280
    int-to-short v0, p1

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v1, v2}, Ljcifs/util/Encdec;->enc_uint16be(S[BI)I

    .line 281
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 282
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .registers 11
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 305
    .local v3, clen:I
    mul-int/lit8 v1, v3, 0x2

    .line 306
    .local v1, blen:I
    new-array v0, v1, [B

    .line 307
    .local v0, b:[B
    new-array v2, v3, [C

    .line 308
    .local v2, c:[C
    invoke-virtual {p1, v8, v3, v2, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 309
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_11
    if-ge v4, v3, :cond_28

    .line 310
    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aget-char v7, v2, v4

    ushr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 311
    add-int/lit8 v6, v5, 0x1

    .end local v5           #j:I
    .restart local v6       #j:I
    aget-char v7, v2, v4

    ushr-int/lit8 v7, v7, 0x0

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 313
    :cond_28
    invoke-virtual {p0, v0, v8, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 314
    return-void
.end method

.method public final writeDouble(D)V
    .registers 6
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, p2, v0, v2}, Ljcifs/util/Encdec;->enc_doublebe(D[BI)I

    .line 297
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 298
    return-void
.end method

.method public final writeFloat(F)V
    .registers 5
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, v0, v2}, Ljcifs/util/Encdec;->enc_floatbe(F[BI)I

    .line 293
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 294
    return-void
.end method

.method public final writeInt(I)V
    .registers 5
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, v0, v2}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 285
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 286
    return-void
.end method

.method public final writeLong(J)V
    .registers 6
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {p1, p2, v0, v2}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    .line 289
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 290
    return-void
.end method

.method public final writeShort(I)V
    .registers 5
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 276
    int-to-short v0, p1

    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    invoke-static {v0, v1, v2}, Ljcifs/util/Encdec;->enc_uint16be(S[BI)I

    .line 277
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 278
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .registers 10
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 317
    .local v4, len:I
    const/4 v5, 0x0

    .line 320
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v4, :cond_1e

    .line 321
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 322
    .local v0, ch:I
    const/16 v6, 0x7f

    if-le v0, v6, :cond_1c

    const/16 v6, 0x7ff

    if-le v0, v6, :cond_1a

    const/4 v6, 0x3

    :goto_16
    add-int/2addr v5, v6

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 322
    :cond_1a
    const/4 v6, 0x2

    goto :goto_16

    :cond_1c
    const/4 v6, 0x1

    goto :goto_16

    .line 324
    .end local v0           #ch:I
    :cond_1e
    new-array v1, v5, [B

    .line 325
    .local v1, dst:[B
    invoke-virtual {p0, v5}, Ljcifs/smb/SmbRandomAccessFile;->writeShort(I)V

    .line 327
    const/4 v6, 0x0

    :try_start_24
    invoke-static {p1, v1, v6, v5}, Ljcifs/util/Encdec;->enc_utf8(Ljava/lang/String;[BII)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2b

    .line 331
    invoke-virtual {p0, v1, v7, v5}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 332
    return-void

    .line 328
    :catch_2b
    move-exception v3

    .line 329
    .local v3, ioe:Ljava/io/IOException;
    new-instance v6, Ljcifs/smb/SmbException;

    const-string v7, ""

    invoke-direct {v6, v7, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

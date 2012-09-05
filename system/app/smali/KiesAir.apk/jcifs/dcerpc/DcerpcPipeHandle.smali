.class public Ljcifs/dcerpc/DcerpcPipeHandle;
.super Ljcifs/dcerpc/DcerpcHandle;
.source "DcerpcPipeHandle.java"


# instance fields
.field in:Ljcifs/smb/SmbFileInputStream;

.field isStart:Z

.field out:Ljcifs/smb/SmbFileOutputStream;

.field pipe:Ljcifs/smb/SmbNamedPipe;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 10
    .parameter "url"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;,
            Ljcifs/dcerpc/DcerpcException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 38
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcHandle;-><init>()V

    .line 32
    iput-object v3, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 33
    iput-object v3, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    .line 34
    iput-boolean v6, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    .line 39
    invoke-static {p1}, Ljcifs/dcerpc/DcerpcHandle;->parseBinding(Ljava/lang/String;)Ljcifs/dcerpc/DcerpcBinding;

    move-result-object v3

    iput-object v3, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smb://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget-object v4, v4, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/IPC$/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget-object v4, v4, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    const-string v1, ""

    .line 43
    .local v1, params:Ljava/lang/String;
    iget-object v3, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    const-string v4, "server"

    invoke-virtual {v3, v4}, Ljcifs/dcerpc/DcerpcBinding;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, server:Ljava/lang/String;
    if-eqz v2, :cond_60

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&server="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_60
    iget-object v3, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    const-string v4, "address"

    invoke-virtual {v3, v4}, Ljcifs/dcerpc/DcerpcBinding;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, address:Ljava/lang/String;
    if-eqz v2, :cond_83

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    :cond_83
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a4

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_a4
    new-instance v3, Ljcifs/smb/SmbNamedPipe;

    const v4, 0x19f0603

    invoke-direct {v3, p1, v4, p2}, Ljcifs/smb/SmbNamedPipe;-><init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V

    iput-object v3, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->state:I

    .line 104
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    if-eqz v0, :cond_c

    .line 105
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    invoke-virtual {v0}, Ljcifs/smb/SmbFileOutputStream;->close()V

    .line 106
    :cond_c
    return-void
.end method

.method protected doReceiveFragment([BZ)V
    .registers 10
    .parameter "buf"
    .parameter "isDirect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 78
    array-length v5, p1

    iget v6, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->max_recv:I

    if-ge v5, v6, :cond_f

    .line 79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "buffer too small"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_f
    iget-boolean v5, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    if-eqz v5, :cond_2e

    if-nez p2, :cond_2e

    .line 82
    iget-object v5, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    const/16 v6, 0x400

    invoke-virtual {v5, p1, v4, v6}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result v2

    .line 87
    .local v2, off:I
    :goto_1d
    aget-byte v5, p1, v4

    const/4 v6, 0x5

    if-eq v5, v6, :cond_36

    aget-byte v5, p1, v3

    if-eqz v5, :cond_36

    .line 88
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected DCERPC PDU header"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    .end local v2           #off:I
    :cond_2e
    iget-object v5, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    array-length v6, p1

    invoke-virtual {v5, p1, v4, v6}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    move-result v2

    .restart local v2       #off:I
    goto :goto_1d

    .line 90
    :cond_36
    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v0, v5, 0xff

    .line 92
    .local v0, flags:I
    and-int/lit8 v5, v0, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_65

    :goto_40
    iput-boolean v3, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    .line 94
    const/16 v3, 0x8

    invoke-static {p1, v3}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v1

    .line 95
    .local v1, length:I
    iget v3, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->max_recv:I

    if-le v1, v3, :cond_67

    .line 96
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected fragment length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1           #length:I
    :cond_65
    move v3, v4

    .line 92
    goto :goto_40

    .line 98
    .restart local v1       #length:I
    :cond_67
    :goto_67
    if-ge v2, v1, :cond_73

    .line 99
    iget-object v3, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    sub-int v4, v1, v2

    invoke-virtual {v3, p1, v2, v4}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_67

    .line 101
    :cond_73
    return-void
.end method

.method protected doSendFragment([BIIZ)V
    .registers 7
    .parameter "buf"
    .parameter "off"
    .parameter "length"
    .parameter "isDirect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    invoke-virtual {v0}, Ljcifs/smb/SmbFileOutputStream;->isOpen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 63
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DCERPC pipe is no longer open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_14
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    if-nez v0, :cond_22

    .line 66
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getNamedPipeInputStream()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbFileInputStream;

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 67
    :cond_22
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    if-nez v0, :cond_30

    .line 68
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getNamedPipeOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbFileOutputStream;

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    .line 69
    :cond_30
    if-eqz p4, :cond_39

    .line 70
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Ljcifs/smb/SmbFileOutputStream;->writeDirect([BIII)V

    .line 74
    :goto_38
    return-void

    .line 73
    :cond_39
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/SmbFileOutputStream;->write([BII)V

    goto :goto_38
.end method

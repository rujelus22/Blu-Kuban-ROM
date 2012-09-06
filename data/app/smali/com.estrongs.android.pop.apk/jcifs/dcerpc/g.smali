.class public Ljcifs/dcerpc/g;
.super Ljcifs/dcerpc/e;


# instance fields
.field g:Ljcifs/smb/bf;

.field h:Ljcifs/smb/bc;

.field i:Ljcifs/smb/bd;

.field j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Ljcifs/dcerpc/e;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/g;->h:Ljcifs/smb/bc;

    iput-object v0, p0, Ljcifs/dcerpc/g;->i:Ljcifs/smb/bd;

    iput-boolean v5, p0, Ljcifs/dcerpc/g;->j:Z

    invoke-static {p1}, Ljcifs/dcerpc/e;->a(Ljava/lang/String;)Ljcifs/dcerpc/b;

    move-result-object v0

    iput-object v0, p0, Ljcifs/dcerpc/g;->a:Ljcifs/dcerpc/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smb://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/g;->a:Ljcifs/dcerpc/b;

    iget-object v1, v1, Ljcifs/dcerpc/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/IPC$/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/g;->a:Ljcifs/dcerpc/b;

    iget-object v1, v1, Ljcifs/dcerpc/b;->c:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    iget-object v0, p0, Ljcifs/dcerpc/g;->a:Ljcifs/dcerpc/b;

    const-string v2, "server"

    invoke-virtual {v0, v2}, Ljcifs/dcerpc/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_61
    iget-object v1, p0, Ljcifs/dcerpc/g;->a:Ljcifs/dcerpc/b;

    const-string v4, "address"

    invoke-virtual {v1, v4}, Ljcifs/dcerpc/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_84
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a5
    new-instance v1, Ljcifs/smb/bf;

    const v2, 0x19f0603

    invoke-direct {v1, v0, v2, p2}, Ljcifs/smb/bf;-><init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V

    iput-object v1, p0, Ljcifs/dcerpc/g;->g:Ljcifs/smb/bf;

    return-void

    :cond_b0
    move-object v0, v3

    goto :goto_a5

    :cond_b2
    move-object v2, v1

    goto :goto_61
.end method


# virtual methods
.method protected a([BIIZ)V
    .registers 7

    iget-object v0, p0, Ljcifs/dcerpc/g;->i:Ljcifs/smb/bd;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljcifs/dcerpc/g;->i:Ljcifs/smb/bd;

    invoke-virtual {v0}, Ljcifs/smb/bd;->a()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/IOException;

    const-string v1, "DCERPC pipe is no longer open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Ljcifs/dcerpc/g;->h:Ljcifs/smb/bc;

    if-nez v0, :cond_22

    iget-object v0, p0, Ljcifs/dcerpc/g;->g:Ljcifs/smb/bf;

    invoke-virtual {v0}, Ljcifs/smb/bf;->L()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljcifs/smb/bc;

    iput-object v0, p0, Ljcifs/dcerpc/g;->h:Ljcifs/smb/bc;

    :cond_22
    iget-object v0, p0, Ljcifs/dcerpc/g;->i:Ljcifs/smb/bd;

    if-nez v0, :cond_30

    iget-object v0, p0, Ljcifs/dcerpc/g;->g:Ljcifs/smb/bf;

    invoke-virtual {v0}, Ljcifs/smb/bf;->M()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljcifs/smb/bd;

    iput-object v0, p0, Ljcifs/dcerpc/g;->i:Ljcifs/smb/bd;

    :cond_30
    if-eqz p4, :cond_39

    iget-object v0, p0, Ljcifs/dcerpc/g;->i:Ljcifs/smb/bd;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Ljcifs/smb/bd;->a([BIII)V

    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Ljcifs/dcerpc/g;->i:Ljcifs/smb/bd;

    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/bd;->write([BII)V

    goto :goto_38
.end method

.method protected a([BZ)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v0, p1

    iget v3, p0, Ljcifs/dcerpc/g;->c:I

    if-ge v0, v3, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-boolean v0, p0, Ljcifs/dcerpc/g;->j:Z

    if-eqz v0, :cond_2e

    if-nez p2, :cond_2e

    iget-object v0, p0, Ljcifs/dcerpc/g;->h:Ljcifs/smb/bc;

    const/16 v3, 0x400

    invoke-virtual {v0, p1, v2, v3}, Ljcifs/smb/bc;->read([BII)I

    move-result v0

    :goto_1d
    aget-byte v3, p1, v2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_36

    aget-byte v3, p1, v1

    if-eqz v3, :cond_36

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected DCERPC PDU header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-object v0, p0, Ljcifs/dcerpc/g;->h:Ljcifs/smb/bc;

    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Ljcifs/smb/bc;->a([BII)I

    move-result v0

    goto :goto_1d

    :cond_36
    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_65

    :goto_40
    iput-boolean v1, p0, Ljcifs/dcerpc/g;->j:Z

    const/16 v1, 0x8

    invoke-static {p1, v1}, Ljcifs/util/b;->c([BI)S

    move-result v1

    iget v2, p0, Ljcifs/dcerpc/g;->c:I

    if-le v1, v2, :cond_67

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected fragment length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    move v1, v2

    goto :goto_40

    :cond_67
    :goto_67
    if-ge v0, v1, :cond_73

    iget-object v2, p0, Ljcifs/dcerpc/g;->h:Ljcifs/smb/bc;

    sub-int v3, v1, v0

    invoke-virtual {v2, p1, v0, v3}, Ljcifs/smb/bc;->a([BII)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_67

    :cond_73
    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/g;->d:I

    iget-object v0, p0, Ljcifs/dcerpc/g;->i:Ljcifs/smb/bd;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ljcifs/dcerpc/g;->i:Ljcifs/smb/bd;

    invoke-virtual {v0}, Ljcifs/smb/bd;->close()V

    :cond_c
    return-void
.end method

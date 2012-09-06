.class Ljcifs/smb/af;
.super Ljcifs/smb/t;


# instance fields
.field a:I

.field b:Ljcifs/smb/bk;


# direct methods
.method constructor <init>(Ljcifs/smb/bk;)V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/t;-><init>()V

    iput-object p1, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    return-void
.end method


# virtual methods
.method n([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method o([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method p([BI)I
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljcifs/smb/af;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/af;->a:I

    add-int/lit8 v0, p2, 0x2

    iget v3, p0, Ljcifs/smb/af;->a:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_12

    sub-int/2addr v0, p2

    :goto_11
    return v0

    :cond_12
    iget-object v3, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v3, Ljcifs/smb/bk;->f:I

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget-object v3, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v3, v3, Ljcifs/smb/bk;->f:I

    and-int/lit8 v3, v3, 0x1

    iput v3, v0, Ljcifs/smb/bk;->g:I

    iget-object v3, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->f:I

    and-int/lit8 v0, v0, 0x2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_ae

    move v0, v1

    :goto_32
    iput-boolean v0, v3, Ljcifs/smb/bk;->h:Z

    iget-object v3, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->f:I

    and-int/lit8 v0, v0, 0x4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_b0

    move v0, v1

    :goto_40
    iput-boolean v0, v3, Ljcifs/smb/bk;->i:Z

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget-object v3, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v3, v3, Ljcifs/smb/bk;->f:I

    and-int/lit8 v3, v3, 0x8

    const/16 v5, 0x8

    if-ne v3, v5, :cond_b2

    :goto_4e
    iput-boolean v1, v0, Ljcifs/smb/bk;->j:Z

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    invoke-static {p1, v4}, Ljcifs/smb/af;->f([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/bk;->a:I

    add-int/lit8 v0, v4, 0x2

    iget-object v1, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    invoke-static {p1, v0}, Ljcifs/smb/af;->f([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/bk;->k:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    invoke-static {p1, v0}, Ljcifs/smb/af;->g([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/bk;->b:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    invoke-static {p1, v0}, Ljcifs/smb/af;->g([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/bk;->l:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    invoke-static {p1, v0}, Ljcifs/smb/af;->g([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/bk;->c:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    invoke-static {p1, v0}, Ljcifs/smb/af;->g([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/bk;->d:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    invoke-static {p1, v0}, Ljcifs/smb/af;->i([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/bk;->m:J

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    invoke-static {p1, v0}, Ljcifs/smb/af;->f([BI)I

    move-result v2

    iput v2, v1, Ljcifs/smb/bk;->n:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v1, Ljcifs/smb/bk;->o:I

    sub-int v0, v2, p2

    goto/16 :goto_11

    :cond_ae
    move v0, v2

    goto :goto_32

    :cond_b0
    move v0, v2

    goto :goto_40

    :cond_b2
    move v1, v2

    goto :goto_4e
.end method

.method q([BI)I
    .registers 10

    const v5, 0x8000

    const/16 v4, 0x100

    const/16 v3, 0x10

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->d:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_9f

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget-object v1, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v1, v1, Ljcifs/smb/bk;->o:I

    new-array v1, v1, [B

    iput-object v1, v0, Ljcifs/smb/bk;->p:[B

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget-object v0, v0, Ljcifs/smb/bk;->p:[B

    iget-object v1, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v1, v1, Ljcifs/smb/bk;->o:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->o:I

    add-int v1, p2, v0

    iget v0, p0, Ljcifs/smb/af;->s:I

    iget-object v3, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v3, v3, Ljcifs/smb/bk;->o:I

    if-le v0, v3, :cond_94

    :try_start_34
    iget v0, p0, Ljcifs/smb/af;->m:I
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_36} :catch_54

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_75

    :cond_39
    move v0, v2

    add-int v2, v1, v0

    :try_start_3c
    aget-byte v2, p1, v2

    if-nez v2, :cond_48

    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3c .. :try_end_46} :catch_73

    if-eqz v2, :cond_67

    :cond_48
    add-int/lit8 v2, v0, 0x2

    if-le v2, v4, :cond_39

    :try_start_4c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "zero termination not found"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_54
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_54} :catch_54

    :catch_54
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    :goto_58
    sget-object v3, Ljcifs/smb/af;->e:Ljcifs/util/e;

    sget v3, Ljcifs/util/e;->a:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_64

    sget-object v3, Ljcifs/smb/af;->e:Ljcifs/util/e;

    invoke-virtual {v2, v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_64
    :goto_64
    add-int/2addr v0, v1

    :goto_65
    sub-int/2addr v0, p2

    return v0

    :cond_67
    :try_start_67
    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v3, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v2, Ljcifs/smb/bk;->e:Ljava/lang/String;

    goto :goto_64

    :catch_73
    move-exception v2

    goto :goto_58

    :cond_75
    move v0, v2

    add-int v2, v1, v0

    aget-byte v2, p1, v2
    :try_end_7a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_67 .. :try_end_7a} :catch_73

    if-eqz v2, :cond_88

    add-int/lit8 v2, v0, 0x1

    if-le v2, v4, :cond_75

    :try_start_80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "zero termination not found"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_88
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_80 .. :try_end_88} :catch_54

    :cond_88
    :try_start_88
    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljcifs/smb/t;->am:Ljava/lang/String;

    invoke-direct {v3, p1, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v2, Ljcifs/smb/bk;->e:Ljava/lang/String;
    :try_end_93
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_88 .. :try_end_93} :catch_73

    goto :goto_64

    :cond_94
    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, v0, Ljcifs/smb/bk;->e:Ljava/lang/String;

    move v0, v1

    goto :goto_65

    :cond_9f
    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    new-array v1, v3, [B

    iput-object v1, v0, Ljcifs/smb/bk;->q:[B

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget-object v0, v0, Ljcifs/smb/bk;->q:[B

    invoke-static {p1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, v0, Ljcifs/smb/bk;->e:Ljava/lang/String;

    move v0, p2

    goto :goto_65
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/16 v4, 0x8

    new-instance v1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComNegotiateResponse["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljcifs/smb/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",wordCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/af;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",dialectIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/af;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",securityMode=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v2, v2, Ljcifs/smb/bk;->f:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",security="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->g:I

    if-nez v0, :cond_115

    const-string v0, "share"

    :goto_50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",encryptedPasswords="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget-boolean v2, v2, Ljcifs/smb/bk;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxMpxCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v2, v2, Ljcifs/smb/bk;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxNumberVcs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v2, v2, Ljcifs/smb/bk;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxBufferSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v2, v2, Ljcifs/smb/bk;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",maxRawSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v2, v2, Ljcifs/smb/bk;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sessionKey=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v2, v2, Ljcifs/smb/bk;->c:I

    invoke-static {v2, v4}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",capabilities=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v2, v2, Ljcifs/smb/bk;->d:I

    invoke-static {v2, v4}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",serverTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget-wide v3, v3, Ljcifs/smb/bk;->m:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",serverTimeZone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v2, v2, Ljcifs/smb/bk;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",encryptionKeyLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget v2, v2, Ljcifs/smb/bk;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",byteCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/af;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",oemDomainName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/af;->b:Ljcifs/smb/bk;

    iget-object v2, v2, Ljcifs/smb/bk;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_115
    const-string v0, "user"

    goto/16 :goto_50
.end method

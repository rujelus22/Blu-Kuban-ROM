.class Lcom/jcraft/jsch/IdentityFile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# instance fields
.field a:Ljava/lang/String;

.field b:[B

.field c:[B

.field private d:Lcom/jcraft/jsch/JSch;

.field private e:Lcom/jcraft/jsch/HASH;

.field private f:[B

.field private g:Lcom/jcraft/jsch/Cipher;

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:[B

.field private o:[B

.field private p:I

.field private q:I

.field private r:[B

.field private s:Z


# virtual methods
.method public a([B)Z
    .registers 12

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_5
    iget-boolean v4, p0, Lcom/jcraft/jsch/IdentityFile;->s:Z

    if-eqz v4, :cond_6d

    if-nez p1, :cond_c

    :goto_b
    return v0

    :cond_c
    iget-object v4, p0, Lcom/jcraft/jsch/IdentityFile;->e:Lcom/jcraft/jsch/HASH;

    invoke-interface {v4}, Lcom/jcraft/jsch/HASH;->b()I

    move-result v6

    iget-object v4, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    array-length v4, v4

    div-int/2addr v4, v6

    mul-int v5, v4, v6

    iget-object v4, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    array-length v4, v4

    rem-int/2addr v4, v6

    if-nez v4, :cond_5a

    move v4, v0

    :goto_1f
    add-int/2addr v4, v5

    new-array v7, v4, [B

    iget v4, p0, Lcom/jcraft/jsch/IdentityFile;->q:I

    if-nez v4, :cond_78

    move v4, v0

    :goto_27
    add-int v5, v4, v6

    array-length v8, v7

    if-gt v5, v8, :cond_60

    if-eqz v2, :cond_35

    iget-object v5, p0, Lcom/jcraft/jsch/IdentityFile;->e:Lcom/jcraft/jsch/HASH;

    const/4 v8, 0x0

    array-length v9, v2

    invoke-interface {v5, v2, v8, v9}, Lcom/jcraft/jsch/HASH;->a([BII)V

    :cond_35
    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->e:Lcom/jcraft/jsch/HASH;

    const/4 v5, 0x0

    array-length v8, p1

    invoke-interface {v2, p1, v5, v8}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v5, p0, Lcom/jcraft/jsch/IdentityFile;->e:Lcom/jcraft/jsch/HASH;

    iget-object v8, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    array-length v2, v2

    if-le v2, v3, :cond_5c

    move v2, v3

    :goto_47
    invoke-interface {v5, v8, v9, v2}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->e:Lcom/jcraft/jsch/HASH;

    invoke-interface {v2}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v5

    const/4 v2, 0x0

    array-length v8, v5

    invoke-static {v5, v2, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v5

    add-int/2addr v2, v4

    move v4, v2

    move-object v2, v5

    goto :goto_27

    :cond_5a
    move v4, v6

    goto :goto_1f

    :cond_5c
    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    array-length v2, v2

    goto :goto_47

    :cond_60
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    array-length v5, v5

    invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6a
    :goto_6a
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->c([B)V

    :cond_6d
    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->g()Z

    move-result v2

    if-eqz v2, :cond_b4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/IdentityFile;->s:Z

    move v0, v1

    goto :goto_b

    :cond_78
    iget v3, p0, Lcom/jcraft/jsch/IdentityFile;->q:I

    if-ne v3, v1, :cond_6a

    move-object v3, v2

    move v2, v0

    :goto_7e
    add-int v4, v2, v6

    array-length v5, v7

    if-gt v4, v5, :cond_a1

    if-eqz v3, :cond_8c

    iget-object v4, p0, Lcom/jcraft/jsch/IdentityFile;->e:Lcom/jcraft/jsch/HASH;

    const/4 v5, 0x0

    array-length v8, v3

    invoke-interface {v4, v3, v5, v8}, Lcom/jcraft/jsch/HASH;->a([BII)V

    :cond_8c
    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->e:Lcom/jcraft/jsch/HASH;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-interface {v3, p1, v4, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->e:Lcom/jcraft/jsch/HASH;

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v7, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v3

    add-int/2addr v2, v4

    goto :goto_7e

    :cond_a1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    array-length v5, v5

    invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_ab} :catch_ac

    goto :goto_6a

    :catch_ac
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_c1

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_b4
    const/4 v1, 0x0

    :try_start_b5
    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_bf} :catch_ac

    goto/16 :goto_b

    :cond_c1
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_cf

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_cf
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a()[B
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->r:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->r:[B

    :goto_6
    return-object v0

    :cond_7
    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->e()[B

    move-result-object v0

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->f()[B

    move-result-object v0

    goto :goto_6
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const-string v0, "ssh-rsa"

    :goto_7
    return-object v0

    :cond_8
    const-string v0, "ssh-dss"

    goto :goto_7
.end method

.method public b([B)[B
    .registers 4

    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IdentityFile;->c([B)[B

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IdentityFile;->d([B)[B

    move-result-object v0

    goto :goto_9
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->a:Ljava/lang/String;

    return-object v0
.end method

.method c([B)[B
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->d:Lcom/jcraft/jsch/JSch;

    const-string v0, "signature.rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureRSA;->a()V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->o:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SignatureRSA;->b([B[B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/SignatureRSA;->a([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureRSA;->b()[B

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const-string v2, "ssh-rsa"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    array-length v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const-string v2, "ssh-rsa"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, v1, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    :goto_44
    return-object v0

    :catch_45
    move-exception v0

    const/4 v0, 0x0

    goto :goto_44
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/jcraft/jsch/IdentityFile;->s:Z

    return v0
.end method

.method d([B)[B
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->d:Lcom/jcraft/jsch/JSch;

    const-string v0, "signature.dss"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureDSA;->a()V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    iget-object v4, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jsch/SignatureDSA;->b([B[B[B[B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/SignatureDSA;->a([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureDSA;->b()[B

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const-string v2, "ssh-dss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    array-length v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const-string v2, "ssh-dss"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, v1, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    :goto_48
    return-object v0

    :catch_49
    move-exception v0

    const/4 v0, 0x0

    goto :goto_48
.end method

.method e()[B
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->n:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const-string v1, "ssh-rsa"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->n:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const-string v1, "ssh-rsa"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->n:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/jcraft/jsch/IdentityFile;

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    check-cast p1, Lcom/jcraft/jsch/IdentityFile;

    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/IdentityFile;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8
.end method

.method f()[B
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const-string v1, "ssh-dss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const-string v1, "ssh-dss"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    goto :goto_5
.end method

.method public finalize()V
    .registers 1

    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->j()V

    return-void
.end method

.method public g()Z
    .registers 3

    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->h()Z

    move-result v0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->i()Z

    move-result v0

    goto :goto_9
.end method

.method h()Z
    .registers 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_3
    iget-boolean v0, p0, Lcom/jcraft/jsch/IdentityFile;->s:Z

    if-eqz v0, :cond_6d

    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->q:I

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->g:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    array-length v0, v0

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->g:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    array-length v3, v3

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :goto_26
    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->q:I

    if-ne v0, v7, :cond_93

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v4}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v1

    array-length v2, v4

    add-int/lit8 v1, v1, 0x4

    if-eq v2, v1, :cond_76

    move v0, v6

    :goto_39
    return v0

    :cond_3a
    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->q:I

    if-ne v0, v7, :cond_6b

    move v0, v6

    :goto_3f
    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_4c
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->g:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    array-length v0, v0

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->g:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    array-length v3, v3

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    goto :goto_26

    :catch_68
    move-exception v0

    move v0, v6

    goto :goto_39

    :cond_6b
    move v0, v6

    goto :goto_39

    :cond_6d
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    if-eqz v0, :cond_73

    move v0, v7

    goto :goto_39

    :cond_73
    iget-object v4, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    goto :goto_26

    :cond_76
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->n:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->o:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move v0, v7

    goto :goto_39

    :cond_93
    const/4 v0, 0x0

    aget-byte v0, v4, v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_9c

    move v0, v6

    goto :goto_39

    :cond_9c
    const/4 v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_bb

    and-int/lit8 v0, v0, 0x7f

    move v1, v0

    move v3, v6

    move v0, v8

    :goto_aa
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_bc

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v3

    move v3, v0

    move v0, v1

    move v1, v2

    goto :goto_aa

    :cond_bb
    move v0, v8

    :cond_bc
    aget-byte v1, v4, v0

    if-eq v1, v8, :cond_c3

    move v0, v6

    goto/16 :goto_39

    :cond_c3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_e3

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_d3
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_e3

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_d3

    :cond_e3
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_104

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_f4
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_104

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_f4

    :cond_104
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_12f

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_11f
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_12f

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_11f

    :cond_12f
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->n:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->n:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_15a

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_14a
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_15a

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_14a

    :cond_15a
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->o:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->o:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_185

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_175
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_185

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_175

    :cond_185
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1ac

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_19c
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1ac

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_19c

    :cond_1ac
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1d3

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_1c3
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1d3

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1c3

    :cond_1d3
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1fa

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_1ea
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1fa

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1ea

    :cond_1fa
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_221

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_211
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_221

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_211

    :cond_221
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_227} :catch_68

    add-int/2addr v0, v1

    move v0, v7

    goto/16 :goto_39
.end method

.method i()Z
    .registers 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_3
    iget-boolean v0, p0, Lcom/jcraft/jsch/IdentityFile;->s:Z

    if-eqz v0, :cond_6d

    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->q:I

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->g:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    array-length v0, v0

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->g:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    array-length v3, v3

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :goto_26
    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->q:I

    if-ne v0, v7, :cond_96

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v4}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v1

    array-length v2, v4

    add-int/lit8 v1, v1, 0x4

    if-eq v2, v1, :cond_76

    move v0, v6

    :goto_39
    return v0

    :cond_3a
    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->q:I

    if-ne v0, v7, :cond_6b

    move v0, v6

    :goto_3f
    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_4c
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->g:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    array-length v0, v0

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->g:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    array-length v3, v3

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    goto :goto_26

    :catch_68
    move-exception v0

    move v0, v6

    goto :goto_39

    :cond_6b
    move v0, v6

    goto :goto_39

    :cond_6d
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    if-eqz v0, :cond_73

    move v0, v7

    goto :goto_39

    :cond_73
    iget-object v4, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    goto :goto_26

    :cond_76
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    move v0, v7

    goto :goto_39

    :cond_96
    const/4 v0, 0x0

    aget-byte v0, v4, v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_9f

    move v0, v6

    goto :goto_39

    :cond_9f
    const/4 v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_be

    and-int/lit8 v0, v0, 0x7f

    move v1, v0

    move v3, v6

    move v0, v8

    :goto_ad
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_bf

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v3

    move v3, v0

    move v0, v1

    move v1, v2

    goto :goto_ad

    :cond_be
    move v0, v8

    :cond_bf
    aget-byte v1, v4, v0

    if-eq v1, v8, :cond_c6

    move v0, v6

    goto/16 :goto_39

    :cond_c6
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_e6

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_d6
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_e6

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_d6

    :cond_e6
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_107

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_f7
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_107

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_f7

    :cond_107
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_132

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_122
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_132

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_122

    :cond_132
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_15d

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_14d
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_15d

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_14d

    :cond_15d
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_188

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_178
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_188

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_178

    :cond_188
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1b3

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_1a3
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1b3

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1a3

    :cond_1b3
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1bd} :catch_68

    add-int/2addr v0, v1

    move v0, v7

    goto/16 :goto_39
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->o:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    return-void
.end method

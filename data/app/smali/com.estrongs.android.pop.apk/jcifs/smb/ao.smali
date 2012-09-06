.class Ljcifs/smb/ao;
.super Ljcifs/smb/b;


# static fields
.field private static final D:Z

.field private static final d:I


# instance fields
.field private E:[B

.field private F:[B

.field private G:[B

.field private H:I

.field private I:I

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field b:Ljcifs/smb/bh;

.field c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    const-string v0, "jcifs.smb.client.SessionSetupAndX.TreeConnectAndX"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/ao;->d:I

    const-string v0, "jcifs.smb.client.disablePlainTextPasswords"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/ao;->D:Z

    return-void
.end method

.method constructor <init>(Ljcifs/smb/bh;Ljcifs/smb/t;Ljava/lang/Object;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Ljcifs/smb/b;-><init>(Ljcifs/smb/t;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/ao;->G:[B

    const/16 v0, 0x73

    iput-byte v0, p0, Ljcifs/smb/ao;->g:B

    iput-object p1, p0, Ljcifs/smb/ao;->b:Ljcifs/smb/bh;

    iput-object p3, p0, Ljcifs/smb/ao;->c:Ljava/lang/Object;

    iget-object v0, p1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget v0, v0, Ljcifs/smb/bj;->y:I

    iput v0, p0, Ljcifs/smb/ao;->H:I

    iget-object v0, p1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget v0, v0, Ljcifs/smb/bj;->x:I

    iput v0, p0, Ljcifs/smb/ao;->I:I

    iget-object v0, p1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v0, v0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e2

    instance-of v0, p3, Ljcifs/smb/NtlmPasswordAuthentication;

    if-eqz v0, :cond_ce

    check-cast p3, Ljcifs/smb/NtlmPasswordAuthentication;

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    if-ne p3, v0, :cond_57

    new-array v0, v2, [B

    iput-object v0, p0, Ljcifs/smb/ao;->E:[B

    new-array v0, v2, [B

    iput-object v0, p0, Ljcifs/smb/ao;->F:[B

    iget v0, p0, Ljcifs/smb/ao;->I:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/ao;->I:I

    :cond_3e
    :goto_3e
    iget-object v0, p3, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/ao;->J:Ljava/lang/String;

    iget-boolean v0, p0, Ljcifs/smb/ao;->t:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Ljcifs/smb/ao;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ao;->J:Ljava/lang/String;

    :cond_4e
    iget-object v0, p3, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ao;->K:Ljava/lang/String;

    :goto_56
    return-void

    :cond_57
    iget-object v0, p1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v0, v0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget-boolean v0, v0, Ljcifs/smb/bk;->h:Z

    if-eqz v0, :cond_89

    iget-object v0, p1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v0, v0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget-object v0, v0, Ljcifs/smb/bk;->p:[B

    invoke-virtual {p3, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getAnsiHash([B)[B

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ao;->E:[B

    iget-object v0, p1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v0, v0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget-object v0, v0, Ljcifs/smb/bk;->p:[B

    invoke-virtual {p3, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ao;->F:[B

    iget-object v0, p0, Ljcifs/smb/ao;->E:[B

    array-length v0, v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Ljcifs/smb/ao;->F:[B

    array-length v0, v0

    if-nez v0, :cond_3e

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null setup prohibited."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    sget-boolean v0, Ljcifs/smb/ao;->D:Z

    if-eqz v0, :cond_95

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Plain text passwords are disabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_95
    iget-boolean v0, p0, Ljcifs/smb/ao;->t:Z

    if-eqz v0, :cond_b3

    invoke-virtual {p3}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [B

    iput-object v1, p0, Ljcifs/smb/ao;->E:[B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Ljcifs/smb/ao;->F:[B

    iget-object v1, p0, Ljcifs/smb/ao;->F:[B

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/ao;->a(Ljava/lang/String;[BI)I

    goto :goto_3e

    :cond_b3
    invoke-virtual {p3}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Ljcifs/smb/ao;->E:[B

    new-array v1, v2, [B

    iput-object v1, p0, Ljcifs/smb/ao;->F:[B

    iget-object v1, p0, Ljcifs/smb/ao;->E:[B

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/ao;->a(Ljava/lang/String;[BI)I

    goto/16 :goto_3e

    :cond_ce
    instance-of v0, p3, [B

    if-eqz v0, :cond_da

    check-cast p3, [B

    check-cast p3, [B

    iput-object p3, p0, Ljcifs/smb/ao;->G:[B

    goto/16 :goto_56

    :cond_da
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Unsupported credential type"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e2
    iget-object v0, p1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget-object v0, v0, Ljcifs/smb/bj;->s:Ljcifs/smb/bk;

    iget v0, v0, Ljcifs/smb/bk;->g:I

    if-nez v0, :cond_11a

    instance-of v0, p3, Ljcifs/smb/NtlmPasswordAuthentication;

    if-eqz v0, :cond_112

    check-cast p3, Ljcifs/smb/NtlmPasswordAuthentication;

    new-array v0, v2, [B

    iput-object v0, p0, Ljcifs/smb/ao;->E:[B

    new-array v0, v2, [B

    iput-object v0, p0, Ljcifs/smb/ao;->F:[B

    iget-object v0, p3, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/ao;->J:Ljava/lang/String;

    iget-boolean v0, p0, Ljcifs/smb/ao;->t:Z

    if-eqz v0, :cond_108

    iget-object v0, p0, Ljcifs/smb/ao;->J:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ao;->J:Ljava/lang/String;

    :cond_108
    iget-object v0, p3, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ao;->K:Ljava/lang/String;

    goto/16 :goto_56

    :cond_112
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Unsupported credential type"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11a
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(B)I
    .registers 3

    const/16 v0, 0x75

    if-ne p1, v0, :cond_7

    sget v0, Ljcifs/smb/ao;->d:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method n([BI)I
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Ljcifs/smb/ao;->b:Ljcifs/smb/bh;

    iget-object v0, v0, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget v0, v0, Ljcifs/smb/bj;->v:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ao;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Ljcifs/smb/ao;->b:Ljcifs/smb/bh;

    iget-object v1, v1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget v1, v1, Ljcifs/smb/bj;->u:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljcifs/smb/ao;->b:Ljcifs/smb/bh;

    iget-object v1, v1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/ao;->H:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ao;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljcifs/smb/ao;->G:[B

    if-eqz v1, :cond_53

    iget-object v1, p0, Ljcifs/smb/ao;->G:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :goto_39
    add-int/lit8 v1, v0, 0x1

    aput-byte v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    iget v1, p0, Ljcifs/smb/ao;->I:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ao;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0

    :cond_53
    iget-object v1, p0, Ljcifs/smb/ao;->E:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljcifs/smb/ao;->F:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ao;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_39
.end method

.method o([BI)I
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Ljcifs/smb/ao;->G:[B

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljcifs/smb/ao;->G:[B

    iget-object v1, p0, Ljcifs/smb/ao;->G:[B

    array-length v1, v1

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/ao;->G:[B

    array-length v0, v0

    add-int/2addr v0, p2

    :goto_11
    iget-object v1, p0, Ljcifs/smb/ao;->b:Ljcifs/smb/bh;

    iget-object v1, v1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    sget-object v1, Ljcifs/smb/bj;->aw:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ao;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljcifs/smb/ao;->b:Ljcifs/smb/bh;

    iget-object v1, v1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    sget-object v1, Ljcifs/smb/bj;->ax:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ao;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    :cond_29
    iget-object v0, p0, Ljcifs/smb/ao;->E:[B

    iget-object v1, p0, Ljcifs/smb/ao;->E:[B

    array-length v1, v1

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/ao;->E:[B

    array-length v0, v0

    add-int/2addr v0, p2

    iget-object v1, p0, Ljcifs/smb/ao;->F:[B

    iget-object v2, p0, Ljcifs/smb/ao;->F:[B

    array-length v2, v2

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljcifs/smb/ao;->F:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljcifs/smb/ao;->J:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ao;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljcifs/smb/ao;->K:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ao;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_11
.end method

.method p([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method q([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmbComSessionSetupAndX["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljcifs/smb/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",snd_buf_size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Ljcifs/smb/ao;->b:Ljcifs/smb/bh;

    iget-object v3, v3, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget v3, v3, Ljcifs/smb/bj;->v:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",maxMpxCount="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Ljcifs/smb/ao;->b:Ljcifs/smb/bh;

    iget-object v3, v3, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    iget v3, v3, Ljcifs/smb/bj;->u:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",VC_NUMBER="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Ljcifs/smb/ao;->b:Ljcifs/smb/bh;

    iget-object v3, v3, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",sessionKey="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Ljcifs/smb/ao;->H:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",lmHash.length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Ljcifs/smb/ao;->E:[B

    if-nez v0, :cond_c0

    move v0, v1

    :goto_5c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",ntHash.length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Ljcifs/smb/ao;->F:[B

    if-nez v3, :cond_c4

    :goto_6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/ao;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/ao;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",primaryDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/ao;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NATIVE_OS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/ao;->b:Ljcifs/smb/bh;

    iget-object v1, v1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    sget-object v1, Ljcifs/smb/bj;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",NATIVE_LANMAN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/ao;->b:Ljcifs/smb/bh;

    iget-object v1, v1, Ljcifs/smb/bh;->e:Ljcifs/smb/bj;

    sget-object v1, Ljcifs/smb/bj;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_c0
    iget-object v0, p0, Ljcifs/smb/ao;->E:[B

    array-length v0, v0

    goto :goto_5c

    :cond_c4
    iget-object v1, p0, Ljcifs/smb/ao;->F:[B

    array-length v1, v1

    goto :goto_6a
.end method

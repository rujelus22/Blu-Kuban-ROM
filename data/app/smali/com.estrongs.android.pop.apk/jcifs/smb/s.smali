.class public Ljcifs/smb/s;
.super Ljava/lang/Object;


# instance fields
.field a:Ljcifs/smb/NtlmPasswordAuthentication;

.field b:I

.field c:Ljava/lang/String;

.field d:Z

.field e:[B

.field f:[B

.field g:Ljava/lang/String;

.field h:I

.field i:Ljcifs/util/e;


# direct methods
.method public constructor <init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/s;->d:Z

    iput-object v1, p0, Ljcifs/smb/s;->e:[B

    iput-object v1, p0, Ljcifs/smb/s;->f:[B

    iput-object v1, p0, Ljcifs/smb/s;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/s;->h:I

    iput-object p1, p0, Ljcifs/smb/s;->a:Ljcifs/smb/NtlmPasswordAuthentication;

    iget v0, p0, Ljcifs/smb/s;->b:I

    or-int/lit8 v0, v0, 0x4

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/s;->b:I

    if-eqz p2, :cond_28

    iget v0, p0, Ljcifs/smb/s;->b:I

    const v1, 0x40008010

    or-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/s;->b:I

    :cond_28
    invoke-static {}, Ljcifs/a/b;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/s;->c:Ljava/lang/String;

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Ljcifs/smb/s;->d:Z

    return v0
.end method

.method public a([BII)[B
    .registers 13

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v4, 0x0

    iget v0, p0, Ljcifs/smb/s;->h:I

    packed-switch v0, :pswitch_data_c6

    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid state"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    new-instance v1, Ljcifs/a/b;

    iget v0, p0, Ljcifs/smb/s;->b:I

    iget-object v2, p0, Ljcifs/smb/s;->a:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/s;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Ljcifs/a/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/a/b;->e()[B

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v7, :cond_3a

    iget-object v2, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    invoke-virtual {v2, v1}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lt v1, v8, :cond_3a

    iget-object v1, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    array-length v2, v0

    invoke-static {v1, v0, v4, v2}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_3a
    iget v1, p0, Ljcifs/smb/s;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljcifs/smb/s;->h:I

    :goto_40
    return-object v0

    :pswitch_41
    :try_start_41
    new-instance v1, Ljcifs/a/c;

    invoke-direct {v1, p1}, Ljcifs/a/c;-><init>([B)V

    iget-object v0, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    if-lt v0, v7, :cond_5e

    iget-object v0, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    if-lt v0, v8, :cond_5e

    iget-object v0, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, p1, v2, v3}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_5e
    invoke-virtual {v1}, Ljcifs/a/c;->c()[B

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/s;->e:[B

    iget v0, p0, Ljcifs/smb/s;->b:I

    invoke-virtual {v1}, Ljcifs/a/c;->a()I

    move-result v2

    and-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/s;->b:I

    new-instance v0, Ljcifs/a/d;

    iget-object v2, p0, Ljcifs/smb/s;->a:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/s;->a:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/s;->a:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v4}, Ljcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/s;->c:Ljava/lang/String;

    iget v6, p0, Ljcifs/smb/s;->b:I

    invoke-direct/range {v0 .. v6}, Ljcifs/a/d;-><init>(Ljcifs/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljcifs/a/d;->j()[B

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v7, :cond_a4

    iget-object v2, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    invoke-virtual {v2, v0}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    iget-object v2, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lt v2, v8, :cond_a4

    iget-object v2, p0, Ljcifs/smb/s;->i:Ljcifs/util/e;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v2, v1, v3, v4}, Ljcifs/util/d;->a(Ljava/io/PrintStream;[BII)V

    :cond_a4
    iget v2, p0, Ljcifs/smb/s;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_b0

    invoke-virtual {v0}, Ljcifs/a/d;->h()[B

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/s;->f:[B

    :cond_b0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/s;->d:Z

    iget v0, p0, Ljcifs/smb/s;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/s;->h:I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_b9} :catch_bb

    move-object v0, v1

    goto :goto_40

    :catch_bb
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_10
        :pswitch_41
    .end packed-switch
.end method

.method public b()[B
    .registers 2

    iget-object v0, p0, Ljcifs/smb/s;->f:[B

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/s;->g:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NtlmContext[auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/s;->a:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ntlmsspFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/s;->b:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",workstation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isEstablished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljcifs/smb/s;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/s;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",serverChallenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/s;->e:[B

    if-nez v1, :cond_a7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",signingKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/s;->f:[B

    if-nez v1, :cond_c4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/s;->e:[B

    iget-object v2, p0, Ljcifs/smb/s;->e:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v3, v2}, Ljcifs/util/d;->a([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    :cond_c4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/s;->f:[B

    iget-object v2, p0, Ljcifs/smb/s;->f:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v3, v2}, Ljcifs/util/d;->a([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_93
.end method

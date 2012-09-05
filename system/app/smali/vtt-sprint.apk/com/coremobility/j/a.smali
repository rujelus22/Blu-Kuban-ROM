.class public final Lcom/coremobility/j/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/coremobility/integration/b/c;

.field b:Lcom/coremobility/integration/g/b;

.field c:Ljava/lang/String;

.field d:Ljava/lang/StringBuilder;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:I

.field r:I

.field s:I

.field t:Z

.field u:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/j/a;->u:I

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_40

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v3, v2

    :goto_10
    const/16 v0, 0x10

    if-ge v3, v0, :cond_44

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v5, v0

    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0xf

    int-to-byte v6, v0

    if-ltz v5, :cond_42

    const/16 v0, 0xf

    if-gt v5, v0, :cond_42

    move v0, v1

    :goto_27
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    and-int/lit16 v0, v5, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v0, v6, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_10

    :cond_40
    move v0, v2

    goto :goto_5

    :cond_42
    move v0, v2

    goto :goto_27

    :cond_44
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private c(I)V
    .registers 6

    const/16 v3, 0x2f

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/j/a;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM+HT40x bad db-item, db-id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_20
    return-void

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM+HT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bad db-item, db-id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_20
.end method

.method private d(I)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v7, 0x2

    const/16 v6, 0x2f

    const/4 v0, 0x0

    new-instance v2, Lcom/coremobility/integration/n;

    invoke-direct {v2}, Lcom/coremobility/integration/n;-><init>()V

    iget-object v3, p0, Lcom/coremobility/j/a;->a:Lcom/coremobility/integration/b/c;

    const/16 v4, 0x1004

    invoke-virtual {v3, v4, p1, v2}, Lcom/coremobility/integration/b/c;->a(IILcom/coremobility/integration/n;)Z

    move-result v3

    if-nez v3, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT40x no db-item at db-id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2c
    return v0

    :cond_2d
    iget v3, v2, Lcom/coremobility/integration/n;->a:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_37

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->c(I)V

    goto :goto_2c

    :cond_37
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, v2, Lcom/coremobility/integration/n;->b:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_43
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/coremobility/j/a;->q:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/coremobility/j/a;->s:I

    iget v3, p0, Lcom/coremobility/j/a;->q:I

    if-eq v3, v1, :cond_81

    iget v3, p0, Lcom/coremobility/j/a;->q:I

    if-eq v3, v7, :cond_81

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->c(I)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_5a} :catch_5b

    goto :goto_2c

    :catch_5b
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no \'nonce\', db-id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    :cond_81
    :try_start_81
    iget v3, p0, Lcom/coremobility/j/a;->s:I

    const/16 v5, 0x191

    if-eq v3, v5, :cond_91

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    const/16 v5, 0x197

    if-eq v3, v5, :cond_91

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->c(I)V

    goto :goto_2c

    :cond_91
    iget v3, p0, Lcom/coremobility/j/a;->q:I

    if-ne v3, v7, :cond_ab

    iget v2, v2, Lcom/coremobility/integration/n;->a:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_9f

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->c(I)V

    goto :goto_2c

    :cond_9f
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/coremobility/j/a;->r:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/coremobility/j/a;->t:Z

    :cond_ab
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    if-eqz v2, :cond_c3

    iget-object v2, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_ec

    :cond_c3
    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no \'realm\', db-id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2c

    :cond_ec
    iget v2, p0, Lcom/coremobility/j/a;->q:I

    if-ne v2, v7, :cond_18a

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    if-eqz v2, :cond_12c

    iget-object v2, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_155

    :cond_12c
    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no \'nonce\', db-id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2c

    :cond_155
    iget-object v2, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    if-eqz v2, :cond_161

    iget-object v2, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_18a

    :cond_161
    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no \'nonce\', db-id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_188} :catch_5b

    goto/16 :goto_2c

    :cond_18a
    move v0, v1

    goto/16 :goto_2c
.end method

.method private e(I)Z
    .registers 8

    const/16 v5, 0x2f

    const/4 v4, 0x2

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_e
    iget v1, p0, Lcom/coremobility/j/a;->q:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/coremobility/j/a;->q:I

    if-ne v1, v4, :cond_26

    iget v1, p0, Lcom/coremobility/j/a;->r:I

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v1, p0, Lcom/coremobility/j/a;->t:Z

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :cond_26
    iget-object v1, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    :goto_2c
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_d3

    iget-object v1, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    :goto_35
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v1, p0, Lcom/coremobility/j/a;->q:I

    if-ne v1, v4, :cond_84

    iget-object v1, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_d7

    iget-object v1, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    :goto_42
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    :goto_4b
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_df

    iget-object v1, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    :goto_54
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    :goto_5d
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    if-eqz v1, :cond_e7

    iget-object v1, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    :goto_66
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    if-eqz v1, :cond_eb

    iget-object v1, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    :goto_6f
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-eqz v1, :cond_ee

    iget-object v1, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    :goto_78
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    :goto_81
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_84
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    new-instance v1, Lcom/coremobility/integration/n;

    invoke-direct {v1}, Lcom/coremobility/integration/n;-><init>()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v1, Lcom/coremobility/integration/n;->b:[B

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iput v2, v1, Lcom/coremobility/integration/n;->a:I

    iget-object v2, p0, Lcom/coremobility/j/a;->a:Lcom/coremobility/integration/b/c;

    const/16 v3, 0x1004

    iget-object v4, v1, Lcom/coremobility/integration/n;->b:[B

    iget v1, v1, Lcom/coremobility/integration/n;->a:I

    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/coremobility/integration/b/c;->a(II[BI)Z

    move-result v1

    if-nez v1, :cond_cd

    const/16 v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail db-item save, db-id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_cd
    const/4 v0, 0x1

    :goto_ce
    return v0

    :cond_cf
    const-string v1, ""

    goto/16 :goto_2c

    :cond_d3
    const-string v1, ""

    goto/16 :goto_35

    :cond_d7
    const-string v1, ""

    goto/16 :goto_42

    :cond_db
    const-string v1, ""

    goto/16 :goto_4b

    :cond_df
    const-string v1, ""

    goto/16 :goto_54

    :cond_e3
    const-string v1, ""

    goto/16 :goto_5d

    :cond_e7
    const-string v1, ""

    goto/16 :goto_66

    :cond_eb
    const-string v1, ""

    goto :goto_6f

    :cond_ee
    const-string v1, ""

    goto :goto_78

    :cond_f1
    const-string v1, ""
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_f3} :catch_f4

    goto :goto_81

    :catch_f4
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fail db-item save\', db-id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ce
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/16 v9, 0x10

    const/16 v8, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/j/a;->u:I

    if-ne v0, v1, :cond_4c

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    iget-object v0, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_368

    :cond_2a
    move v0, v1

    :goto_2b
    iput-object p1, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    iget v3, p0, Lcom/coremobility/j/a;->q:I

    if-ne v3, v1, :cond_4e

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Basic"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_35f

    :goto_42
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4c
    move v0, v2

    goto :goto_b

    :cond_4e
    iget v3, p0, Lcom/coremobility/j/a;->q:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_35a

    if-eqz v0, :cond_11c

    iget-object v3, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    if-eqz v3, :cond_32d

    iget-object v3, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    const-string v4, "md5-sess"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32d

    move v3, v1

    :goto_64
    iget-object v4, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    if-eqz v4, :cond_330

    move v4, v1

    :goto_69
    invoke-static {v4}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v4, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    if-eqz v4, :cond_333

    move v4, v1

    :goto_71
    invoke-static {v4}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v4, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    if-eqz v4, :cond_336

    move v4, v1

    :goto_79
    invoke-static {v4}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v4, Lcom/coremobility/integration/g/b;

    invoke-direct {v4}, Lcom/coremobility/integration/g/b;-><init>()V

    iput-object v4, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    new-array v4, v9, [B

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v6, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget-object v7, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v5}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v6, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget-object v7, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v5}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v6, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget-object v7, p0, Lcom/coremobility/j/a;->j:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v5, v4}, Lcom/coremobility/integration/g/b;->a([B)I

    if-eqz v3, :cond_116

    iget-object v3, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    if-eqz v3, :cond_339

    move v3, v1

    :goto_ce
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v3, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    if-eqz v3, :cond_33c

    move v3, v1

    :goto_d6
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v3, Lcom/coremobility/integration/g/b;

    invoke-direct {v3}, Lcom/coremobility/integration/g/b;-><init>()V

    iput-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v3, v4, v9}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v3}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v3}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v3, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v3, v4}, Lcom/coremobility/integration/g/b;->a([B)I

    :cond_116
    invoke-static {v4}, Lcom/coremobility/j/a;->a([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coremobility/j/a;->o:Ljava/lang/String;

    :cond_11c
    if-eqz p3, :cond_138

    if-eqz p4, :cond_138

    iget-object v3, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    if-eqz v3, :cond_138

    iget-object v3, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    if-eqz v3, :cond_138

    iget-object v3, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_138

    iget-object v3, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_365

    :cond_138
    move v3, v1

    :goto_139
    iput-object p3, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-eqz v4, :cond_362

    iget-object v4, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_362

    iget v4, p0, Lcom/coremobility/j/a;->r:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/coremobility/j/a;->r:I

    iget-object v4, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    const-string v5, "response"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_15f
    if-nez v0, :cond_16f

    if-nez v3, :cond_16f

    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3e

    :cond_16f
    if-nez v4, :cond_33f

    move v0, v1

    :goto_172
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_342

    move v0, v1

    :goto_17a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_345

    move v0, v1

    :goto_182
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->o:Ljava/lang/String;

    if-eqz v0, :cond_348

    iget-object v0, p0, Lcom/coremobility/j/a;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_348

    move v0, v1

    :goto_192
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_34b

    move v0, v1

    :goto_19a
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/integration/g/b;

    invoke-direct {v0}, Lcom/coremobility/integration/g/b;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    new-array v3, v9, [B

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->g:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    if-eqz v4, :cond_1dd

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v8}, Lcom/coremobility/integration/g/b;->a([BI)V

    :cond_1dd
    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/g/b;->a([B)I

    invoke-static {v3}, Lcom/coremobility/j/a;->a([B)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_34e

    move v0, v1

    :goto_1ef
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/integration/g/b;

    invoke-direct {v0}, Lcom/coremobility/integration/g/b;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->o:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_274

    iget v0, p0, Lcom/coremobility/j/a;->r:I

    if-eqz v0, :cond_351

    move v0, v1

    :goto_228
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_354

    move v0, v1

    :goto_230
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/a;->r:I

    invoke-static {v0}, Lcom/coremobility/g/l;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v5, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    array-length v6, v0

    invoke-virtual {v5, v0, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    iget-object v5, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/g/b;->a()V

    :cond_274
    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4, v8}, Lcom/coremobility/integration/g/b;->a([BI)V

    iget-object v0, p0, Lcom/coremobility/j/a;->b:Lcom/coremobility/integration/g/b;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/g/b;->a([B)I

    invoke-static {v3}, Lcom/coremobility/j/a;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/a;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/j/a;->p:Ljava/lang/String;

    if-eqz v0, :cond_357

    iget-object v0, p0, Lcom/coremobility/j/a;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v8, :cond_357

    move v0, v1

    :goto_295
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Digest"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v0, "username"

    iget-object v3, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v4, "=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "realm"

    iget-object v3, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nonce"

    iget-object v3, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uri"

    iget-object v3, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "response"

    iget-object v3, p0, Lcom/coremobility/j/a;->p:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2f3

    iget-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f3

    const-string v0, "algorithm"

    iget-object v3, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f3
    iget-object v0, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    if-eqz v0, :cond_306

    iget-object v0, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_306

    const-string v0, "opaque"

    iget-object v3, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_306
    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3e

    const-string v0, "cnonce"

    iget-object v3, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "qop"

    iget-object v3, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nc"

    iget v3, p0, Lcom/coremobility/j/a;->r:I

    invoke-static {v3}, Lcom/coremobility/g/l;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/coremobility/j/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e

    :cond_32d
    move v3, v2

    goto/16 :goto_64

    :cond_330
    move v4, v2

    goto/16 :goto_69

    :cond_333
    move v4, v2

    goto/16 :goto_71

    :cond_336
    move v4, v2

    goto/16 :goto_79

    :cond_339
    move v3, v2

    goto/16 :goto_ce

    :cond_33c
    move v3, v2

    goto/16 :goto_d6

    :cond_33f
    move v0, v2

    goto/16 :goto_172

    :cond_342
    move v0, v2

    goto/16 :goto_17a

    :cond_345
    move v0, v2

    goto/16 :goto_182

    :cond_348
    move v0, v2

    goto/16 :goto_192

    :cond_34b
    move v0, v2

    goto/16 :goto_19a

    :cond_34e
    move v0, v2

    goto/16 :goto_1ef

    :cond_351
    move v0, v2

    goto/16 :goto_228

    :cond_354
    move v0, v2

    goto/16 :goto_230

    :cond_357
    move v0, v2

    goto/16 :goto_295

    :cond_35a
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto/16 :goto_3e

    :cond_35f
    move v1, v2

    goto/16 :goto_42

    :cond_362
    move v4, v2

    goto/16 :goto_15f

    :cond_365
    move v3, v2

    goto/16 :goto_139

    :cond_368
    move v0, v2

    goto/16 :goto_2b
.end method

.method public final a()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/coremobility/j/a;->u:I

    if-ne v2, v0, :cond_2c

    :goto_6
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/j/a;->d:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_29

    const/16 v0, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT%d \'stale\' irrelevant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    iget-boolean v0, p0, Lcom/coremobility/j/a;->t:Z

    return v0

    :cond_2c
    move v0, v1

    goto :goto_6
.end method

.method public final a(I)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/j/a;->u:I

    if-nez v0, :cond_25

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v1, p0, Lcom/coremobility/j/a;->u:I

    invoke-static {}, Lcom/coremobility/integration/b/c;->a()Lcom/coremobility/integration/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/a;->a:Lcom/coremobility/integration/b/c;

    iput v2, p0, Lcom/coremobility/j/a;->q:I

    iput v2, p0, Lcom/coremobility/j/a;->r:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/j/a;->s:I

    iput-boolean v2, p0, Lcom/coremobility/j/a;->t:Z

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v1, 0x2

    iput v1, p0, Lcom/coremobility/j/a;->u:I

    :cond_24
    return v0

    :cond_25
    move v0, v2

    goto :goto_7
.end method

.method public final a(Ljava/lang/String;I)Z
    .registers 12

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/16 v7, 0x2f

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x191

    if-eq p2, v0, :cond_12

    const/16 v0, 0x197

    if-eq p2, v0, :cond_12

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_95

    :cond_12
    move v0, v2

    :goto_13
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/j/a;->u:I

    if-nez v0, :cond_98

    move v0, v2

    :goto_1b
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v2, p0, Lcom/coremobility/j/a;->u:I

    invoke-static {}, Lcom/coremobility/integration/b/c;->a()Lcom/coremobility/integration/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/a;->a:Lcom/coremobility/integration/b/c;

    iput v1, p0, Lcom/coremobility/j/a;->q:I

    iput v1, p0, Lcom/coremobility/j/a;->r:I

    iput p2, p0, Lcom/coremobility/j/a;->s:I

    iput-boolean v1, p0, Lcom/coremobility/j/a;->t:Z

    const-string v0, "Basic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iput v2, p0, Lcom/coremobility/j/a;->q:I

    const/4 v0, 0x6

    :goto_39
    iput-object v3, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    move v3, v0

    :cond_44
    :goto_44
    if-lez v3, :cond_203

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_203

    const-string v0, "$="

    invoke-static {p1, v0, v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x22

    if-ne v0, v5, :cond_cb

    const-string v0, "$\""

    add-int/lit8 v5, v3, 0x1

    invoke-static {p1, v0, v5}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    const-string v5, ","

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_7a

    add-int/lit8 v3, v3, 0x1

    :cond_7a
    :goto_7a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "realm"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    iput-object v0, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    goto :goto_44

    :cond_95
    move v0, v1

    goto/16 :goto_13

    :cond_98
    move v0, v1

    goto :goto_1b

    :cond_9a
    const-string v0, "Digest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a6

    iput v8, p0, Lcom/coremobility/j/a;->q:I

    const/4 v0, 0x7

    goto :goto_39

    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " unk auth-scheme"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_c6
    if-nez v1, :cond_ca

    iput v8, p0, Lcom/coremobility/j/a;->u:I

    :cond_ca
    return v1

    :cond_cb
    const-string v0, "$,"

    invoke-static {p1, v0, v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d7

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_d7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    goto :goto_7a

    :cond_df
    const-string v5, "uri"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f3

    iput-object v0, p0, Lcom/coremobility/j/a;->e:Ljava/lang/String;

    goto/16 :goto_44

    :cond_f3
    const-string v5, "nonce"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_107

    iput-object v0, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    goto/16 :goto_44

    :cond_107
    const-string v5, "nc"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11f

    invoke-static {v0}, Lcom/coremobility/g/l;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/j/a;->r:I

    goto/16 :goto_44

    :cond_11f
    const-string v5, "algorithm"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_133

    iput-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    goto/16 :goto_44

    :cond_133
    const-string v5, "qop"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_159

    const-string v4, "auth"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "auth"

    iput-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    goto/16 :goto_44

    :cond_159
    const-string v5, "opaque"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16d

    iput-object v0, p0, Lcom/coremobility/j/a;->i:Ljava/lang/String;

    goto/16 :goto_44

    :cond_16d
    const-string v5, "response"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_181

    iput-object v0, p0, Lcom/coremobility/j/a;->p:Ljava/lang/String;

    goto/16 :goto_44

    :cond_181
    const-string v5, "username"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_195

    iput-object v0, p0, Lcom/coremobility/j/a;->m:Ljava/lang/String;

    goto/16 :goto_44

    :cond_195
    const-string v5, "stale"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ef

    const-string v4, "true"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b9

    iput-boolean v2, p0, Lcom/coremobility/j/a;->t:Z

    goto/16 :goto_44

    :cond_1b9
    const-string v4, "false"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    iput-boolean v1, p0, Lcom/coremobility/j/a;->t:Z

    goto/16 :goto_44

    :cond_1cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+HT"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'stale\' val unk"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_44

    :cond_1ef
    const-string v5, "domain"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    iput-object v0, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    goto/16 :goto_44

    :cond_203
    iget-object v0, p0, Lcom/coremobility/j/a;->l:Ljava/lang/String;

    if-nez v0, :cond_229

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " no \'realm\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_229
    iget v0, p0, Lcom/coremobility/j/a;->q:I

    if-ne v0, v2, :cond_230

    move v1, v2

    goto/16 :goto_c6

    :cond_230
    iget-object v0, p0, Lcom/coremobility/j/a;->h:Ljava/lang/String;

    if-nez v0, :cond_256

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " no \'nonce\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_256
    iget-object v0, p0, Lcom/coremobility/j/a;->k:Ljava/lang/String;

    if-nez v0, :cond_27c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "unk qop option(s)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_27c
    iget-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2d2

    iget-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    const-string v3, "md5"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d2

    iget-object v0, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    const-string v3, "md5-sess"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+HT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " algorithm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/j/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "unk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_2d2
    iget-object v0, p0, Lcom/coremobility/j/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_2f6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+HT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/coremobility/j/a;->s:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ig \'domain\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2f6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, v2}, Lcom/coremobility/g/l;->a(JZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/j/a;->n:Ljava/lang/String;

    move v1, v2

    goto/16 :goto_c6
.end method

.method public final b(I)Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/coremobility/j/a;->u:I

    if-ne v1, v0, :cond_d

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0, p1}, Lcom/coremobility/j/a;->e(I)Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

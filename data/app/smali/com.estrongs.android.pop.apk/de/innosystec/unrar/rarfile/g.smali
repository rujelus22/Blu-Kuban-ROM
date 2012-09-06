.class public Lde/innosystec/unrar/rarfile/g;
.super Lde/innosystec/unrar/rarfile/c;


# instance fields
.field private g:Lorg/apache/commons/logging/Log;

.field private h:I

.field private i:Lde/innosystec/unrar/rarfile/HostSystem;

.field private j:I

.field private k:I

.field private l:B

.field private m:B

.field private n:S

.field private o:I

.field private p:I

.field private q:[B

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:[B

.field private u:[B

.field private v:Ljava/util/Date;

.field private w:J

.field private x:J

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lde/innosystec/unrar/rarfile/c;[BLde/innosystec/unrar/a;)V
    .registers 14

    const/16 v9, 0x20

    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lde/innosystec/unrar/rarfile/c;-><init>(Lde/innosystec/unrar/rarfile/c;)V

    const-class v0, Lde/innosystec/unrar/rarfile/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->g:Lorg/apache/commons/logging/Log;

    new-array v0, v7, [B

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->u:[B

    iput v3, p0, Lde/innosystec/unrar/rarfile/g;->z:I

    invoke-static {p2, v2}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->h:I

    const/4 v0, 0x4

    aget-byte v0, p2, v0

    invoke-static {v0}, Lde/innosystec/unrar/rarfile/HostSystem;->findHostSystem(B)Lde/innosystec/unrar/rarfile/HostSystem;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->i:Lde/innosystec/unrar/rarfile/HostSystem;

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->j:I

    invoke-static {p2, v8}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->k:I

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->l:B

    const/16 v1, 0xd

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->l:B

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->m:B

    const/16 v1, 0xe

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->m:B

    const/16 v0, 0xf

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->b([BI)S

    move-result v0

    iput-short v0, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    const/16 v0, 0x11

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->y:I

    const/16 v0, 0x15

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->A()Z

    move-result v1

    if-eqz v1, :cond_17d

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->o:I

    const/16 v0, 0x19

    invoke-static {p2, v0}, Lde/innosystec/unrar/b/b;->c([BI)I

    move-result v0

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->p:I

    const/16 v0, 0x1d

    :cond_79
    :goto_79
    iget-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    iget v1, p0, Lde/innosystec/unrar/rarfile/g;->o:I

    int-to-long v5, v1

    or-long/2addr v3, v5

    iput-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    iget-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    shl-long/2addr v3, v9

    iput-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    iget-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->l()I

    move-result v1

    int-to-long v5, v1

    or-long/2addr v3, v5

    iput-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    iget-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    iget v1, p0, Lde/innosystec/unrar/rarfile/g;->p:I

    int-to-long v5, v1

    or-long/2addr v3, v5

    iput-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    iget-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    shl-long/2addr v3, v9

    iput-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    iget-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    iget v1, p0, Lde/innosystec/unrar/rarfile/g;->h:I

    int-to-long v5, v1

    or-long/2addr v3, v5

    iput-wide v3, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    iget-short v1, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    const/16 v3, 0x1000

    if-le v1, v3, :cond_18e

    const/16 v1, 0x1000

    :goto_ad
    iput-short v1, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    iget-short v1, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    new-array v1, v1, [B

    iput-object v1, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    move v1, v0

    move v0, v2

    :goto_b7
    iget-short v3, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    if-lt v0, v3, :cond_192

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->y()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->x()Z

    move-result v0

    if-eqz v0, :cond_1b2

    const-string v0, ""

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    move v0, v2

    :goto_d0
    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    array-length v3, v3

    if-ge v0, v3, :cond_db

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_19e

    :cond_db
    new-array v3, v0, [B

    iget-object v4, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    array-length v5, v3

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_e3
    invoke-virtual {p3}, Lde/innosystec/unrar/a;->h()Z

    move-result v4

    if-eqz v4, :cond_f7

    array-length v4, v3

    invoke-static {v3, v4}, Lcom/estrongs/android/a/a;->a([BI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f7

    invoke-virtual {p3, v4}, Lde/innosystec/unrar/a;->a(Ljava/lang/String;)V

    :cond_f7
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p3}, Lde/innosystec/unrar/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;
    :try_end_102
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e3 .. :try_end_102} :catch_1a2

    :goto_102
    iget-short v3, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    if-eq v0, v3, :cond_1ac

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    invoke-static {v3, v0}, Lde/innosystec/unrar/rarfile/h;->b([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    :cond_110
    :goto_110
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    if-eqz v0, :cond_120

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    const-string v3, "\\?"

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    :cond_120
    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->NewSubHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    iget-byte v3, p0, Lde/innosystec/unrar/rarfile/g;->d:B

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    if-eqz v0, :cond_16c

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->f:S

    add-int/lit8 v0, v0, -0x20

    iget-short v3, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->z()Z

    move-result v3

    if-eqz v3, :cond_200

    add-int/lit8 v0, v0, -0x8

    move v3, v0

    :goto_13a
    if-lez v3, :cond_143

    new-array v0, v3, [B

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    move v0, v2

    :goto_141
    if-lt v0, v3, :cond_1e8

    :cond_143
    sget-object v0, Lde/innosystec/unrar/rarfile/m;->f:Lde/innosystec/unrar/rarfile/m;

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    invoke-virtual {v0, v3}, Lde/innosystec/unrar/rarfile/m;->a([B)Z

    move-result v0

    if-eqz v0, :cond_16c

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    aget-byte v0, v0, v7

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    aget-byte v3, v3, v8

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v0, v3

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    const/16 v4, 0xb

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v0, v3

    iput v0, p0, Lde/innosystec/unrar/rarfile/g;->z:I

    :cond_16c
    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->z()Z

    move-result v0

    if-eqz v0, :cond_174

    :goto_172
    if-lt v2, v7, :cond_1f4

    :cond_174
    iget v0, p0, Lde/innosystec/unrar/rarfile/g;->k:I

    invoke-direct {p0, v0}, Lde/innosystec/unrar/rarfile/g;->a(I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->v:Ljava/util/Date;

    return-void

    :cond_17d
    iput v2, p0, Lde/innosystec/unrar/rarfile/g;->o:I

    iput v2, p0, Lde/innosystec/unrar/rarfile/g;->p:I

    iget v1, p0, Lde/innosystec/unrar/rarfile/g;->h:I

    if-ne v1, v3, :cond_79

    iput v3, p0, Lde/innosystec/unrar/rarfile/g;->h:I

    const v1, 0x7fffffff

    iput v1, p0, Lde/innosystec/unrar/rarfile/g;->p:I

    goto/16 :goto_79

    :cond_18e
    iget-short v1, p0, Lde/innosystec/unrar/rarfile/g;->n:S

    goto/16 :goto_ad

    :cond_192
    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    aget-byte v4, p2, v1

    aput-byte v4, v3, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b7

    :cond_19e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d0

    :catch_1a2
    move-exception v4

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    goto/16 :goto_102

    :cond_1ac
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    goto/16 :goto_110

    :cond_1b2
    :try_start_1b2
    invoke-virtual {p3}, Lde/innosystec/unrar/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1ca

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    array-length v3, v3

    invoke-static {v0, v3}, Lcom/estrongs/android/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ca

    invoke-virtual {p3, v0}, Lde/innosystec/unrar/a;->a(Ljava/lang/String;)V

    :cond_1ca
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    invoke-virtual {p3}, Lde/innosystec/unrar/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;
    :try_end_1d7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b2 .. :try_end_1d7} :catch_1dd

    :goto_1d7
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->s:Ljava/lang/String;

    goto/16 :goto_110

    :catch_1dd
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lde/innosystec/unrar/rarfile/g;->q:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    goto :goto_1d7

    :cond_1e8
    iget-object v4, p0, Lde/innosystec/unrar/rarfile/g;->t:[B

    aget-byte v5, p2, v1

    aput-byte v5, v4, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_141

    :cond_1f4
    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->u:[B

    aget-byte v3, p2, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_172

    :cond_200
    move v3, v0

    goto/16 :goto_13a
.end method

.method private a(I)Ljava/util/Date;
    .registers 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x19

    add-int/lit16 v2, v2, 0x7bc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x15

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit8 v2, v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    ushr-int/lit8 v2, p1, 0xb

    and-int/lit8 v2, v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    ushr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    and-int/lit8 v2, p1, 0x1f

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Z
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public B()Z
    .registers 3

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit16 v0, v0, 0xe0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public j()V
    .registers 5

    invoke-super {p0}, Lde/innosystec/unrar/rarfile/c;->j()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unpSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nHostOS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/innosystec/unrar/rarfile/g;->i:Lde/innosystec/unrar/rarfile/HostSystem;

    invoke-virtual {v2}, Lde/innosystec/unrar/rarfile/HostSystem;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nMDate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/innosystec/unrar/rarfile/g;->v:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nFileName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nunpMethod: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->o()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nunpVersion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->q()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nfullpackedsize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->r()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nfullunpackedsize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisEncrypted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->w()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisfileHeader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->y()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisSolid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->v()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisSplitafter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->t()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisSplitBefore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->u()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nunpSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->p()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ndataSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisUnicode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->x()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nhasVolumeNumber: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nhasArchiveDataCRC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nhasSalt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->z()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nhasEncryptVersions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nisSubBlock: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/innosystec/unrar/rarfile/g;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lde/innosystec/unrar/rarfile/g;->g:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/rarfile/g;->j:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lde/innosystec/unrar/rarfile/g;->r:Ljava/lang/String;

    return-object v0
.end method

.method public o()B
    .registers 2

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->m:B

    return v0
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lde/innosystec/unrar/rarfile/g;->h:I

    return v0
.end method

.method public q()B
    .registers 2

    iget-byte v0, p0, Lde/innosystec/unrar/rarfile/g;->l:B

    return v0
.end method

.method public r()J
    .registers 3

    iget-wide v0, p0, Lde/innosystec/unrar/rarfile/g;->w:J

    return-wide v0
.end method

.method public s()J
    .registers 3

    iget-wide v0, p0, Lde/innosystec/unrar/rarfile/g;->x:J

    return-wide v0
.end method

.method public t()Z
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public v()Z
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public w()Z
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public x()Z
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public y()Z
    .registers 3

    sget-object v0, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->FileHeader:Lde/innosystec/unrar/rarfile/UnrarHeadertype;

    iget-byte v1, p0, Lde/innosystec/unrar/rarfile/g;->d:B

    invoke-virtual {v0, v1}, Lde/innosystec/unrar/rarfile/UnrarHeadertype;->equals(B)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .registers 2

    iget-short v0, p0, Lde/innosystec/unrar/rarfile/g;->e:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

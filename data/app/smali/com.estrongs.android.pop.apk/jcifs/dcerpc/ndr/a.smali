.class public Ljcifs/dcerpc/ndr/a;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/util/HashMap;

.field public c:[B

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljcifs/dcerpc/ndr/a;


# direct methods
.method public constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    iput p2, p0, Ljcifs/dcerpc/ndr/a;->e:I

    iput p2, p0, Ljcifs/dcerpc/ndr/a;->d:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/ndr/a;->f:I

    iput-object p0, p0, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    return-void
.end method

.method private a(Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Ljcifs/dcerpc/ndr/a;->b:Ljava/util/HashMap;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/ndr/a;->b:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/dcerpc/ndr/a;->a:I

    :cond_e
    iget-object v0, p0, Ljcifs/dcerpc/ndr/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/dcerpc/ndr/b;

    if-nez v0, :cond_2c

    new-instance v0, Ljcifs/dcerpc/ndr/b;

    invoke-direct {v0}, Ljcifs/dcerpc/ndr/b;-><init>()V

    iget v1, p0, Ljcifs/dcerpc/ndr/a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljcifs/dcerpc/ndr/a;->a:I

    iput v1, v0, Ljcifs/dcerpc/ndr/b;->a:I

    iput-object p1, v0, Ljcifs/dcerpc/ndr/b;->b:Ljava/lang/Object;

    iget-object v1, p0, Ljcifs/dcerpc/ndr/a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    iget v0, v0, Ljcifs/dcerpc/ndr/b;->a:I

    return v0
.end method


# virtual methods
.method public a(I)Ljcifs/dcerpc/ndr/a;
    .registers 5

    new-instance v0, Ljcifs/dcerpc/ndr/a;

    iget-object v1, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/a;->d:I

    invoke-direct {v0, v1, v2}, Ljcifs/dcerpc/ndr/a;-><init>([BI)V

    iput p1, v0, Ljcifs/dcerpc/ndr/a;->e:I

    iget-object v1, p0, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iput-object v1, v0, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    return-object v0
.end method

.method public a()V
    .registers 2

    iget v0, p0, Ljcifs/dcerpc/ndr/a;->d:I

    iput v0, p0, Ljcifs/dcerpc/ndr/a;->e:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/ndr/a;->f:I

    iput-object p0, p0, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .registers 4

    if-nez p1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    :goto_6
    return-void

    :cond_7
    packed-switch p2, :pswitch_data_1c

    goto :goto_6

    :pswitch_b
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    goto :goto_6

    :pswitch_13
    invoke-direct {p0, p1}, Ljcifs/dcerpc/ndr/a;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/a;->h(I)V

    goto :goto_6

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/a;->e(I)I

    iget v0, p0, Ljcifs/dcerpc/ndr/a;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    invoke-static {v2, v3, v0}, Ljcifs/util/b;->b(I[BI)I

    add-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    invoke-static {v6, v2, v0}, Ljcifs/util/b;->b(I[BI)I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    invoke-static {v2, v3, v0}, Ljcifs/util/b;->b(I[BI)I

    add-int/lit8 v0, v0, 0x4

    :try_start_24
    const-string v2, "UTF-16LE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    mul-int/lit8 v5, v1, 0x2

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_32} :catch_49

    :goto_32
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte v6, v1, v0

    iget-object v0, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    add-int/lit8 v1, v2, 0x1

    aput-byte v6, v0, v2

    iget v0, p0, Ljcifs/dcerpc/ndr/a;->e:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/a;->d(I)V

    return-void

    :catch_49
    move-exception v2

    goto :goto_32
.end method

.method public b()I
    .registers 2

    iget v0, p0, Ljcifs/dcerpc/ndr/a;->e:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Ljcifs/dcerpc/ndr/a;->e:I

    return-void
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iget v0, v0, Ljcifs/dcerpc/ndr/a;->f:I

    return v0
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iput p1, v0, Ljcifs/dcerpc/ndr/a;->f:I

    return-void
.end method

.method public d()I
    .registers 3

    iget-object v0, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/a;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljcifs/dcerpc/ndr/a;->d(I)V

    return v0
.end method

.method public d(I)V
    .registers 5

    iget v0, p0, Ljcifs/dcerpc/ndr/a;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Ljcifs/dcerpc/ndr/a;->e:I

    iget v0, p0, Ljcifs/dcerpc/ndr/a;->e:I

    iget v1, p0, Ljcifs/dcerpc/ndr/a;->d:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iget v1, v1, Ljcifs/dcerpc/ndr/a;->f:I

    if-le v0, v1, :cond_19

    iget-object v0, p0, Ljcifs/dcerpc/ndr/a;->g:Ljcifs/dcerpc/ndr/a;

    iget v1, p0, Ljcifs/dcerpc/ndr/a;->e:I

    iget v2, p0, Ljcifs/dcerpc/ndr/a;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Ljcifs/dcerpc/ndr/a;->f:I

    :cond_19
    return-void
.end method

.method public e()I
    .registers 4

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/a;->e(I)I

    iget-object v0, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/a;->e:I

    invoke-static {v0, v1}, Ljcifs/util/b;->c([BI)S

    move-result v0

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/a;->d(I)V

    return v0
.end method

.method public e(I)I
    .registers 5

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Ljcifs/dcerpc/ndr/a;->e:I

    iget v2, p0, Ljcifs/dcerpc/ndr/a;->d:I

    sub-int/2addr v1, v2

    add-int v2, v1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/a;->d(I)V

    return v0
.end method

.method public f()I
    .registers 4

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/a;->e(I)I

    iget-object v0, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/a;->e:I

    invoke-static {v0, v1}, Ljcifs/util/b;->d([BI)I

    move-result v0

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/a;->d(I)V

    return v0
.end method

.method public f(I)V
    .registers 5

    iget-object v0, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/a;->e:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/a;->d(I)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/ndr/a;->e(I)I

    iget v0, p0, Ljcifs/dcerpc/ndr/a;->e:I

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    invoke-static {v2, v0}, Ljcifs/util/b;->d([BI)I

    move-result v3

    add-int/lit8 v2, v0, 0xc

    if-eqz v3, :cond_3b

    add-int/lit8 v0, v3, -0x1

    mul-int/lit8 v3, v0, 0x2

    if-ltz v3, :cond_1c

    const v0, 0xffff

    if-le v3, v0, :cond_2e

    :cond_1c
    :try_start_1c
    new-instance v0, Ljcifs/dcerpc/ndr/NdrException;

    const-string v3, "invalid array conformance"

    invoke-direct {v0, v3}, Ljcifs/dcerpc/ndr/NdrException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    move-object v0, v1

    move v1, v2

    :goto_27
    iget v2, p0, Ljcifs/dcerpc/ndr/a;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljcifs/dcerpc/ndr/a;->d(I)V

    return-object v0

    :cond_2e
    :try_start_2e
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    const-string v5, "UTF-16LE"

    invoke-direct {v0, v4, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_37} :catch_24

    add-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v2

    goto :goto_27

    :cond_3b
    move-object v0, v1

    move v1, v2

    goto :goto_27
.end method

.method public g(I)V
    .registers 6

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljcifs/dcerpc/ndr/a;->e(I)I

    int-to-short v0, p1

    iget-object v1, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    iget v2, p0, Ljcifs/dcerpc/ndr/a;->e:I

    invoke-static {v0, v1, v2}, Ljcifs/util/b;->b(S[BI)I

    invoke-virtual {p0, v3}, Ljcifs/dcerpc/ndr/a;->d(I)V

    return-void
.end method

.method public h(I)V
    .registers 5

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/a;->e(I)I

    iget-object v0, p0, Ljcifs/dcerpc/ndr/a;->c:[B

    iget v1, p0, Ljcifs/dcerpc/ndr/a;->e:I

    invoke-static {p1, v0, v1}, Ljcifs/util/b;->b(I[BI)I

    invoke-virtual {p0, v2}, Ljcifs/dcerpc/ndr/a;->d(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/dcerpc/ndr/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/dcerpc/ndr/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/dcerpc/ndr/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

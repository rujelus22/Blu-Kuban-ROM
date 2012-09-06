.class public abstract Ljcifs/dcerpc/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljcifs/dcerpc/c;


# static fields
.field private static g:I


# instance fields
.field protected a:Ljcifs/dcerpc/b;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected f:Ljcifs/dcerpc/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput v0, Ljcifs/dcerpc/e;->g:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10b8

    iput v0, p0, Ljcifs/dcerpc/e;->b:I

    iget v0, p0, Ljcifs/dcerpc/e;->b:I

    iput v0, p0, Ljcifs/dcerpc/e;->c:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/e;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/dcerpc/e;->f:Ljcifs/dcerpc/h;

    return-void
.end method

.method protected static a(Ljava/lang/String;)Ljcifs/dcerpc/b;
    .registers 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v4, 0x0

    move-object v0, v2

    move-object v1, v2

    move-object v3, v2

    move v5, v4

    move v6, v4

    :cond_b
    aget-char v8, v7, v4

    packed-switch v6, :pswitch_data_94

    :pswitch_10
    array-length v4, v7

    :cond_11
    :goto_11
    add-int/lit8 v4, v4, 0x1

    array-length v8, v7

    if-lt v4, v8, :cond_b

    if-eqz v0, :cond_1c

    iget-object v1, v0, Ljcifs/dcerpc/b;->c:Ljava/lang/String;

    if-nez v1, :cond_92

    :cond_1c
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid binding URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_35
    const/16 v9, 0x3a

    if-ne v8, v9, :cond_11

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    goto :goto_11

    :pswitch_41
    const/16 v9, 0x5c

    if-ne v8, v9, :cond_48

    add-int/lit8 v5, v4, 0x1

    goto :goto_11

    :cond_48
    const/4 v6, 0x2

    :pswitch_49
    const/16 v9, 0x5b

    if-ne v8, v9, :cond_11

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, "127.0.0.1"

    :cond_5d
    new-instance v0, Ljcifs/dcerpc/b;

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ljcifs/dcerpc/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x5

    goto :goto_11

    :pswitch_6a
    const/16 v9, 0x3d

    if-ne v8, v9, :cond_79

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v4, 0x1

    goto :goto_11

    :cond_79
    const/16 v9, 0x2c

    if-eq v8, v9, :cond_81

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_11

    :cond_81
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    if-nez v1, :cond_8d

    const-string v1, "endpoint"

    :cond_8d
    invoke-virtual {v0, v1, v8}, Ljcifs/dcerpc/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_11

    :cond_92
    return-object v0

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_35
        :pswitch_41
        :pswitch_49
        :pswitch_10
        :pswitch_10
        :pswitch_6a
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/e;
    .registers 5

    const-string v0, "ncacn_np:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljcifs/dcerpc/g;

    invoke-direct {v0, p0, p1}, Ljcifs/dcerpc/g;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-object v0

    :cond_e
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCERPC transport not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Ljcifs/dcerpc/e;->d:I

    new-instance v0, Ljcifs/dcerpc/a;

    iget-object v1, p0, Ljcifs/dcerpc/e;->a:Ljcifs/dcerpc/b;

    invoke-direct {v0, v1, p0}, Ljcifs/dcerpc/a;-><init>(Ljcifs/dcerpc/b;Ljcifs/dcerpc/e;)V

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/e;->a(Ljcifs/dcerpc/f;)V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_10

    :try_start_e
    monitor-exit p0

    return-void

    :catch_10
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/dcerpc/e;->d:I

    throw v0

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method

.method public a(Ljcifs/dcerpc/f;)V
    .registers 14

    const/16 v0, 0x18

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x0

    iget v1, p0, Ljcifs/dcerpc/e;->d:I

    if-nez v1, :cond_c

    invoke-virtual {p0}, Ljcifs/dcerpc/e;->a()V

    :cond_c
    const/4 v5, 0x1

    invoke-static {}, Ljcifs/smb/c;->a()[B

    move-result-object v1

    :try_start_11
    new-instance v7, Ljcifs/dcerpc/ndr/a;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Ljcifs/dcerpc/ndr/a;-><init>([BI)V

    const/4 v2, 0x3

    iput v2, p1, Ljcifs/dcerpc/f;->g:I

    sget v2, Ljcifs/dcerpc/e;->g:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Ljcifs/dcerpc/e;->g:I

    iput v2, p1, Ljcifs/dcerpc/f;->i:I

    invoke-virtual {p1, v7}, Ljcifs/dcerpc/f;->e(Ljcifs/dcerpc/ndr/a;)V

    iget-object v2, p0, Ljcifs/dcerpc/e;->f:Ljcifs/dcerpc/h;

    if-eqz v2, :cond_32

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljcifs/dcerpc/ndr/a;->b(I)V

    iget-object v2, p0, Ljcifs/dcerpc/e;->f:Ljcifs/dcerpc/h;

    invoke-interface {v2, v7}, Ljcifs/dcerpc/h;->a(Ljcifs/dcerpc/ndr/a;)V

    :cond_32
    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/a;->c()I

    move-result v2

    add-int/lit8 v8, v2, -0x18

    move v6, v4

    :goto_39
    if-ge v6, v8, :cond_8b

    sub-int v2, v8, v6

    add-int/lit8 v3, v2, 0x18

    iget v9, p0, Ljcifs/dcerpc/e;->b:I

    if-le v3, v9, :cond_81

    iget v2, p1, Ljcifs/dcerpc/f;->g:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p1, Ljcifs/dcerpc/f;->g:I

    iget v2, p0, Ljcifs/dcerpc/e;->b:I

    add-int/lit8 v2, v2, -0x18

    move v3, v5

    :goto_4e
    add-int/lit8 v5, v2, 0x18

    iput v5, p1, Ljcifs/dcerpc/f;->h:I

    if-lez v6, :cond_5a

    iget v5, p1, Ljcifs/dcerpc/f;->g:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p1, Ljcifs/dcerpc/f;->g:I

    :cond_5a
    iget v5, p1, Ljcifs/dcerpc/f;->g:I

    and-int/lit8 v5, v5, 0x3

    if-eq v5, v11, :cond_78

    iput v6, v7, Ljcifs/dcerpc/ndr/a;->d:I

    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/a;->a()V

    invoke-virtual {p1, v7}, Ljcifs/dcerpc/f;->c(Ljcifs/dcerpc/ndr/a;)V

    iget v5, p1, Ljcifs/dcerpc/f;->j:I

    invoke-virtual {v7, v5}, Ljcifs/dcerpc/ndr/a;->h(I)V

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljcifs/dcerpc/ndr/a;->g(I)V

    invoke-virtual {p1}, Ljcifs/dcerpc/f;->b()I

    move-result v5

    invoke-virtual {v7, v5}, Ljcifs/dcerpc/ndr/a;->g(I)V

    :cond_78
    iget v5, p1, Ljcifs/dcerpc/f;->h:I

    invoke-virtual {p0, v1, v6, v5, v3}, Ljcifs/dcerpc/e;->a([BIIZ)V

    add-int/2addr v2, v6

    move v6, v2

    move v5, v3

    goto :goto_39

    :cond_81
    iget v3, p1, Ljcifs/dcerpc/f;->g:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p1, Ljcifs/dcerpc/f;->g:I

    iput v2, p1, Ljcifs/dcerpc/f;->j:I

    move v3, v4

    goto :goto_4e

    :cond_8b
    invoke-virtual {p0, v1, v5}, Ljcifs/dcerpc/e;->a([BZ)V

    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/a;->a()V

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Ljcifs/dcerpc/ndr/a;->b(I)V

    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/a;->e()I

    move-result v2

    invoke-virtual {v7, v2}, Ljcifs/dcerpc/ndr/a;->c(I)V

    iget-object v2, p0, Ljcifs/dcerpc/e;->f:Ljcifs/dcerpc/h;

    if-eqz v2, :cond_a6

    iget-object v2, p0, Ljcifs/dcerpc/e;->f:Ljcifs/dcerpc/h;

    invoke-interface {v2, v7}, Ljcifs/dcerpc/h;->b(Ljcifs/dcerpc/ndr/a;)V

    :cond_a6
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljcifs/dcerpc/ndr/a;->b(I)V

    invoke-virtual {p1, v7}, Ljcifs/dcerpc/f;->d(Ljcifs/dcerpc/ndr/a;)V

    iget v2, p1, Ljcifs/dcerpc/f;->f:I

    if-ne v2, v10, :cond_ba

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/f;->b(I)Z

    move-result v2

    if-nez v2, :cond_ba

    iget v0, p1, Ljcifs/dcerpc/f;->h:I

    :cond_ba
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_bc
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljcifs/dcerpc/f;->b(I)Z

    move-result v4

    if-nez v4, :cond_10a

    if-nez v3, :cond_cf

    iget v2, p0, Ljcifs/dcerpc/e;->c:I

    new-array v3, v2, [B

    new-instance v2, Ljcifs/dcerpc/ndr/a;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljcifs/dcerpc/ndr/a;-><init>([BI)V

    :cond_cf
    invoke-virtual {p0, v3, v5}, Ljcifs/dcerpc/e;->a([BZ)V

    invoke-virtual {v2}, Ljcifs/dcerpc/ndr/a;->a()V

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljcifs/dcerpc/ndr/a;->b(I)V

    invoke-virtual {v2}, Ljcifs/dcerpc/ndr/a;->e()I

    move-result v4

    invoke-virtual {v2, v4}, Ljcifs/dcerpc/ndr/a;->c(I)V

    iget-object v4, p0, Ljcifs/dcerpc/e;->f:Ljcifs/dcerpc/h;

    if-eqz v4, :cond_ea

    iget-object v4, p0, Ljcifs/dcerpc/e;->f:Ljcifs/dcerpc/h;

    invoke-interface {v4, v2}, Ljcifs/dcerpc/h;->b(Ljcifs/dcerpc/ndr/a;)V

    :cond_ea
    invoke-virtual {v2}, Ljcifs/dcerpc/ndr/a;->a()V

    invoke-virtual {p1, v2}, Ljcifs/dcerpc/f;->d(Ljcifs/dcerpc/ndr/a;)V

    iget v4, p1, Ljcifs/dcerpc/f;->h:I

    add-int/lit8 v6, v4, -0x18

    add-int v4, v0, v6

    array-length v7, v1

    if-le v4, v7, :cond_103

    add-int v4, v0, v6

    new-array v4, v4, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    :cond_103
    const/16 v4, 0x18

    invoke-static {v3, v4, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v6

    goto :goto_bc

    :cond_10a
    new-instance v0, Ljcifs/dcerpc/ndr/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljcifs/dcerpc/ndr/a;-><init>([BI)V

    invoke-virtual {p1, v0}, Ljcifs/dcerpc/f;->f(Ljcifs/dcerpc/ndr/a;)V
    :try_end_113
    .catchall {:try_start_11 .. :try_end_113} :catchall_11d

    invoke-static {v1}, Ljcifs/smb/c;->a([B)V

    invoke-virtual {p1}, Ljcifs/dcerpc/f;->a()Ljcifs/dcerpc/DcerpcException;

    move-result-object v0

    if-eqz v0, :cond_122

    throw v0

    :catchall_11d
    move-exception v0

    invoke-static {v1}, Ljcifs/smb/c;->a([B)V

    throw v0

    :cond_122
    return-void
.end method

.method protected abstract a([BIIZ)V
.end method

.method protected abstract a([BZ)V
.end method

.method public abstract b()V
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/dcerpc/e;->a:Ljcifs/dcerpc/b;

    invoke-virtual {v0}, Ljcifs/dcerpc/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

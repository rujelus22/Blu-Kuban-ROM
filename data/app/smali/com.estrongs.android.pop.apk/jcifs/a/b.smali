.class public Ljcifs/a/b;
.super Ljcifs/a/a;


# static fields
.field private static final b:I

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "jcifs.smb.client.useUnicode"

    invoke-static {v2, v0}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_21

    :goto_a
    or-int/lit16 v0, v0, 0x200

    sput v0, Ljcifs/a/b;->b:I

    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/a/b;->c:Ljava/lang/String;

    :try_start_16
    invoke-static {}, Ljcifs/netbios/g;->a()Ljcifs/netbios/g;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/netbios/g;->g()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_1d} :catch_23

    move-result-object v0

    :goto_1e
    sput-object v0, Ljcifs/a/b;->d:Ljava/lang/String;

    return-void

    :cond_21
    const/4 v0, 0x2

    goto :goto_a

    :catch_23
    move-exception v0

    move-object v0, v1

    goto :goto_1e
.end method

.method public constructor <init>()V
    .registers 4

    invoke-static {}, Ljcifs/a/b;->f()I

    move-result v0

    invoke-static {}, Ljcifs/a/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljcifs/a/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljcifs/a/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljcifs/a/a;-><init>()V

    invoke-static {}, Ljcifs/a/b;->f()I

    move-result v0

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljcifs/a/b;->a(I)V

    invoke-virtual {p0, p2}, Ljcifs/a/b;->a(Ljava/lang/String;)V

    if-nez p3, :cond_14

    invoke-static {}, Ljcifs/a/b;->h()Ljava/lang/String;

    move-result-object p3

    :cond_14
    invoke-virtual {p0, p3}, Ljcifs/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static f()I
    .registers 1

    sget v0, Ljcifs/a/b;->b:I

    return v0
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/a/b;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/b;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()[B
    .registers 11

    const/16 v0, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {p0}, Ljcifs/a/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljcifs/a/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljcifs/a/b;->a()I

    move-result v5

    const/4 v1, 0x0

    new-array v1, v1, [B

    if-eqz v4, :cond_74

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_74

    or-int/lit16 v3, v5, 0x1000

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljcifs/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v4, v1

    move v5, v3

    move v3, v2

    :goto_2c
    const/4 v1, 0x0

    new-array v1, v1, [B

    if-eqz v6, :cond_79

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_79

    or-int/lit16 v3, v5, 0x2000

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljcifs/a/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_45
    if-eqz v2, :cond_4c

    array-length v0, v4

    add-int/lit8 v0, v0, 0x20

    array-length v5, v1

    add-int/2addr v0, v5

    :cond_4c
    new-array v0, v0, [B

    sget-object v5, Ljcifs/a/b;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Ljcifs/a/b;->a([BII)V

    const/16 v5, 0xc

    invoke-static {v0, v5, v3}, Ljcifs/a/b;->a([BII)V

    if-eqz v2, :cond_73

    const/16 v2, 0x10

    const/16 v3, 0x20

    invoke-static {v0, v2, v3, v4}, Ljcifs/a/b;->a([BII[B)V

    const/16 v2, 0x18

    array-length v3, v4

    add-int/lit8 v3, v3, 0x20

    invoke-static {v0, v2, v3, v1}, Ljcifs/a/b;->a([BII[B)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_73} :catch_7f

    :cond_73
    return-object v0

    :cond_74
    and-int/lit16 v4, v5, -0x1001

    move v5, v4

    move-object v4, v1

    goto :goto_2c

    :cond_79
    and-int/lit16 v2, v5, -0x2001

    move v9, v3

    move v3, v2

    move v2, v9

    goto :goto_45

    :catch_7f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljcifs/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/a/b;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type1Message[suppliedDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_17

    const-string v0, "null"

    :cond_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",suppliedWorkstation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_48

    const-string v0, "null"

    :goto_25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/a/b;->a()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_48
    move-object v0, v1

    goto :goto_25
.end method

.class public Ljcifs/a/c;
.super Ljcifs/a/a;


# static fields
.field private static final b:I

.field private static final c:Ljava/lang/String;

.field private static final d:[B


# instance fields
.field private e:[B

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    const-string v0, "jcifs.smb.client.useUnicode"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_69

    move v0, v1

    :goto_c
    or-int/lit16 v0, v0, 0x200

    sput v0, Ljcifs/a/c;->b:I

    const-string v0, "jcifs.smb.client.domain"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/a/c;->c:Ljava/lang/String;

    new-array v0, v5, [B

    sget-object v3, Ljcifs/a/c;->c:Ljava/lang/String;

    if-eqz v3, :cond_27

    :try_start_1f
    sget-object v3, Ljcifs/a/c;->c:Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_73

    move-result-object v0

    :cond_27
    :goto_27
    array-length v7, v0

    new-array v3, v5, [B

    :try_start_2a
    invoke-static {}, Ljcifs/netbios/g;->a()Ljcifs/netbios/g;

    move-result-object v4

    invoke-virtual {v4}, Ljcifs/netbios/g;->g()Ljava/lang/String;
    :try_end_31
    .catch Ljava/net/UnknownHostException; {:try_start_2a .. :try_end_31} :catch_6f

    move-result-object v4

    if-eqz v4, :cond_3a

    :try_start_34
    const-string v6, "UTF-16LE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_71
    .catch Ljava/net/UnknownHostException; {:try_start_34 .. :try_end_39} :catch_6f

    move-result-object v3

    :cond_3a
    :goto_3a
    array-length v8, v3

    if-lez v7, :cond_6b

    add-int/lit8 v4, v7, 0x4

    move v6, v4

    :goto_40
    if-lez v8, :cond_6d

    add-int/lit8 v4, v8, 0x4

    :goto_44
    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x4

    new-array v4, v4, [B

    if-lez v7, :cond_75

    invoke-static {v4, v5, v2}, Ljcifs/a/c;->b([BII)V

    invoke-static {v4, v2, v7}, Ljcifs/a/c;->b([BII)V

    const/4 v2, 0x4

    invoke-static {v0, v5, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v7, 0x4

    :goto_57
    if-lez v8, :cond_66

    invoke-static {v4, v0, v1}, Ljcifs/a/c;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0, v8}, Ljcifs/a/c;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v3, v5, v4, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_66
    sput-object v4, Ljcifs/a/c;->d:[B

    return-void

    :cond_69
    move v0, v2

    goto :goto_c

    :cond_6b
    move v6, v5

    goto :goto_40

    :cond_6d
    move v4, v5

    goto :goto_44

    :catch_6f
    move-exception v4

    goto :goto_3a

    :catch_71
    move-exception v4

    goto :goto_3a

    :catch_73
    move-exception v3

    goto :goto_27

    :cond_75
    move v0, v5

    goto :goto_57
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Ljcifs/a/c;->g()I

    move-result v0

    invoke-direct {p0, v0, v1, v1}, Ljcifs/a/c;-><init>(I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I[BLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljcifs/a/a;-><init>()V

    invoke-virtual {p0, p1}, Ljcifs/a/c;->a(I)V

    invoke-virtual {p0, p2}, Ljcifs/a/c;->a([B)V

    invoke-virtual {p0, p3}, Ljcifs/a/c;->a(Ljava/lang/String;)V

    if-eqz p3, :cond_15

    invoke-static {}, Ljcifs/a/c;->h()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/a/c;->b([B)V

    :cond_15
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljcifs/a/a;-><init>()V

    invoke-direct {p0, p1}, Ljcifs/a/c;->d([B)V

    return-void
.end method

.method private d([B)V
    .registers 11

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/16 v8, 0x28

    const/16 v2, 0x20

    const/16 v7, 0x8

    move v0, v4

    :goto_a
    if-ge v0, v7, :cond_1f

    aget-byte v1, p1, v0

    sget-object v5, Ljcifs/a/c;->a:[B

    aget-byte v5, v5, v0

    if-eq v1, v5, :cond_1c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not an NTLMSSP message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    invoke-static {p1, v7}, Ljcifs/a/c;->a([BI)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a Type 2 message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljcifs/a/c;->a([BI)I

    move-result v5

    invoke-virtual {p0, v5}, Ljcifs/a/c;->a(I)V

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {p1, v1}, Ljcifs/a/c;->c([BI)[B

    move-result-object v6

    array-length v1, v6

    if-eqz v1, :cond_4d

    new-instance v1, Ljava/lang/String;

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_6b

    const-string v0, "UTF-16LE"

    :goto_49
    invoke-direct {v1, v6, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    :cond_4d
    invoke-virtual {p0, v0}, Ljcifs/a/c;->a(Ljava/lang/String;)V

    move v0, v3

    :goto_51
    if-ge v0, v2, :cond_5f

    aget-byte v1, p1, v0

    if-eqz v1, :cond_70

    new-array v0, v7, [B

    invoke-static {p1, v3, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Ljcifs/a/c;->a([B)V

    :cond_5f
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljcifs/a/c;->a([BI)I

    move-result v1

    if-eq v1, v2, :cond_6a

    array-length v0, p1

    if-ne v0, v2, :cond_73

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    invoke-static {}, Ljcifs/a/c;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_73
    move v0, v2

    :goto_74
    if-ge v0, v8, :cond_82

    aget-byte v3, p1, v0

    if-eqz v3, :cond_92

    new-array v0, v7, [B

    invoke-static {p1, v2, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Ljcifs/a/c;->c([B)V

    :cond_82
    if-eq v1, v8, :cond_6a

    array-length v0, p1

    if-eq v0, v8, :cond_6a

    invoke-static {p1, v8}, Ljcifs/a/c;->c([BI)[B

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_6a

    invoke-virtual {p0, v0}, Ljcifs/a/c;->b([B)V

    goto :goto_6a

    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_74
.end method

.method public static g()I
    .registers 1

    sget v0, Ljcifs/a/c;->b:I

    return v0
.end method

.method public static h()[B
    .registers 1

    sget-object v0, Ljcifs/a/c;->d:[B

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/c;->f:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/c;->e:[B

    return-void
.end method

.method public b([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/c;->h:[B

    return-void
.end method

.method public c([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/a/c;->g:[B

    return-void
.end method

.method public c()[B
    .registers 2

    iget-object v0, p0, Ljcifs/a/c;->e:[B

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()[B
    .registers 2

    iget-object v0, p0, Ljcifs/a/c;->h:[B

    return-object v0
.end method

.method public f()[B
    .registers 2

    iget-object v0, p0, Ljcifs/a/c;->g:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljcifs/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/a/c;->c()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/a/c;->f()[B

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/a/c;->e()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type2Message[target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",challenge="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_68

    const-string v0, "null"

    :goto_29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v2, :cond_83

    const-string v0, "null"

    :goto_37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",targetInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v3, :cond_9e

    const-string v0, "null"

    :goto_45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/a/c;->a()I

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

    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method

.class public Ljcifs/netbios/b;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "jcifs.netbios.scope"

    invoke-static {v0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/b;->f:Ljava/lang/String;

    const-string v0, "jcifs.encoding"

    const-string v1, "file.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/b;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    const/16 v2, 0xf

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_10

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/netbios/b;->b:Ljava/lang/String;

    iput p2, p0, Ljcifs/netbios/b;->d:I

    if-eqz p3, :cond_25

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    :goto_20
    iput-object p3, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    iput v1, p0, Ljcifs/netbios/b;->e:I

    return-void

    :cond_25
    sget-object p3, Ljcifs/netbios/b;->f:Ljava/lang/String;

    goto :goto_20
.end method


# virtual methods
.method a([BI)I
    .registers 7

    const/16 v0, 0x20

    aput-byte v0, p1, p2

    :try_start_4
    iget-object v0, p0, Ljcifs/netbios/b;->b:Ljava/lang/String;

    sget-object v1, Ljcifs/netbios/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_d
    array-length v2, v1

    if-ge v0, v2, :cond_31

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    aget-byte v3, v1, v0

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_31
    :goto_31
    const/16 v1, 0xf

    if-ge v0, v1, :cond_4a

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p2

    const/16 v2, 0x43

    aput-byte v2, p1, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    const/16 v2, 0x41

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_4a
    add-int/lit8 v0, p2, 0x1f

    iget v1, p0, Ljcifs/netbios/b;->d:I

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x41

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1f

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ljcifs/netbios/b;->d:I

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x41

    int-to-byte v1, v1

    aput-byte v1, p1, v0
    :try_end_64
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_64} :catch_6d

    :goto_64
    add-int/lit8 v0, p2, 0x21

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/b;->c([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    return v0

    :catch_6d
    move-exception v0

    goto :goto_64
.end method

.method b([BI)I
    .registers 9

    const/16 v2, 0xf

    const/4 v0, 0x0

    const/16 v1, 0x21

    new-array v3, v1, [B

    move v1, v0

    move v0, v2

    :goto_9
    if-ge v1, v2, :cond_3a

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x41

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    aget-byte v4, v3, v1

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v5, v5, -0x41

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    aget-byte v4, v3, v1

    const/16 v5, 0x20

    if-eq v4, v5, :cond_37

    add-int/lit8 v0, v1, 0x1

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_3a
    :try_start_3a
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v4, Ljcifs/netbios/b;->a:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Ljcifs/netbios/b;->b:Ljava/lang/String;
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3a .. :try_end_44} :catch_6a

    :goto_44
    add-int/lit8 v0, p2, 0x1f

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x41

    shl-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/netbios/b;->d:I

    iget v0, p0, Ljcifs/netbios/b;->d:I

    add-int/lit8 v1, p2, 0x1f

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x41

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    iput v0, p0, Ljcifs/netbios/b;->d:I

    add-int/lit8 v0, p2, 0x21

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/b;->d([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x21

    return v0

    :catch_6a
    move-exception v0

    goto :goto_44
.end method

.method c([BI)I
    .registers 9

    const/16 v5, 0x2e

    const/4 v1, 0x0

    iget-object v0, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    if-nez v0, :cond_b

    aput-byte v1, p1, p2

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    add-int/lit8 v0, p2, 0x1

    aput-byte v5, p1, p2

    :try_start_f
    iget-object v2, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    sget-object v3, Ljcifs/netbios/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v3, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_21} :catch_50

    :goto_21
    iget-object v2, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, -0x2

    iget-object v2, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v4, v0, v2

    move v2, v0

    move v0, v1

    :goto_38
    aget-byte v3, p1, v2

    if-ne v3, v5, :cond_4d

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    move v0, v1

    :goto_40
    add-int/lit8 v3, v2, -0x1

    if-gt v2, v4, :cond_52

    iget-object v0, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_a

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :catch_50
    move-exception v2

    goto :goto_21

    :cond_52
    move v2, v3

    goto :goto_38
.end method

.method d([BI)I
    .registers 9

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    :try_start_d
    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljcifs/netbios/b;->a:Ljava/lang/String;

    invoke-direct {v3, p1, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/2addr v0, v1

    move v1, v0

    :goto_1b
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_36

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljcifs/netbios/b;->a:Ljava/lang/String;

    invoke-direct {v4, p1, v0, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1b

    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_3c} :catch_3e

    :goto_3c
    sub-int/2addr v0, p2

    goto :goto_c

    :catch_3e
    move-exception v1

    goto :goto_3c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljcifs/netbios/b;

    if-nez v2, :cond_8

    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    check-cast p1, Ljcifs/netbios/b;

    iget-object v2, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    if-nez v2, :cond_24

    iget-object v2, p1, Ljcifs/netbios/b;->c:Ljava/lang/String;

    if-nez v2, :cond_24

    iget-object v2, p0, Ljcifs/netbios/b;->b:Ljava/lang/String;

    iget-object v3, p1, Ljcifs/netbios/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget v2, p0, Ljcifs/netbios/b;->d:I

    iget v3, p1, Ljcifs/netbios/b;->d:I

    if-eq v2, v3, :cond_7

    :cond_22
    move v0, v1

    goto :goto_7

    :cond_24
    iget-object v2, p0, Ljcifs/netbios/b;->b:Ljava/lang/String;

    iget-object v3, p1, Ljcifs/netbios/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v2, p0, Ljcifs/netbios/b;->d:I

    iget v3, p1, Ljcifs/netbios/b;->d:I

    if-ne v2, v3, :cond_3e

    iget-object v2, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    iget-object v3, p1, Ljcifs/netbios/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_3e
    move v0, v1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 4

    const v2, 0x1003f

    iget-object v0, p0, Ljcifs/netbios/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljcifs/netbios/b;->d:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/netbios/b;->e:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x2e

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Ljcifs/netbios/b;->b:Ljava/lang/String;

    if-nez v0, :cond_3d

    const-string v0, "null"

    :cond_f
    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Ljcifs/netbios/b;->d:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_38

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Ljcifs/netbios/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_38
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3d
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    aput-char v3, v2, v4

    aput-char v3, v2, v5

    const/16 v0, 0xe

    aput-char v3, v2, v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_f
.end method

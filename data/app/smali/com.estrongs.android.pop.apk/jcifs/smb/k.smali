.class Ljcifs/smb/k;
.super Ljcifs/smb/aq;


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WrLehDO\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WrLehDz\u0000B16BBDz\u0000"

    aput-object v2, v0, v1

    sput-object v0, Ljcifs/smb/k;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/smb/aq;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/k;->c:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/k;->b:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/k;->d:I

    const/16 v0, 0x25

    iput-byte v0, p0, Ljcifs/smb/k;->g:B

    const/16 v0, 0x68

    iput-byte v0, p0, Ljcifs/smb/k;->S:B

    const-string v0, "\\PIPE\\LANMAN"

    iput-object v0, p0, Ljcifs/smb/k;->T:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Ljcifs/smb/k;->N:I

    const/16 v0, 0x4000

    iput v0, p0, Ljcifs/smb/k;->O:I

    iput-byte v1, p0, Ljcifs/smb/k;->P:B

    iput v1, p0, Ljcifs/smb/k;->R:I

    const/16 v0, 0x1388

    iput v0, p0, Ljcifs/smb/k;->Q:I

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .registers 3

    invoke-super {p0}, Ljcifs/smb/aq;->e()V

    iput-object p2, p0, Ljcifs/smb/k;->c:Ljava/lang/String;

    return-void
.end method

.method c([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method d([BI)I
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Ljcifs/smb/k;->S:B

    const/16 v3, 0x68

    if-ne v0, v3, :cond_55

    move v0, v1

    :goto_9
    :try_start_9
    sget-object v3, Ljcifs/smb/k;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_12} :catch_57

    move-result-object v3

    iget-byte v4, p0, Ljcifs/smb/k;->S:B

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/k;->a(J[BI)V

    add-int/lit8 v4, p2, 0x2

    array-length v5, v3

    invoke-static {v3, v1, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v4

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/k;->a(J[BI)V

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Ljcifs/smb/k;->O:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/k;->a(J[BI)V

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Ljcifs/smb/k;->d:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/k;->b(J[BI)V

    add-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Ljcifs/smb/k;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p1, v3, v1}, Ljcifs/smb/k;->a(Ljava/lang/String;[BIZ)I

    move-result v4

    add-int/2addr v3, v4

    if-ne v0, v2, :cond_59

    iget-object v0, p0, Ljcifs/smb/k;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v3, v1}, Ljcifs/smb/k;->a(Ljava/lang/String;[BIZ)I

    move-result v0

    add-int/2addr v0, v3

    :goto_52
    sub-int v1, v0, p2

    :goto_54
    return v1

    :cond_55
    move v0, v2

    goto :goto_9

    :catch_57
    move-exception v0

    goto :goto_54

    :cond_59
    move v0, v3

    goto :goto_52
.end method

.method e([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetServerEnum2["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljcifs/smb/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/k;->T:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",serverTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Ljcifs/smb/k;->d:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_40

    const-string v0, "SV_TYPE_ALL"

    :goto_2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_40
    const-string v0, "SV_TYPE_DOMAIN_ENUM"

    goto :goto_2e
.end method

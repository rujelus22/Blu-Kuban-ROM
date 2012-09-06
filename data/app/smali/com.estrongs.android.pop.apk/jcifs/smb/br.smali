.class Ljcifs/smb/br;
.super Ljcifs/smb/ar;


# instance fields
.field S:I

.field T:I

.field U:[Ljcifs/smb/bs;

.field a:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/ar;-><init>()V

    const/16 v0, 0x10

    iput-byte v0, p0, Ljcifs/smb/br;->L:B

    return-void
.end method


# virtual methods
.method a([BII)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method b([BII)I
    .registers 8

    invoke-static {p1, p2}, Ljcifs/smb/br;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/br;->a:I

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Ljcifs/smb/br;->m:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    iget v1, p0, Ljcifs/smb/br;->a:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljcifs/smb/br;->a:I

    :cond_16
    invoke-static {p1, v0}, Ljcifs/smb/br;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/br;->S:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/br;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/br;->T:I

    add-int/lit8 v1, v0, 0x4

    iget v0, p0, Ljcifs/smb/br;->S:I

    new-array v0, v0, [Ljcifs/smb/bs;

    iput-object v0, p0, Ljcifs/smb/br;->U:[Ljcifs/smb/bs;

    const/4 v0, 0x0

    :goto_2d
    iget v2, p0, Ljcifs/smb/br;->S:I

    if-ge v0, v2, :cond_46

    iget-object v2, p0, Ljcifs/smb/br;->U:[Ljcifs/smb/bs;

    new-instance v3, Ljcifs/smb/bs;

    invoke-direct {v3, p0}, Ljcifs/smb/bs;-><init>(Ljcifs/smb/br;)V

    aput-object v3, v2, v0

    iget-object v2, p0, Ljcifs/smb/br;->U:[Ljcifs/smb/bs;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, v1, p3}, Ljcifs/smb/bs;->a([BII)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_46
    sub-int v0, v1, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2GetDfsReferralResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pathConsumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/br;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",numReferrals="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/br;->S:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/br;->T:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

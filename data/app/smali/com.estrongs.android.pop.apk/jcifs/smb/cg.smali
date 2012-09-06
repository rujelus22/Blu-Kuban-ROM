.class Ljcifs/smb/cg;
.super Ljcifs/smb/aq;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(I[BII)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/smb/aq;-><init>()V

    iput p1, p0, Ljcifs/smb/cg;->b:I

    iput-object p2, p0, Ljcifs/smb/cg;->a:[B

    iput p3, p0, Ljcifs/smb/cg;->c:I

    iput p4, p0, Ljcifs/smb/cg;->d:I

    const/16 v0, 0x25

    iput-byte v0, p0, Ljcifs/smb/cg;->g:B

    const/16 v0, 0x26

    iput-byte v0, p0, Ljcifs/smb/cg;->S:B

    iput v1, p0, Ljcifs/smb/cg;->N:I

    const v0, 0xffff

    iput v0, p0, Ljcifs/smb/cg;->O:I

    iput-byte v1, p0, Ljcifs/smb/cg;->P:B

    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/cg;->R:I

    const-string v0, "\\PIPE\\"

    iput-object v0, p0, Ljcifs/smb/cg;->T:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method c([BI)I
    .registers 7

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/cg;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput-byte v2, p1, v0

    iget v0, p0, Ljcifs/smb/cg;->b:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/cg;->a(J[BI)V

    add-int/lit8 v0, v1, 0x2

    const/4 v0, 0x4

    return v0
.end method

.method d([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method e([BI)I
    .registers 6

    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Ljcifs/smb/cg;->d:I

    if-ge v0, v1, :cond_16

    sget-object v0, Ljcifs/smb/cg;->e:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_14

    sget-object v0, Ljcifs/smb/cg;->e:Ljcifs/util/e;

    const-string v1, "TransTransactNamedPipe data too long for buffer"

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Ljcifs/smb/cg;->a:[B

    iget v1, p0, Ljcifs/smb/cg;->c:I

    iget v2, p0, Ljcifs/smb/cg;->d:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/cg;->d:I

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransTransactNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/cg;->b:I

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

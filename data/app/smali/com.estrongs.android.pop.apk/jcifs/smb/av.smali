.class Ljcifs/smb/av;
.super Ljcifs/smb/t;


# instance fields
.field private D:I

.field private E:[B

.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/t;-><init>()V

    const/16 v0, 0xb

    iput-byte v0, p0, Ljcifs/smb/av;->g:B

    return-void
.end method


# virtual methods
.method a(IJI[BII)V
    .registers 10

    iput p1, p0, Ljcifs/smb/av;->a:I

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Ljcifs/smb/av;->c:I

    iput p4, p0, Ljcifs/smb/av;->d:I

    iput-object p5, p0, Ljcifs/smb/av;->E:[B

    iput p6, p0, Ljcifs/smb/av;->D:I

    iput p7, p0, Ljcifs/smb/av;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/av;->B:Ljcifs/smb/u;

    return-void
.end method

.method n([BI)I
    .registers 6

    iget v0, p0, Ljcifs/smb/av;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/av;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Ljcifs/smb/av;->b:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/av;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/av;->c:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/av;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/av;->d:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/av;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method o([BI)I
    .registers 7

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    aput-byte v1, p1, p2

    iget v1, p0, Ljcifs/smb/av;->b:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/av;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ljcifs/smb/av;->E:[B

    iget v2, p0, Ljcifs/smb/av;->D:I

    iget v3, p0, Ljcifs/smb/av;->b:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljcifs/smb/av;->b:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method p([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method q([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComWrite["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/av;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/av;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/av;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/av;->d:I

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

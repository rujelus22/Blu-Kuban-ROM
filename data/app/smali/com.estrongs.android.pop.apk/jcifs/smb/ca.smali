.class Ljcifs/smb/ca;
.super Ljcifs/smb/aq;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:J


# direct methods
.method constructor <init>(IIJJ)V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0}, Ljcifs/smb/aq;-><init>()V

    iput p1, p0, Ljcifs/smb/ca;->a:I

    iput p2, p0, Ljcifs/smb/ca;->b:I

    iput-wide p3, p0, Ljcifs/smb/ca;->c:J

    iput-wide p5, p0, Ljcifs/smb/ca;->d:J

    const/16 v0, 0x32

    iput-byte v0, p0, Ljcifs/smb/ca;->g:B

    const/16 v0, 0x8

    iput-byte v0, p0, Ljcifs/smb/ca;->S:B

    const/4 v0, 0x6

    iput v0, p0, Ljcifs/smb/ca;->N:I

    iput v1, p0, Ljcifs/smb/ca;->O:I

    iput-byte v1, p0, Ljcifs/smb/ca;->P:B

    return-void
.end method


# virtual methods
.method c([BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/ca;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method d([BI)I
    .registers 6

    iget v0, p0, Ljcifs/smb/ca;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ca;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    const-wide/16 v1, 0x101

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ca;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ca;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method e([BI)I
    .registers 8

    const-wide/16 v3, 0x0

    iget-wide v0, p0, Ljcifs/smb/ca;->c:J

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ca;->d(J[BI)V

    add-int/lit8 v0, p2, 0x8

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ca;->c(J[BI)V

    add-int/lit8 v0, v0, 0x8

    iget-wide v1, p0, Ljcifs/smb/ca;->d:J

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ca;->d(J[BI)V

    add-int/lit8 v0, v0, 0x8

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ca;->c(J[BI)V

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Ljcifs/smb/ca;->b:I

    or-int/lit16 v1, v1, 0x80

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ca;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ca;->c(J[BI)V

    add-int/lit8 v0, v0, 0x6

    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2SetFileInformation["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ca;->a:I

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

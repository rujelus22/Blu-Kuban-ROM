.class Ljcifs/smb/w;
.super Ljcifs/smb/t;


# instance fields
.field private a:I

.field private b:J


# direct methods
.method constructor <init>(IJ)V
    .registers 5

    invoke-direct {p0}, Ljcifs/smb/t;-><init>()V

    iput p1, p0, Ljcifs/smb/w;->a:I

    iput-wide p2, p0, Ljcifs/smb/w;->b:J

    const/4 v0, 0x4

    iput-byte v0, p0, Ljcifs/smb/w;->g:B

    return-void
.end method


# virtual methods
.method n([BI)I
    .registers 6

    iget v0, p0, Ljcifs/smb/w;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/w;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, Ljcifs/smb/w;->b:J

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/w;->e(J[BI)V

    const/4 v0, 0x6

    return v0
.end method

.method o([BI)I
    .registers 4

    const/4 v0, 0x0

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
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComClose["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/w;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/w;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

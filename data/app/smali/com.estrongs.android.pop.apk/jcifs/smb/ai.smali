.class Ljcifs/smb/ai;
.super Ljcifs/smb/b;


# instance fields
.field D:I

.field E:I

.field F:I

.field G:I

.field H:I

.field I:J

.field b:I

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/smb/b;-><init>()V

    return-void
.end method


# virtual methods
.method n([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method o([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method p([BI)I
    .registers 6

    invoke-static {p1, p2}, Ljcifs/smb/ai;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ai;->b:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ai;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ai;->c:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ai;->j([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/ai;->I:J

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ai;->g([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ai;->d:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ai;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ai;->D:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ai;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ai;->E:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ai;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ai;->F:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ai;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ai;->G:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ai;->g([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ai;->H:I

    add-int/lit8 v0, v0, 0x6

    sub-int/2addr v0, p2

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

    const-string v2, "SmbComOpenAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ai;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileAttributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ai;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/ai;->I:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ai;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",grantedAccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ai;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ai;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",deviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ai;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ai;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",serverFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ai;->H:I

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

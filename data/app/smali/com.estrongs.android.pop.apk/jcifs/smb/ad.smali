.class Ljcifs/smb/ad;
.super Ljcifs/smb/b;


# instance fields
.field D:I

.field E:I

.field F:I

.field G:J

.field H:J

.field I:J

.field J:J

.field K:J

.field L:J

.field M:Z

.field N:Z

.field b:B

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

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    iput-byte v1, p0, Ljcifs/smb/ad;->b:B

    invoke-static {p1, v0}, Ljcifs/smb/ad;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ad;->c:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ad;->g([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ad;->d:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ad;->i([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/ad;->G:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/ad;->i([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/ad;->H:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/ad;->i([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/ad;->I:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/ad;->i([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/ad;->J:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/ad;->g([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ad;->D:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ad;->h([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/ad;->K:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/ad;->h([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/ad;->L:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/ad;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ad;->E:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ad;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ad;->F:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_6c

    const/4 v0, 0x1

    :goto_67
    iput-boolean v0, p0, Ljcifs/smb/ad;->M:Z

    sub-int v0, v1, p2

    return v0

    :cond_6c
    const/4 v0, 0x0

    goto :goto_67
.end method

.method q([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComNTCreateAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",oplockLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljcifs/smb/ad;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ad;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",createAction=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ad;->d:I

    invoke-static {v2, v5}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",creationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Ljcifs/smb/ad;->G:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastAccessTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Ljcifs/smb/ad;->H:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Ljcifs/smb/ad;->I:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",changeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Ljcifs/smb/ad;->J:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extFileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ad;->D:I

    invoke-static {v2, v5}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allocationSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/ad;->K:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",endOfFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/ad;->L:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ad;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",deviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ad;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",directory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/ad;->M:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

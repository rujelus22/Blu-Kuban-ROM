.class Ljcifs/smb/ak;
.super Ljcifs/smb/t;

# interfaces
.implements Ljcifs/smb/j;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method constructor <init>(J)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljcifs/smb/t;-><init>()V

    iput v2, p0, Ljcifs/smb/ak;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/ak;->b:J

    iput v2, p0, Ljcifs/smb/ak;->d:I

    iput-wide p1, p0, Ljcifs/smb/ak;->c:J

    const/16 v0, 0x8

    iput-byte v0, p0, Ljcifs/smb/ak;->g:B

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Ljcifs/smb/ak;->a:I

    return v0
.end method

.method public b()J
    .registers 5

    iget-wide v0, p0, Ljcifs/smb/ak;->b:J

    iget-wide v2, p0, Ljcifs/smb/ak;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c()J
    .registers 5

    iget-wide v0, p0, Ljcifs/smb/ak;->b:J

    iget-wide v2, p0, Ljcifs/smb/ak;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d()J
    .registers 3

    iget v0, p0, Ljcifs/smb/ak;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

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

    iget v0, p0, Ljcifs/smb/ak;->r:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-static {p1, p2}, Ljcifs/smb/ak;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ak;->a:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ak;->j([BI)J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/ak;->b:J

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ak;->g([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ak;->d:I

    const/16 v0, 0x14

    goto :goto_5
.end method

.method q([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComQueryInformationResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ak;->a:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Ljcifs/smb/ak;->b:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ak;->d:I

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

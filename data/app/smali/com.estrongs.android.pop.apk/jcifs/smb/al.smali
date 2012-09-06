.class Ljcifs/smb/al;
.super Ljcifs/smb/b;


# static fields
.field private static final D:I


# instance fields
.field private E:J

.field private F:I

.field private G:I

.field b:I

.field c:I

.field d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "jcifs.smb.client.ReadAndX.Close"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/al;->D:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljcifs/smb/b;-><init>(Ljcifs/smb/t;)V

    const/16 v0, 0x2e

    iput-byte v0, p0, Ljcifs/smb/al;->g:B

    const/4 v0, -0x1

    iput v0, p0, Ljcifs/smb/al;->G:I

    return-void
.end method

.method constructor <init>(IJILjcifs/smb/t;)V
    .registers 7

    invoke-direct {p0, p5}, Ljcifs/smb/b;-><init>(Ljcifs/smb/t;)V

    iput p1, p0, Ljcifs/smb/al;->F:I

    iput-wide p2, p0, Ljcifs/smb/al;->E:J

    iput p4, p0, Ljcifs/smb/al;->c:I

    iput p4, p0, Ljcifs/smb/al;->b:I

    const/16 v0, 0x2e

    iput-byte v0, p0, Ljcifs/smb/al;->g:B

    const/4 v0, -0x1

    iput v0, p0, Ljcifs/smb/al;->G:I

    return-void
.end method


# virtual methods
.method a(B)I
    .registers 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    sget v0, Ljcifs/smb/al;->D:I

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method n([BI)I
    .registers 7

    iget v0, p0, Ljcifs/smb/al;->F:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/al;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v1, p0, Ljcifs/smb/al;->E:J

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/al;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/al;->b:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/al;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/al;->c:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/al;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/al;->G:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/al;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/al;->d:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/al;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-wide v1, p0, Ljcifs/smb/al;->E:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/al;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

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

    const-string v2, "SmbComReadAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/al;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/al;->E:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/al;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",minCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/al;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",openTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/al;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/al;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/al;->E:J

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

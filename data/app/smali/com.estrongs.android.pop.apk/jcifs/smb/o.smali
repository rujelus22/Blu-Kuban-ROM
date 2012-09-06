.class Ljcifs/smb/o;
.super Ljcifs/smb/ar;


# instance fields
.field private S:I

.field private a:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/smb/ar;-><init>()V

    return-void
.end method


# virtual methods
.method a([BII)I
    .registers 6

    invoke-static {p1, p2}, Ljcifs/smb/o;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/o;->P:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/o;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/o;->a:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/o;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/o;->Q:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/o;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/o;->S:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0
.end method

.method b([BII)I
    .registers 10

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljcifs/smb/o;->t:Z

    iget v0, p0, Ljcifs/smb/o;->Q:I

    new-array v0, v0, [Ljcifs/smb/bi;

    iput-object v0, p0, Ljcifs/smb/o;->R:[Ljcifs/smb/h;

    move v0, v1

    move v2, p2

    :goto_b
    iget v3, p0, Ljcifs/smb/o;->Q:I

    if-ge v0, v3, :cond_4f

    iget-object v3, p0, Ljcifs/smb/o;->R:[Ljcifs/smb/h;

    new-instance v4, Ljcifs/smb/bi;

    invoke-direct {v4}, Ljcifs/smb/bi;-><init>()V

    aput-object v4, v3, v0

    const/16 v3, 0xd

    invoke-virtual {p0, p1, v2, v3, v1}, Ljcifs/smb/o;->a([BIIZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Ljcifs/smb/bi;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0xe

    invoke-static {p1, v2}, Ljcifs/smb/o;->f([BI)I

    move-result v3

    iput v3, v4, Ljcifs/smb/bi;->c:I

    add-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, Ljcifs/smb/o;->g([BI)I

    move-result v3

    add-int/lit8 v2, v2, 0x4

    const v5, 0xffff

    and-int/2addr v3, v5

    iget v5, p0, Ljcifs/smb/o;->a:I

    sub-int/2addr v3, v5

    add-int/2addr v3, p2

    const/16 v5, 0x80

    invoke-virtual {p0, p1, v3, v5, v1}, Ljcifs/smb/o;->a([BIIZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Ljcifs/smb/bi;->d:Ljava/lang/String;

    sget-object v3, Ljcifs/smb/o;->e:Ljcifs/util/e;

    sget v3, Ljcifs/util/e;->a:I

    const/4 v5, 0x4

    if-lt v3, v5, :cond_4c

    sget-object v3, Ljcifs/smb/o;->e:Ljcifs/util/e;

    invoke-virtual {v3, v4}, Ljcifs/util/e;->println(Ljava/lang/Object;)V

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_4f
    sub-int v0, v2, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetShareEnumResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/o;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",converter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/o;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",entriesReturned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/o;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalAvailableEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/o;->S:I

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

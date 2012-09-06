.class Ljcifs/smb/bn;
.super Ljcifs/smb/ar;


# instance fields
.field S:Z

.field T:I

.field U:I

.field V:I

.field a:I

.field aA:I

.field az:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/ar;-><init>()V

    const/16 v0, 0x32

    iput-byte v0, p0, Ljcifs/smb/bn;->g:B

    const/4 v0, 0x1

    iput-byte v0, p0, Ljcifs/smb/bn;->L:B

    return-void
.end method


# virtual methods
.method a([BII)I
    .registers 7

    const/4 v1, 0x1

    iget-byte v0, p0, Ljcifs/smb/bn;->L:B

    if-ne v0, v1, :cond_34

    invoke-static {p1, p2}, Ljcifs/smb/bn;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/bn;->a:I

    add-int/lit8 v0, p2, 0x2

    :goto_d
    invoke-static {p1, v0}, Ljcifs/smb/bn;->f([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/bn;->Q:I

    add-int/lit8 v2, v0, 0x2

    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_32

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Ljcifs/smb/bn;->S:Z

    add-int/lit8 v0, v2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/bn;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/bn;->T:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/bn;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/bn;->U:I

    add-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_1c

    :cond_34
    move v0, p2

    goto :goto_d
.end method

.method b([BII)I
    .registers 9

    iget v0, p0, Ljcifs/smb/bn;->U:I

    add-int/2addr v0, p2

    iput v0, p0, Ljcifs/smb/bn;->V:I

    iget v0, p0, Ljcifs/smb/bn;->Q:I

    new-array v0, v0, [Ljcifs/smb/bo;

    iput-object v0, p0, Ljcifs/smb/bn;->R:[Ljcifs/smb/h;

    const/4 v0, 0x0

    :goto_c
    iget v1, p0, Ljcifs/smb/bn;->Q:I

    if-ge v0, v1, :cond_76

    iget-object v1, p0, Ljcifs/smb/bn;->R:[Ljcifs/smb/h;

    new-instance v2, Ljcifs/smb/bo;

    invoke-direct {v2, p0}, Ljcifs/smb/bo;-><init>(Ljcifs/smb/bn;)V

    aput-object v2, v1, v0

    invoke-static {p1, p2}, Ljcifs/smb/bn;->g([BI)I

    move-result v1

    iput v1, v2, Ljcifs/smb/bo;->a:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/bn;->g([BI)I

    move-result v1

    iput v1, v2, Ljcifs/smb/bo;->b:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/bn;->i([BI)J

    move-result-wide v3

    iput-wide v3, v2, Ljcifs/smb/bo;->c:J

    add-int/lit8 v1, p2, 0x18

    invoke-static {p1, v1}, Ljcifs/smb/bn;->i([BI)J

    move-result-wide v3

    iput-wide v3, v2, Ljcifs/smb/bo;->e:J

    add-int/lit8 v1, p2, 0x28

    invoke-static {p1, v1}, Ljcifs/smb/bn;->h([BI)J

    move-result-wide v3

    iput-wide v3, v2, Ljcifs/smb/bo;->g:J

    add-int/lit8 v1, p2, 0x38

    invoke-static {p1, v1}, Ljcifs/smb/bn;->g([BI)I

    move-result v1

    iput v1, v2, Ljcifs/smb/bo;->i:I

    add-int/lit8 v1, p2, 0x3c

    invoke-static {p1, v1}, Ljcifs/smb/bn;->g([BI)I

    move-result v1

    iput v1, v2, Ljcifs/smb/bo;->j:I

    add-int/lit8 v1, p2, 0x5e

    iget v3, v2, Ljcifs/smb/bo;->j:I

    invoke-virtual {p0, p1, v1, v3}, Ljcifs/smb/bn;->d([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Ljcifs/smb/bo;->n:Ljava/lang/String;

    iget v1, p0, Ljcifs/smb/bn;->V:I

    if-lt v1, p2, :cond_70

    iget v1, v2, Ljcifs/smb/bo;->a:I

    if-eqz v1, :cond_68

    iget v1, p0, Ljcifs/smb/bn;->V:I

    iget v3, v2, Ljcifs/smb/bo;->a:I

    add-int/2addr v3, p2

    if-ge v1, v3, :cond_70

    :cond_68
    iget-object v1, v2, Ljcifs/smb/bo;->n:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/bn;->az:Ljava/lang/String;

    iget v1, v2, Ljcifs/smb/bo;->b:I

    iput v1, p0, Ljcifs/smb/bn;->aA:I

    :cond_70
    iget v1, v2, Ljcifs/smb/bo;->a:I

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_76
    iget v0, p0, Ljcifs/smb/bn;->K:I

    return v0
.end method

.method d([BII)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    iget-boolean v0, p0, Ljcifs/smb/bn;->t:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_c
    return-object v0

    :cond_d
    if-lez p3, :cond_19

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_19

    add-int/lit8 p3, p3, -0x1

    :cond_19
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljcifs/smb/t;->am:Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_20} :catch_21

    goto :goto_c

    :catch_21
    move-exception v0

    sget-object v2, Ljcifs/smb/bn;->e:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2e

    sget-object v2, Ljcifs/smb/bn;->e:Ljcifs/util/e;

    invoke-virtual {v0, v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2e
    move-object v0, v1

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-byte v0, p0, Ljcifs/smb/bn;->L:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_70

    const-string v0, "Trans2FindFirst2Response["

    :goto_7
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljcifs/smb/ar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/bn;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",searchCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/bn;->Q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",isEndOfSearch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ljcifs/smb/bn;->S:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",eaErrorOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/bn;->T:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",lastNameOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Ljcifs/smb/bn;->U:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",lastName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/bn;->az:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_70
    const-string v0, "Trans2FindNext2Response["

    goto :goto_7
.end method

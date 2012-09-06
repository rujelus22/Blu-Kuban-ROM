.class Ljcifs/smb/ac;
.super Ljcifs/smb/b;


# instance fields
.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:J

.field private J:B

.field private K:I

.field b:I

.field c:I

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIILjcifs/smb/t;)V
    .registers 13

    const/16 v4, 0x10

    const/4 v3, 0x3

    const/4 v2, 0x2

    invoke-direct {p0, p7}, Ljcifs/smb/b;-><init>(Ljcifs/smb/t;)V

    iput-object p1, p0, Ljcifs/smb/ac;->A:Ljava/lang/String;

    const/16 v0, -0x5e

    iput-byte v0, p0, Ljcifs/smb/ac;->g:B

    iput p3, p0, Ljcifs/smb/ac;->c:I

    iget v0, p0, Ljcifs/smb/ac;->c:I

    or-int/lit16 v0, v0, 0x89

    iput v0, p0, Ljcifs/smb/ac;->c:I

    iput p5, p0, Ljcifs/smb/ac;->D:I

    iput p4, p0, Ljcifs/smb/ac;->E:I

    and-int/lit8 v0, p2, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_37

    and-int/lit8 v0, p2, 0x10

    if-ne v0, v4, :cond_33

    const/4 v0, 0x5

    iput v0, p0, Ljcifs/smb/ac;->F:I

    :goto_26
    and-int/lit8 v0, p6, 0x1

    if-nez v0, :cond_4b

    or-int/lit8 v0, p6, 0x40

    iput v0, p0, Ljcifs/smb/ac;->G:I

    :goto_2e
    iput v2, p0, Ljcifs/smb/ac;->H:I

    iput-byte v3, p0, Ljcifs/smb/ac;->J:B

    return-void

    :cond_33
    const/4 v0, 0x4

    iput v0, p0, Ljcifs/smb/ac;->F:I

    goto :goto_26

    :cond_37
    and-int/lit8 v0, p2, 0x10

    if-ne v0, v4, :cond_47

    and-int/lit8 v0, p2, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_44

    iput v2, p0, Ljcifs/smb/ac;->F:I

    goto :goto_26

    :cond_44
    iput v3, p0, Ljcifs/smb/ac;->F:I

    goto :goto_26

    :cond_47
    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/ac;->F:I

    goto :goto_26

    :cond_4b
    iput p6, p0, Ljcifs/smb/ac;->G:I

    goto :goto_2e
.end method


# virtual methods
.method n([BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, p2

    iput v0, p0, Ljcifs/smb/ac;->K:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/ac;->b:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ac;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/ac;->d:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ac;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/ac;->c:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ac;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-wide v1, p0, Ljcifs/smb/ac;->I:J

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ac;->c(J[BI)V

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Ljcifs/smb/ac;->D:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ac;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/ac;->E:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ac;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/ac;->F:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ac;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/ac;->G:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ac;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/ac;->H:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ac;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    iget-byte v2, p0, Ljcifs/smb/ac;->J:B

    aput-byte v2, p1, v0

    sub-int v0, v1, p2

    return v0
.end method

.method o([BI)I
    .registers 7

    iget-object v0, p0, Ljcifs/smb/ac;->A:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/ac;->a(Ljava/lang/String;[BI)I

    move-result v1

    iget-boolean v0, p0, Ljcifs/smb/ac;->t:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Ljcifs/smb/ac;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_12
    int-to-long v2, v0

    iget v0, p0, Ljcifs/smb/ac;->K:I

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ac;->a(J[BI)V

    return v1

    :cond_19
    move v0, v1

    goto :goto_12
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
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComNTCreateAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ac;->b:I

    invoke-static {v2, v5}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rootDirectoryFid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ac;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",desiredAccess=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ac;->c:I

    invoke-static {v2, v4}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allocationSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/ac;->I:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extFileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ac;->D:I

    invoke-static {v2, v4}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",shareAccess=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ac;->E:I

    invoke-static {v2, v4}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",createDisposition=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ac;->F:I

    invoke-static {v2, v4}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",createOptions=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ac;->G:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",impersonationLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ac;->H:I

    invoke-static {v2, v4}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",securityFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljcifs/smb/ac;->J:B

    invoke-static {v2, v5}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/ac;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

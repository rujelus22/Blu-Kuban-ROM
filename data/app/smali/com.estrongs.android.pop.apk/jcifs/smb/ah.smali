.class Ljcifs/smb/ah;
.super Ljcifs/smb/b;


# static fields
.field private static final H:I


# instance fields
.field D:I

.field E:I

.field F:I

.field G:I

.field b:I

.field c:I

.field d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "jcifs.smb.client.OpenAndX.ReadAndX"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/ah;->H:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILjcifs/smb/t;)V
    .registers 9

    const/4 v3, 0x2

    const/16 v2, 0x10

    invoke-direct {p0, p4}, Ljcifs/smb/b;-><init>(Ljcifs/smb/t;)V

    iput-object p1, p0, Ljcifs/smb/ah;->A:Ljava/lang/String;

    const/16 v0, 0x2d

    iput-byte v0, p0, Ljcifs/smb/ah;->g:B

    and-int/lit8 v0, p2, 0x3

    iput v0, p0, Ljcifs/smb/ah;->c:I

    iget v0, p0, Ljcifs/smb/ah;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    iput v3, p0, Ljcifs/smb/ah;->c:I

    :cond_17
    iget v0, p0, Ljcifs/smb/ah;->c:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Ljcifs/smb/ah;->c:I

    iget v0, p0, Ljcifs/smb/ah;->c:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Ljcifs/smb/ah;->c:I

    const/16 v0, 0x16

    iput v0, p0, Ljcifs/smb/ah;->d:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/ah;->D:I

    and-int/lit8 v0, p3, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_3c

    and-int/lit8 v0, p3, 0x10

    if-ne v0, v2, :cond_39

    const/16 v0, 0x12

    iput v0, p0, Ljcifs/smb/ah;->F:I

    :goto_38
    return-void

    :cond_39
    iput v3, p0, Ljcifs/smb/ah;->F:I

    goto :goto_38

    :cond_3c
    and-int/lit8 v0, p3, 0x10

    if-ne v0, v2, :cond_4e

    and-int/lit8 v0, p3, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_49

    iput v2, p0, Ljcifs/smb/ah;->F:I

    goto :goto_38

    :cond_49
    const/16 v0, 0x11

    iput v0, p0, Ljcifs/smb/ah;->F:I

    goto :goto_38

    :cond_4e
    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/ah;->F:I

    goto :goto_38
.end method


# virtual methods
.method a(B)I
    .registers 3

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_7

    sget v0, Ljcifs/smb/ah;->H:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method n([BI)I
    .registers 7

    const/4 v1, 0x0

    iget v0, p0, Ljcifs/smb/ah;->b:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, Ljcifs/smb/ah;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v2, p0, Ljcifs/smb/ah;->c:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ah;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/ah;->d:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ah;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/ah;->D:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ah;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iput v1, p0, Ljcifs/smb/ah;->E:I

    iget v2, p0, Ljcifs/smb/ah;->E:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ah;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, Ljcifs/smb/ah;->F:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ah;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/ah;->G:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ah;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    move v0, v1

    :goto_3d
    const/16 v3, 0x8

    if-ge v0, v3, :cond_49

    add-int/lit8 v3, v2, 0x1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_3d

    :cond_49
    sub-int v0, v2, p2

    return v0
.end method

.method o([BI)I
    .registers 5

    iget-boolean v0, p0, Ljcifs/smb/ah;->t:Z

    if-eqz v0, :cond_12

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, p2

    :goto_9
    iget-object v1, p0, Ljcifs/smb/ah;->A:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ah;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0

    :cond_12
    move v0, p2

    goto :goto_9
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

    const/4 v3, 0x4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComOpenAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ah;->b:I

    invoke-static {v2, v5}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",desiredAccess=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ah;->c:I

    invoke-static {v2, v3}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",searchAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ah;->d:I

    invoke-static {v2, v3}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ah;->D:I

    invoke-static {v2, v3}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",creationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget v3, p0, Ljcifs/smb/ah;->E:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",openFunction=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ah;->F:I

    invoke-static {v2, v5}, Ljcifs/util/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allocationSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ah;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/ah;->A:Ljava/lang/String;

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

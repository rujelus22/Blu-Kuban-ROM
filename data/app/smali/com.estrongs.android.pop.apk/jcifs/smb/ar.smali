.class abstract Ljcifs/smb/ar;
.super Ljcifs/smb/t;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field protected D:I

.field protected E:I

.field protected F:I

.field protected G:I

.field protected H:I

.field protected I:I

.field protected J:I

.field K:I

.field L:B

.field M:Z

.field N:Z

.field O:[B

.field P:I

.field Q:I

.field R:[Ljcifs/smb/h;

.field private S:I

.field private T:Z

.field private U:Z

.field private a:I

.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljcifs/smb/t;-><init>()V

    iput-boolean v0, p0, Ljcifs/smb/ar;->M:Z

    iput-boolean v0, p0, Ljcifs/smb/ar;->N:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/ar;->O:[B

    return-void
.end method


# virtual methods
.method abstract a([BII)I
.end method

.method abstract b([BII)I
.end method

.method e()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Ljcifs/smb/t;->e()V

    iput v1, p0, Ljcifs/smb/ar;->J:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/ar;->M:Z

    iput-boolean v0, p0, Ljcifs/smb/ar;->N:Z

    iput-boolean v1, p0, Ljcifs/smb/ar;->U:Z

    iput-boolean v1, p0, Ljcifs/smb/ar;->T:Z

    return-void
.end method

.method public hasMoreElements()Z
    .registers 2

    iget v0, p0, Ljcifs/smb/ar;->l:I

    if-nez v0, :cond_a

    iget-boolean v0, p0, Ljcifs/smb/ar;->M:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method n([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Ljcifs/smb/ar;->N:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/ar;->N:Z

    :cond_7
    return-object p0
.end method

.method o([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method p([BI)I
    .registers 7

    invoke-static {p1, p2}, Ljcifs/smb/ar;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ar;->b:I

    iget v0, p0, Ljcifs/smb/ar;->J:I

    if-nez v0, :cond_e

    iget v0, p0, Ljcifs/smb/ar;->b:I

    iput v0, p0, Ljcifs/smb/ar;->J:I

    :cond_e
    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ar;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ar;->c:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ar;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ar;->d:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ar;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ar;->D:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ar;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ar;->E:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ar;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ar;->K:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ar;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ar;->F:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ar;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ar;->G:I

    add-int/lit8 v0, v0, 0x2

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Ljcifs/smb/ar;->H:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/ar;->H:I

    if-eqz v1, :cond_75

    sget-object v1, Ljcifs/smb/ar;->e:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_75

    sget-object v1, Ljcifs/smb/ar;->e:Ljcifs/util/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupCount is not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/smb/ar;->H:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_75
    sub-int/2addr v0, p2

    return v0
.end method

.method q([BI)I
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v4, p0, Ljcifs/smb/ar;->S:I

    iput v4, p0, Ljcifs/smb/ar;->a:I

    iget v0, p0, Ljcifs/smb/ar;->d:I

    if-lez v0, :cond_24

    iget v0, p0, Ljcifs/smb/ar;->D:I

    iget v1, p0, Ljcifs/smb/ar;->i:I

    sub-int v1, p2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/ar;->a:I

    add-int/2addr v0, p2

    iget-object v1, p0, Ljcifs/smb/ar;->O:[B

    iget v2, p0, Ljcifs/smb/ar;->I:I

    iget v3, p0, Ljcifs/smb/ar;->E:I

    add-int/2addr v2, v3

    iget v3, p0, Ljcifs/smb/ar;->d:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljcifs/smb/ar;->d:I

    add-int p2, v0, v1

    :cond_24
    iget v0, p0, Ljcifs/smb/ar;->K:I

    if-lez v0, :cond_41

    iget v0, p0, Ljcifs/smb/ar;->F:I

    iget v1, p0, Ljcifs/smb/ar;->i:I

    sub-int v1, p2, v1

    sub-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/ar;->S:I

    add-int/2addr v0, p2

    iget-object v1, p0, Ljcifs/smb/ar;->O:[B

    iget v2, p0, Ljcifs/smb/ar;->J:I

    iget v3, p0, Ljcifs/smb/ar;->G:I

    add-int/2addr v2, v3

    iget v3, p0, Ljcifs/smb/ar;->K:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljcifs/smb/ar;->K:I

    add-int/2addr v0, v1

    :cond_41
    iget-boolean v0, p0, Ljcifs/smb/ar;->T:Z

    if-nez v0, :cond_50

    iget v0, p0, Ljcifs/smb/ar;->E:I

    iget v1, p0, Ljcifs/smb/ar;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/ar;->b:I

    if-ne v0, v1, :cond_50

    iput-boolean v5, p0, Ljcifs/smb/ar;->T:Z

    :cond_50
    iget-boolean v0, p0, Ljcifs/smb/ar;->U:Z

    if-nez v0, :cond_5f

    iget v0, p0, Ljcifs/smb/ar;->G:I

    iget v1, p0, Ljcifs/smb/ar;->K:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/ar;->c:I

    if-ne v0, v1, :cond_5f

    iput-boolean v5, p0, Ljcifs/smb/ar;->U:Z

    :cond_5f
    iget-boolean v0, p0, Ljcifs/smb/ar;->T:Z

    if-eqz v0, :cond_7b

    iget-boolean v0, p0, Ljcifs/smb/ar;->U:Z

    if-eqz v0, :cond_7b

    iput-boolean v4, p0, Ljcifs/smb/ar;->M:Z

    iget-object v0, p0, Ljcifs/smb/ar;->O:[B

    iget v1, p0, Ljcifs/smb/ar;->I:I

    iget v2, p0, Ljcifs/smb/ar;->b:I

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/ar;->a([BII)I

    iget-object v0, p0, Ljcifs/smb/ar;->O:[B

    iget v1, p0, Ljcifs/smb/ar;->J:I

    iget v2, p0, Ljcifs/smb/ar;->c:I

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/ar;->b([BII)I

    :cond_7b
    iget v0, p0, Ljcifs/smb/ar;->a:I

    iget v1, p0, Ljcifs/smb/ar;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/ar;->S:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/ar;->K:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljcifs/smb/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ar;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",totalDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ar;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ar;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ar;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",parameterDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ar;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ar;->K:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ar;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ar;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",setupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ar;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ar;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pad1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/ar;->S:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.class Ljcifs/smb/ap;
.super Ljcifs/smb/b;


# instance fields
.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field b:Z

.field c:[B

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljcifs/smb/t;)V
    .registers 3

    invoke-direct {p0, p1}, Ljcifs/smb/b;-><init>(Ljcifs/smb/t;)V

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/ap;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/ap;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/ap;->E:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/ap;->c:[B

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
    .registers 5

    const/4 v0, 0x1

    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_1b

    :goto_7
    iput-boolean v0, p0, Ljcifs/smb/ap;->b:Z

    add-int/lit8 v0, p2, 0x2

    iget-boolean v1, p0, Ljcifs/smb/ap;->v:Z

    if-eqz v1, :cond_19

    invoke-static {p1, v0}, Ljcifs/smb/ap;->f([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Ljcifs/smb/ap;->c:[B

    :cond_19
    sub-int/2addr v0, p2

    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method q([BI)I
    .registers 9

    const/16 v4, 0xff

    iget-boolean v0, p0, Ljcifs/smb/ap;->v:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Ljcifs/smb/ap;->c:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljcifs/smb/ap;->c:[B

    array-length v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljcifs/smb/ap;->c:[B

    array-length v0, v0

    add-int/2addr v0, p2

    :goto_13
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ap;->k([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/ap;->d:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/ap;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ap;->a(Ljava/lang/String;I)I

    move-result v1

    add-int v2, v0, v1

    iget v0, p0, Ljcifs/smb/ap;->s:I

    add-int v3, p2, v0

    iget-boolean v5, p0, Ljcifs/smb/ap;->t:Z

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/ap;->a([BIIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ap;->D:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/ap;->D:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/ap;->a(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Ljcifs/smb/ap;->v:Z

    if-nez v0, :cond_4f

    iget v0, p0, Ljcifs/smb/ap;->s:I

    add-int v3, p2, v0

    iget-boolean v5, p0, Ljcifs/smb/ap;->t:Z

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/ap;->a([BIIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/ap;->E:Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/ap;->E:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/ap;->a(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4f
    sub-int v0, v2, p2

    return v0

    :cond_52
    move v0, p2

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComSessionSetupAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isLoggedInAsGuest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/ap;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nativeOs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/ap;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nativeLanMan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/ap;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",primaryDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/ap;->E:Ljava/lang/String;

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

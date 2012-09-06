.class Ljcifs/smb/at;
.super Ljcifs/smb/b;


# instance fields
.field D:Ljava/lang/String;

.field b:Z

.field c:Z

.field d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljcifs/smb/t;)V
    .registers 3

    invoke-direct {p0, p1}, Ljcifs/smb/b;-><init>(Ljcifs/smb/t;)V

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/at;->D:Ljava/lang/String;

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
    .registers 7

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Ljcifs/smb/at;->b:Z

    aget-byte v0, p1, p2

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_17

    :goto_12
    iput-boolean v1, p0, Ljcifs/smb/at;->c:Z

    return v3

    :cond_15
    move v0, v2

    goto :goto_a

    :cond_17
    move v1, v2

    goto :goto_12
.end method

.method q([BI)I
    .registers 6

    const/16 v0, 0x20

    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/at;->c([BII)I

    move-result v0

    :try_start_6
    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, p1, p2, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Ljcifs/smb/at;->d:Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_f} :catch_14

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p2

    sub-int/2addr v0, p2

    :goto_13
    return v0

    :catch_14
    move-exception v0

    const/4 v0, 0x0

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComTreeConnectAndXResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",supportSearchBits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/at;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",shareIsInDfs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/smb/at;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/at;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",nativeFileSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/at;->D:Ljava/lang/String;

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

.class Ljcifs/smb/bu;
.super Ljcifs/smb/ar;


# instance fields
.field private S:I

.field a:Ljcifs/smb/a;


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljcifs/smb/ar;-><init>()V

    iput p1, p0, Ljcifs/smb/bu;->S:I

    const/16 v0, 0x32

    iput-byte v0, p0, Ljcifs/smb/bu;->g:B

    const/4 v0, 0x3

    iput-byte v0, p0, Ljcifs/smb/bu;->L:B

    return-void
.end method


# virtual methods
.method a([BII)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method b([BII)I
    .registers 5

    iget v0, p0, Ljcifs/smb/bu;->S:I

    sparse-switch v0, :sswitch_data_16

    const/4 v0, 0x0

    :goto_6
    return v0

    :sswitch_7
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/bu;->c([BI)I

    move-result v0

    goto :goto_6

    :sswitch_c
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/bu;->d([BI)I

    move-result v0

    goto :goto_6

    :sswitch_11
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/bu;->e([BI)I

    move-result v0

    goto :goto_6

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_7
        0x103 -> :sswitch_c
        0x3ef -> :sswitch_11
    .end sparse-switch
.end method

.method c([BI)I
    .registers 7

    new-instance v0, Ljcifs/smb/bv;

    invoke-direct {v0, p0}, Ljcifs/smb/bv;-><init>(Ljcifs/smb/bu;)V

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/bu;->g([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/bv;->c:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/bu;->g([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Ljcifs/smb/bv;->a:J

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/bu;->g([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Ljcifs/smb/bv;->b:J

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/bu;->f([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/bv;->d:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, Ljcifs/smb/bu;->a:Ljcifs/smb/a;

    sub-int v0, v1, p2

    return v0
.end method

.method d([BI)I
    .registers 7

    new-instance v0, Ljcifs/smb/bv;

    invoke-direct {v0, p0}, Ljcifs/smb/bv;-><init>(Ljcifs/smb/bu;)V

    invoke-static {p1, p2}, Ljcifs/smb/bu;->h([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/bv;->a:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/bu;->h([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/bv;->b:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/bu;->g([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/bv;->c:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/bu;->g([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/bv;->d:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, Ljcifs/smb/bu;->a:Ljcifs/smb/a;

    sub-int v0, v1, p2

    return v0
.end method

.method e([BI)I
    .registers 7

    new-instance v0, Ljcifs/smb/bv;

    invoke-direct {v0, p0}, Ljcifs/smb/bv;-><init>(Ljcifs/smb/bu;)V

    invoke-static {p1, p2}, Ljcifs/smb/bu;->h([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/bv;->a:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/bu;->h([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/bv;->b:J

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/bu;->g([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/bv;->c:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/bu;->g([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/bv;->d:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, Ljcifs/smb/bu;->a:Ljcifs/smb/a;

    sub-int v0, v1, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2QueryFSInformationResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/ar;->toString()Ljava/lang/String;

    move-result-object v2

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

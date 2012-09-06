.class Ljcifs/smb/bx;
.super Ljcifs/smb/ar;


# instance fields
.field private S:I

.field a:Ljcifs/smb/j;


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljcifs/smb/ar;-><init>()V

    iput p1, p0, Ljcifs/smb/bx;->S:I

    const/4 v0, 0x5

    iput-byte v0, p0, Ljcifs/smb/bx;->L:B

    return-void
.end method


# virtual methods
.method a([BII)I
    .registers 5

    const/4 v0, 0x2

    return v0
.end method

.method b([BII)I
    .registers 5

    iget v0, p0, Ljcifs/smb/bx;->S:I

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x0

    :goto_6
    return v0

    :pswitch_7
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/bx;->d([BI)I

    move-result v0

    goto :goto_6

    :pswitch_c
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/bx;->c([BI)I

    move-result v0

    goto :goto_6

    nop

    :pswitch_data_12
    .packed-switch 0x101
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method c([BI)I
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljcifs/smb/bz;

    invoke-direct {v3, p0}, Ljcifs/smb/bz;-><init>(Ljcifs/smb/bx;)V

    invoke-static {p1, p2}, Ljcifs/smb/bx;->h([BI)J

    move-result-wide v4

    iput-wide v4, v3, Ljcifs/smb/bz;->a:J

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/bx;->h([BI)J

    move-result-wide v4

    iput-wide v4, v3, Ljcifs/smb/bz;->b:J

    add-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/bx;->g([BI)I

    move-result v4

    iput v4, v3, Ljcifs/smb/bz;->c:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_38

    move v0, v1

    :goto_28
    iput-boolean v0, v3, Ljcifs/smb/bz;->d:Z

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    if-lez v4, :cond_3a

    :goto_32
    iput-boolean v1, v3, Ljcifs/smb/bz;->e:Z

    iput-object v3, p0, Ljcifs/smb/bx;->a:Ljcifs/smb/j;

    sub-int/2addr v0, p2

    return v0

    :cond_38
    move v0, v2

    goto :goto_28

    :cond_3a
    move v1, v2

    goto :goto_32
.end method

.method d([BI)I
    .registers 7

    new-instance v0, Ljcifs/smb/by;

    invoke-direct {v0, p0}, Ljcifs/smb/by;-><init>(Ljcifs/smb/bx;)V

    invoke-static {p1, p2}, Ljcifs/smb/bx;->i([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/by;->a:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/bx;->i([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/by;->b:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/bx;->i([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/by;->c:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/bx;->i([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/by;->d:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/bx;->f([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/by;->e:I

    add-int/lit8 v1, v1, 0x2

    iput-object v0, p0, Ljcifs/smb/bx;->a:Ljcifs/smb/j;

    sub-int v0, v1, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trans2QueryPathInformationResponse["

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

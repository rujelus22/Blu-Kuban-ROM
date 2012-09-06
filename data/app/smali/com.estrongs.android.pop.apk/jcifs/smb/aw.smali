.class Ljcifs/smb/aw;
.super Ljcifs/smb/b;


# static fields
.field private static final c:I

.field private static final d:I


# instance fields
.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:[B

.field private J:J

.field private K:I

.field b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    const-string v0, "jcifs.smb.client.WriteAndX.ReadAndX"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/aw;->c:I

    const-string v0, "jcifs.smb.client.WriteAndX.Close"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/aw;->d:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljcifs/smb/b;-><init>(Ljcifs/smb/t;)V

    const/16 v0, 0x2f

    iput-byte v0, p0, Ljcifs/smb/aw;->g:B

    return-void
.end method

.method constructor <init>(IJI[BIILjcifs/smb/t;)V
    .registers 10

    invoke-direct {p0, p8}, Ljcifs/smb/b;-><init>(Ljcifs/smb/t;)V

    iput p1, p0, Ljcifs/smb/aw;->D:I

    iput-wide p2, p0, Ljcifs/smb/aw;->J:J

    iput p4, p0, Ljcifs/smb/aw;->E:I

    iput-object p5, p0, Ljcifs/smb/aw;->I:[B

    iput p6, p0, Ljcifs/smb/aw;->H:I

    iput p7, p0, Ljcifs/smb/aw;->F:I

    const/16 v0, 0x2f

    iput-byte v0, p0, Ljcifs/smb/aw;->g:B

    return-void
.end method


# virtual methods
.method a(B)I
    .registers 3

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_7

    sget v0, Ljcifs/smb/aw;->c:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    sget v0, Ljcifs/smb/aw;->d:I

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method a(IJI[BII)V
    .registers 9

    iput p1, p0, Ljcifs/smb/aw;->D:I

    iput-wide p2, p0, Ljcifs/smb/aw;->J:J

    iput p4, p0, Ljcifs/smb/aw;->E:I

    iput-object p5, p0, Ljcifs/smb/aw;->I:[B

    iput p6, p0, Ljcifs/smb/aw;->H:I

    iput p7, p0, Ljcifs/smb/aw;->F:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/aw;->B:Ljcifs/smb/u;

    return-void
.end method

.method n([BI)I
    .registers 8

    const/4 v1, 0x0

    iget v0, p0, Ljcifs/smb/aw;->i:I

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x1a

    iput v0, p0, Ljcifs/smb/aw;->G:I

    iget v0, p0, Ljcifs/smb/aw;->G:I

    iget v2, p0, Ljcifs/smb/aw;->i:I

    sub-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljcifs/smb/aw;->K:I

    iget v0, p0, Ljcifs/smb/aw;->K:I

    if-nez v0, :cond_3d

    move v0, v1

    :goto_17
    iput v0, p0, Ljcifs/smb/aw;->K:I

    iget v0, p0, Ljcifs/smb/aw;->G:I

    iget v2, p0, Ljcifs/smb/aw;->K:I

    add-int/2addr v0, v2

    iput v0, p0, Ljcifs/smb/aw;->G:I

    iget v0, p0, Ljcifs/smb/aw;->D:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, Ljcifs/smb/aw;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-wide v2, p0, Ljcifs/smb/aw;->J:J

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/aw;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    move v0, v1

    :goto_31
    const/4 v3, 0x4

    if-ge v0, v3, :cond_42

    add-int/lit8 v3, v2, 0x1

    const/4 v4, -0x1

    aput-byte v4, p1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_31

    :cond_3d
    iget v0, p0, Ljcifs/smb/aw;->K:I

    rsub-int/lit8 v0, v0, 0x4

    goto :goto_17

    :cond_42
    iget v0, p0, Ljcifs/smb/aw;->b:I

    int-to-long v3, v0

    invoke-static {v3, v4, p1, v2}, Ljcifs/smb/aw;->a(J[BI)V

    add-int/lit8 v0, v2, 0x2

    iget v2, p0, Ljcifs/smb/aw;->E:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/aw;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    iget v1, p0, Ljcifs/smb/aw;->F:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/aw;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/aw;->G:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/aw;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-wide v1, p0, Ljcifs/smb/aw;->J:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/aw;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method o([BI)I
    .registers 7

    move v0, p2

    :goto_1
    iget v1, p0, Ljcifs/smb/aw;->K:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljcifs/smb/aw;->K:I

    if-lez v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    const/16 v2, -0x12

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_1

    :cond_11
    iget-object v1, p0, Ljcifs/smb/aw;->I:[B

    iget v2, p0, Ljcifs/smb/aw;->H:I

    iget v3, p0, Ljcifs/smb/aw;->F:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljcifs/smb/aw;->F:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

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

    const-string v2, "SmbComWriteAndX["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aw;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ljcifs/smb/aw;->J:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",writeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aw;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aw;->E:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aw;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/aw;->G:I

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

.class Ljcifs/smb/ce;
.super Ljcifs/smb/aq;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljcifs/smb/aq;-><init>()V

    iput-object p1, p0, Ljcifs/smb/ce;->T:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/ce;->a:I

    const/16 v0, 0x25

    iput-byte v0, p0, Ljcifs/smb/ce;->g:B

    const/16 v0, 0x23

    iput-byte v0, p0, Ljcifs/smb/ce;->S:B

    const/4 v0, -0x1

    iput v0, p0, Ljcifs/smb/ce;->Q:I

    const/4 v0, 0x6

    iput v0, p0, Ljcifs/smb/ce;->N:I

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/ce;->O:I

    const/4 v0, 0x0

    iput-byte v0, p0, Ljcifs/smb/ce;->P:B

    const/4 v0, 0x2

    iput v0, p0, Ljcifs/smb/ce;->R:I

    return-void
.end method


# virtual methods
.method c([BI)I
    .registers 7

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/ce;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput-byte v2, p1, v0

    iget v0, p0, Ljcifs/smb/ce;->a:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/ce;->a(J[BI)V

    const/4 v0, 0x4

    return v0
.end method

.method d([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method e([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransPeekNamedPipe["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pipeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/ce;->T:Ljava/lang/String;

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

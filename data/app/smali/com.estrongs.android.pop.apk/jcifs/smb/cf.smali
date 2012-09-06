.class Ljcifs/smb/cf;
.super Ljcifs/smb/ar;


# instance fields
.field S:I

.field private T:Ljcifs/smb/bf;

.field private U:I

.field a:I


# direct methods
.method constructor <init>(Ljcifs/smb/bf;)V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/ar;-><init>()V

    iput-object p1, p0, Ljcifs/smb/cf;->T:Ljcifs/smb/bf;

    return-void
.end method


# virtual methods
.method a([BII)I
    .registers 6

    invoke-static {p1, p2}, Ljcifs/smb/cf;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/cf;->S:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/cf;->f([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/cf;->U:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/cf;->f([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/cf;->a:I

    const/4 v0, 0x6

    return v0
.end method

.method b([BII)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransPeekNamedPipeResponse["

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

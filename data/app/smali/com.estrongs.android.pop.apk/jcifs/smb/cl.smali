.class Ljcifs/smb/cl;
.super Ljcifs/smb/bd;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljcifs/smb/bf;

.field private c:[B

.field private d:Z


# direct methods
.method constructor <init>(Ljcifs/smb/bf;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Ljcifs/smb/bf;->r:I

    const v3, -0xff01

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x20

    invoke-direct {p0, p1, v1, v2}, Ljcifs/smb/bd;-><init>(Ljcifs/smb/ba;ZI)V

    new-array v2, v0, [B

    iput-object v2, p0, Ljcifs/smb/cl;->c:[B

    iput-object p1, p0, Ljcifs/smb/cl;->b:Ljcifs/smb/bf;

    iget v2, p1, Ljcifs/smb/bf;->r:I

    and-int/lit16 v2, v2, 0x600

    const/16 v3, 0x600

    if-ne v2, v3, :cond_22

    :goto_1b
    iput-boolean v0, p0, Ljcifs/smb/cl;->d:Z

    iget-object v0, p1, Ljcifs/smb/bf;->i:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/cl;->a:Ljava/lang/String;

    return-void

    :cond_22
    move v0, v1

    goto :goto_1b
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Ljcifs/smb/cl;->b:Ljcifs/smb/bf;

    invoke-virtual {v0}, Ljcifs/smb/bf;->i()V

    return-void
.end method

.method public write(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Ljcifs/smb/cl;->c:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljcifs/smb/cl;->c:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/cl;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/cl;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 8

    if-gez p3, :cond_3

    const/4 p3, 0x0

    :cond_3
    iget-object v0, p0, Ljcifs/smb/cl;->b:Ljcifs/smb/bf;

    iget v0, v0, Ljcifs/smb/bf;->r:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Ljcifs/smb/cl;->b:Ljcifs/smb/bf;

    new-instance v1, Ljcifs/smb/ci;

    iget-object v2, p0, Ljcifs/smb/cl;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljcifs/smb/ci;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljcifs/smb/cj;

    invoke-direct {v2}, Ljcifs/smb/cj;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/bf;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    iget-object v0, p0, Ljcifs/smb/cl;->b:Ljcifs/smb/bf;

    new-instance v1, Ljcifs/smb/cc;

    iget-object v2, p0, Ljcifs/smb/cl;->a:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p2, p3}, Ljcifs/smb/cc;-><init>(Ljava/lang/String;[BII)V

    new-instance v2, Ljcifs/smb/cd;

    iget-object v3, p0, Ljcifs/smb/cl;->b:Ljcifs/smb/bf;

    invoke-direct {v2, v3}, Ljcifs/smb/cd;-><init>(Ljcifs/smb/bf;)V

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/bf;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    iget-object v0, p0, Ljcifs/smb/cl;->b:Ljcifs/smb/bf;

    iget v0, v0, Ljcifs/smb/bf;->r:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_31

    invoke-virtual {p0}, Ljcifs/smb/cl;->b()V

    new-instance v0, Ljcifs/smb/cg;

    iget-object v1, p0, Ljcifs/smb/cl;->b:Ljcifs/smb/bf;

    iget v1, v1, Ljcifs/smb/bf;->j:I

    invoke-direct {v0, v1, p1, p2, p3}, Ljcifs/smb/cg;-><init>(I[BII)V

    iget-boolean v1, p0, Ljcifs/smb/cl;->d:Z

    if-eqz v1, :cond_50

    const/16 v1, 0x400

    iput v1, v0, Ljcifs/smb/cg;->O:I

    :cond_50
    iget-object v1, p0, Ljcifs/smb/cl;->b:Ljcifs/smb/bf;

    new-instance v2, Ljcifs/smb/ch;

    iget-object v3, p0, Ljcifs/smb/cl;->b:Ljcifs/smb/bf;

    invoke-direct {v2, v3}, Ljcifs/smb/ch;-><init>(Ljcifs/smb/bf;)V

    invoke-virtual {v1, v0, v2}, Ljcifs/smb/bf;->a(Ljcifs/smb/t;Ljcifs/smb/t;)V

    goto :goto_31
.end method

.class public Ljcifs/smb/bf;
.super Ljcifs/smb/ba;


# instance fields
.field p:Ljava/io/InputStream;

.field q:Ljava/io/OutputStream;

.field r:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 5

    invoke-direct {p0, p1, p3}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    iput p2, p0, Ljcifs/smb/bf;->r:I

    const/16 v0, 0x10

    iput v0, p0, Ljcifs/smb/bf;->k:I

    return-void
.end method


# virtual methods
.method public L()Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Ljcifs/smb/bf;->p:Ljava/io/InputStream;

    if-nez v0, :cond_1b

    iget v0, p0, Ljcifs/smb/bf;->r:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_14

    iget v0, p0, Ljcifs/smb/bf;->r:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1e

    :cond_14
    new-instance v0, Ljcifs/smb/ck;

    invoke-direct {v0, p0}, Ljcifs/smb/ck;-><init>(Ljcifs/smb/bf;)V

    iput-object v0, p0, Ljcifs/smb/bf;->p:Ljava/io/InputStream;

    :cond_1b
    :goto_1b
    iget-object v0, p0, Ljcifs/smb/bf;->p:Ljava/io/InputStream;

    return-object v0

    :cond_1e
    new-instance v0, Ljcifs/smb/bc;

    iget v1, p0, Ljcifs/smb/bf;->r:I

    const v2, -0xff01

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    invoke-direct {v0, p0, v1}, Ljcifs/smb/bc;-><init>(Ljcifs/smb/ba;I)V

    iput-object v0, p0, Ljcifs/smb/bf;->p:Ljava/io/InputStream;

    goto :goto_1b
.end method

.method public M()Ljava/io/OutputStream;
    .registers 5

    iget-object v0, p0, Ljcifs/smb/bf;->q:Ljava/io/OutputStream;

    if-nez v0, :cond_1b

    iget v0, p0, Ljcifs/smb/bf;->r:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_14

    iget v0, p0, Ljcifs/smb/bf;->r:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1e

    :cond_14
    new-instance v0, Ljcifs/smb/cl;

    invoke-direct {v0, p0}, Ljcifs/smb/cl;-><init>(Ljcifs/smb/bf;)V

    iput-object v0, p0, Ljcifs/smb/bf;->q:Ljava/io/OutputStream;

    :cond_1b
    :goto_1b
    iget-object v0, p0, Ljcifs/smb/bf;->q:Ljava/io/OutputStream;

    return-object v0

    :cond_1e
    new-instance v0, Ljcifs/smb/bd;

    const/4 v1, 0x0

    iget v2, p0, Ljcifs/smb/bf;->r:I

    const v3, -0xff01

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x20

    invoke-direct {v0, p0, v1, v2}, Ljcifs/smb/bd;-><init>(Ljcifs/smb/ba;ZI)V

    iput-object v0, p0, Ljcifs/smb/bf;->q:Ljava/io/OutputStream;

    goto :goto_1b
.end method

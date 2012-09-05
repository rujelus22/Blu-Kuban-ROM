.class public Lt/c;
.super Lt/b;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lt/b;-><init>(I)V

    return-void
.end method

.method public static b(Ljava/io/DataInput;I)Lt/c;
    .registers 4

    new-instance v0, Lt/c;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-direct {v0, v1}, Lt/c;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public d()I
    .registers 2

    iget v0, p0, Lt/c;->a:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

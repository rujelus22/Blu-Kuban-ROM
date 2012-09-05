.class public Lbw/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/DataInputStream;

.field private b:Lbv/e;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognised protocol version"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lbw/l;->b:Lbv/e;

    if-eqz v0, :cond_7

    iput-object v1, p0, Lbw/l;->b:Lbv/e;

    :cond_7
    iget-object v0, p0, Lbw/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iput-object v1, p0, Lbw/l;->a:Ljava/io/DataInputStream;

    return-void
.end method

.method public b()Lbw/o;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lbw/l;->b:Lbv/e;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lbw/l;->b:Lbv/e;

    invoke-virtual {v1}, Lbv/e;->a()V

    iput-object v0, p0, Lbw/l;->b:Lbv/e;

    :cond_c
    iget-object v1, p0, Lbw/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iget-object v2, p0, Lbw/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    const v3, 0x8100

    if-ne v2, v3, :cond_2e

    new-instance v0, Lbv/e;

    iget-object v2, p0, Lbw/l;->a:Ljava/io/DataInputStream;

    invoke-direct {v0, v2, v1}, Lbv/e;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lbw/l;->b:Lbv/e;

    new-instance v0, Lbw/k;

    iget-object v1, p0, Lbw/l;->b:Lbv/e;

    invoke-direct {v0, v1}, Lbw/k;-><init>(Lbv/e;)V

    :goto_2d
    return-object v0

    :cond_2e
    const v3, 0x8101

    if-ne v2, v3, :cond_44

    new-instance v0, Lbv/e;

    iget-object v2, p0, Lbw/l;->a:Ljava/io/DataInputStream;

    invoke-direct {v0, v2, v1}, Lbv/e;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lbw/l;->b:Lbv/e;

    new-instance v0, Lbw/h;

    iget-object v1, p0, Lbw/l;->b:Lbv/e;

    invoke-direct {v0, v1}, Lbw/h;-><init>(Lbv/e;)V

    goto :goto_2d

    :cond_44
    iget-object v2, p0, Lbw/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_2d
.end method

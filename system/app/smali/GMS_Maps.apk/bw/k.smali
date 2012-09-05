.class public Lbw/k;
.super Lbw/o;


# instance fields
.field private b:Lbw/c;


# direct methods
.method public constructor <init>(Lbv/e;)V
    .registers 5

    invoke-direct {p0, p1}, Lbw/o;-><init>(Lbv/e;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v2, Lbw/c;

    invoke-direct {v2, v1, v0, p1}, Lbw/c;-><init>(Ljava/lang/String;ILbv/e;)V

    iput-object v2, p0, Lbw/k;->b:Lbw/c;

    return-void
.end method


# virtual methods
.method public a_()I
    .registers 2

    iget-object v0, p0, Lbw/k;->b:Lbw/c;

    invoke-virtual {v0}, Lbw/c;->a_()I

    move-result v0

    return v0
.end method

.method public b_()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lbw/k;->b:Lbw/c;

    invoke-virtual {v0}, Lbw/c;->b_()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

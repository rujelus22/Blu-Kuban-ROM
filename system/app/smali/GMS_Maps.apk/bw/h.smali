.class public Lbw/h;
.super Lbw/o;


# instance fields
.field private final b:Lbw/b;

.field private final c:[Lbw/b;

.field private final d:I


# direct methods
.method public constructor <init>(IILbw/b;[Lbw/b;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lbw/o;-><init>(II)V

    iput-object p3, p0, Lbw/h;->b:Lbw/b;

    iput-object p4, p0, Lbw/h;->c:[Lbw/b;

    array-length v0, p4

    iput v0, p0, Lbw/h;->d:I

    return-void
.end method

.method public constructor <init>(Lbv/e;)V
    .registers 6

    invoke-direct {p0, p1}, Lbw/o;-><init>(Lbv/e;)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_8
    invoke-static {v1}, Lbw/b;->a(Ljava/io/InputStream;)Lbw/b;

    move-result-object v0

    iput-object v0, p0, Lbw/h;->b:Lbw/b;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lbw/h;->d:I

    iget v0, p0, Lbw/h;->d:I

    new-array v0, v0, [Lbw/b;

    iput-object v0, p0, Lbw/h;->c:[Lbw/b;

    const/4 v0, 0x0

    :goto_1b
    iget v2, p0, Lbw/h;->d:I

    if-ge v0, v2, :cond_2c

    iget-object v2, p0, Lbw/h;->c:[Lbw/b;

    invoke-static {v1}, Lbw/b;->a(Ljava/io/InputStream;)Lbw/b;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_2a

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :catch_2a
    move-exception v0

    throw v0

    :cond_2c
    return-void
.end method


# virtual methods
.method public a_()I
    .registers 2

    iget-object v0, p0, Lbw/h;->b:Lbw/b;

    invoke-virtual {v0}, Lbw/b;->f()Lbv/f;

    move-result-object v0

    invoke-interface {v0}, Lbv/f;->a_()I

    move-result v0

    return v0
.end method

.method public b_()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lbw/h;->b:Lbw/b;

    invoke-virtual {v0}, Lbw/b;->f()Lbv/f;

    move-result-object v0

    invoke-interface {v0}, Lbv/f;->b_()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public e()Lbw/b;
    .registers 2

    iget-object v0, p0, Lbw/h;->b:Lbw/b;

    return-object v0
.end method

.method public f()[Lbw/b;
    .registers 2

    iget-object v0, p0, Lbw/h;->c:[Lbw/b;

    return-object v0
.end method

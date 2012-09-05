.class public Lby/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Exception;

.field private b:Lbw/o;

.field private c:Ljava/io/DataInputStream;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[I

.field private h:[I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Lbw/o;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby/g;->b:Lbw/o;

    invoke-virtual {p1}, Lbw/o;->g()I

    move-result v0

    iput v0, p0, Lby/g;->k:I

    iget v0, p0, Lby/g;->k:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_a0

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Lbw/o;->b_()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lby/g;->c:Ljava/io/DataInputStream;

    iget-object v0, p0, Lby/g;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lby/g;->d:Ljava/lang/String;

    iget-object v0, p0, Lby/g;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lby/g;->k:I

    iget-object v0, p0, Lby/g;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lby/g;->i:I

    iget v0, p0, Lby/g;->i:I

    if-lez v0, :cond_61

    iget v0, p0, Lby/g;->i:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lby/g;->e:[Ljava/lang/String;

    iget v0, p0, Lby/g;->i:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lby/g;->f:[Ljava/lang/String;

    move v0, v1

    :goto_46
    iget v2, p0, Lby/g;->i:I

    if-ge v0, v2, :cond_61

    iget-object v2, p0, Lby/g;->e:[Ljava/lang/String;

    iget-object v3, p0, Lby/g;->c:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lby/g;->f:[Ljava/lang/String;

    iget-object v3, p0, Lby/g;->c:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_61
    iget-object v0, p0, Lby/g;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lby/g;->j:I

    iget v0, p0, Lby/g;->j:I

    if-lez v0, :cond_98

    iget v0, p0, Lby/g;->j:I

    new-array v0, v0, [I

    iput-object v0, p0, Lby/g;->g:[I

    iget v0, p0, Lby/g;->j:I

    new-array v0, v0, [I

    iput-object v0, p0, Lby/g;->h:[I

    :goto_79
    iget v0, p0, Lby/g;->j:I

    if-ge v1, v0, :cond_98

    iget-object v0, p0, Lby/g;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iget-object v2, p0, Lby/g;->c:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iget-object v3, p0, Lby/g;->g:[I

    aput v0, v3, v1

    iget-object v3, p0, Lby/g;->h:[I

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_98
    iget-object v0, p0, Lby/g;->c:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lby/g;->l:I

    :cond_a0
    invoke-virtual {p1}, Lbw/o;->a()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby/g;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lby/g;->b:Lbw/o;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lby/g;->b:Lbw/o;

    invoke-virtual {v0}, Lbw/o;->a()V

    :cond_9
    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lby/g;->a:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lby/g;->a:Ljava/lang/Exception;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lby/g;->k:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lby/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lby/g;->j:I

    return v0
.end method

.method public g()[I
    .registers 2

    iget-object v0, p0, Lby/g;->g:[I

    return-object v0
.end method

.method public h()[I
    .registers 2

    iget-object v0, p0, Lby/g;->h:[I

    return-object v0
.end method

.method public i()Ljava/io/DataInputStream;
    .registers 2

    iget-object v0, p0, Lby/g;->c:Ljava/io/DataInputStream;

    return-object v0
.end method

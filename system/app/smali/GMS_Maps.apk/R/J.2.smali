.class Lr/J;
.super Lr/d;
.source "SourceFile"


# instance fields
.field final synthetic d:Lr/I;


# direct methods
.method constructor <init>(Lr/I;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lr/J;->d:Lr/I;

    invoke-direct {p0, p1}, Lr/d;-><init>(Lr/c;)V

    return-void
.end method


# virtual methods
.method protected b(I)Ln/al;
    .registers 9
    .parameter

    .prologue
    const/16 v3, 0x100

    .line 62
    iget-object v0, p0, Lr/J;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_a

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ln/v;

    invoke-virtual {p0, p1}, Lr/J;->a(I)Lr/m;

    move-result-object v1

    invoke-virtual {v1}, Lr/m;->c()Ln/am;

    move-result-object v1

    invoke-virtual {p0}, Lr/J;->b()I

    move-result v2

    iget-object v4, p0, Lr/J;->b:[[B

    aget-object v5, v4, p1

    iget-object v4, p0, Lr/J;->d:Lr/I;

    iget-object v6, v4, Lr/I;->a:Lcom/google/android/maps/driveabout/vector/dg;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Ln/v;-><init>(Ln/am;III[BLcom/google/android/maps/driveabout/vector/dg;)V

    goto :goto_9
.end method

.method protected c(I)[B
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 77
    iget-object v0, p0, Lr/J;->b:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_9

    move-object v0, v6

    .line 89
    :goto_8
    return-object v0

    .line 80
    :cond_9
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lr/J;->b:[[B

    aget-object v0, v0, p1

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v7, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 83
    :try_start_15
    invoke-virtual {p0, p1}, Lr/J;->a(I)Lr/m;

    move-result-object v0

    invoke-virtual {v0}, Lr/m;->c()Ln/am;

    move-result-object v0

    invoke-virtual {p0}, Lr/J;->b()I

    move-result v1

    const/16 v2, 0x100

    const/16 v3, 0x100

    iget-object v4, p0, Lr/J;->b:[[B

    aget-object v4, v4, p1

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static/range {v0 .. v5}, Ln/v;->a(Ln/am;III[BLjava/io/DataOutput;)V

    .line 86
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_34} :catch_36

    move-result-object v0

    goto :goto_8

    .line 87
    :catch_36
    move-exception v0

    move-object v0, v6

    .line 89
    goto :goto_8
.end method
